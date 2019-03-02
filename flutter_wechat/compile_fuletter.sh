echo "Clean old build"
find . -d -name "build" | xargs rm -rf
./flutter/bin/flutter clean

echo "Get packages"
./flutter/bin/flutter packages get

echo "Build release AOT"
./flutter/bin/flutter build aot --release --preview-dart-2 --output-dir=build/flutteroutput/aot
echo "Build release Bundle"
./flutter/bin/flutter build bundle --precompiled --preview-dart-2 --asset-dir=build/flutteroutput/flutter_assets