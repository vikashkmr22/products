#!/bin/bash

# Base directory for this entire project
BASEDIR=$(cd $(dirname $0) && pwd)

ph-cli md:thumbs --debug=true --source="../howto/brackets"
ph-cli md:thumbs --debug=true --source="../howto/controlbox"
ph-cli md:thumbs --debug=true --source="../howto/extrusion/frame"
ph-cli md:thumbs --debug=true --source="../howto/extrusion/hopper"
ph-cli md:thumbs --debug=true --source="../howto/extrusion/flange"
ph-cli md:thumbs --debug=true --source="../howto/extrusion/screw_alignment"
ph-cli md:thumbs --debug=true --source="../howto/extrusion/keyway"
ph-cli md:thumbs --debug=true --source="../howto/nozzle_interface"
ph-cli md:thumbs --debug=true --source="../howto/sheetpress/cartridge_heater/hole"
ph-cli md:thumbs --debug=true --source="../howto/shredder"

cd ../howto
git add -A .
git commit -m "howto:thumbs" .

