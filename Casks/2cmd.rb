cask "2cmd" do
  version "1.0.0"
  sha256 "274f8357686cadc7750ed81bafe331e5903f81779b136f93332deda61a6601a5"

  url "https://github.com/tonatoz/2cmd/releases/download/v#{version}/2cmd.dmg"
  name "2cmd"
  desc "Switch keyboard layouts with the left and right Command keys"
  homepage "https://github.com/tonatoz/2cmd"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "2cmd.app"

  uninstall quit: "dev.anton.2cmd"

  zap trash: "~/Library/Preferences/dev.anton.2cmd.plist"

  caveats <<~EOS
    2cmd is not notarized. On first launch, allow it in
    System Settings → Privacy & Security, then grant Accessibility access.
  EOS
end
