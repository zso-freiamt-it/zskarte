#!/bin/sh
g() {
  head -c16 /dev/urandom | base64
}
cat <<EOF
HOST=0.0.0.0
PORT=1337
APP_KEYS=$(g),$(g),$(g),$(g)
API_TOKEN_SALT=$(g)
TRANSFER_TOKEN_SALT=$(g)
ADMIN_JWT_SECRET=$(g)
JWT_SECRET=$(g)
EOF
