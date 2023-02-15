#!/usr/bin/env bash

set -e
set -x

poetry run ruff src tests
poetry run black src tests --check
poetry run isort src tests --check-only
