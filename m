Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74EB31684BB
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 20:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718654903; cv=none; b=k2CZaV6nbvt0PIaUhmhw/XRefv9w5fzwXrO/yFjfSguDndXWzJ3OUa0o4/G6mT7EOcR6qWxxo4ydiCpHWJ5INRDO0Pu4gIBw+848mUIRMxxhtycXDUUvPshz7Bv44l88q3gBPBypgm4YO7I6uJKFIyIrHpfmrhwwXaWdrbUSp9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718654903; c=relaxed/simple;
	bh=yqE17/xGWbRVlWCu307TjUAVvapzXDAe1jN28GZSrfw=;
	h=To:Subject:From:Message-Id:Date; b=cPoYWgTtG4mNt25tQ3dV76Ci1WXyziXNTPyPBvQyPX/uMrhLTh6LtXRVsIv2Xv82vk9tyAsmCFGUpyz5UIH2smdGKCzn05o3ED2DJbHTlOzhpk0EdSvEsXarwUkvoRvbOoUKTXD3LLZLLC/3h4TvH9k50A1lxfMUEaZMA5HjJVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hnPbumGK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hnPbumGK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E25EEC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 20:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718654902;
	bh=yqE17/xGWbRVlWCu307TjUAVvapzXDAe1jN28GZSrfw=;
	h=To:Subject:From:Date:From;
	b=hnPbumGKAM7EDE5A7Wcv91E/KCDbnZdkeWFOY/bEJm7e3b+2EMcUIirEE79J/D9sD
	 wS/PXpaPm0TqwF0BgYaQL07v2MT3UGjG2JcEBknPHHmVvcysGkEeTvcy5dBajeF35Q
	 WBGSdpV8FWTvlPH33g6ZHVBAmCub16xrRB80/urfs50lQpJ/QcvcwzK8t49prRQgNu
	 MuivGsQqKZqOq5Ld5+zyzYDTbp83DoWhsZbcab97fmnEM7cw/f9QqHqW20vdQ3MX/f
	 NLvt3+KjLd2NCaeQ0A8mkuyvM0qRoaf1yfX08399DDv9NuVAQFBbQ5eKjO0zwzZHCo
	 SDthjRm8U5vng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBC24C27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 20:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171865490282.31503.17178457895281319301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14ff0fb3ef291599e1cab8a355a79c39e7f956dc91457e41174a9991ae387495
Date: Mon, 17 Jun 2024 20:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718654902
