#!/usr/bin/env bash
# Idempotent setup for the profile README preview environment.
# Installs `grip`, a GitHub-style Markdown renderer, so the README can be
# previewed locally exactly as GitHub renders it.
set -euo pipefail

# The default image ships Python 3.12 without python3-venv, so install into the
# user site with --break-system-packages (PEP 668). This is idempotent: rerunning
# just upgrades/keeps the existing packages.
python3 -m pip install --user --break-system-packages --upgrade grip

echo "grip installed: $("${HOME}/.local/bin/grip" --version)"
