// swift-tools-version: 5.10
import PackageDescription

let package = Package(
  name: "KrakenPlugs",
  products: [
    .library(
      name: "KrakenPlug",
      type: .dynamic,
      targets: ["KrakenPlug"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/wabiverse/MetaversePlugin.git", from: "1.0.0"),
  ],
  targets: [
    .target(
      name: "KrakenPlug",
      dependencies: [
        .product(name: "MetaversePlugin", package: "MetaversePlugin"),       
      ]
    ),
    .testTarget(
      name: "KrakenPlugTests",
      dependencies: ["KrakenPlug"]
    ),
  ]
)
