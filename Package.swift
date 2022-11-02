// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/tkach13/KmmTest2/github/tkach13/kmmtest2/allshared-kmmbridge/0.1.0/allshared-kmmbridge-0.1.0.zip"
let remoteKotlinChecksum = "d4e7f0aa492d377f57329c0f7f5660b0770ba07eb035c574cb8ad9f728e45c8d"
let packageName = "allshared"

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)