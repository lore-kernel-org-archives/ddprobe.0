Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D5B321F51
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757417994; cv=none; b=Xdq8Jmxo4IfmYdm4P61WKMQU4Crv2jF2NXWoDFdxZb47PMUGoHWKB0Geooh3mTbU0EZ/mdGWQQvaAAIbJXTGVRos5Y0+txjvnGjzOIQHcLtg2IwvN+RuWwiB1o2sv0cFKszuLYYLouJF3rJe15CVU9ZuLjBm5swsBLm2/3ueTqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757417994; c=relaxed/simple;
	bh=up9waUjdLYFCLRuP6w9cTFtYIIyoghO34BQO549wHBk=;
	h=To:Subject:From:Message-Id:Date; b=RRHWigFb5C755cTq9w8nmA6vlM1Cuk96fmReDCaREiOtQYxLNNmRETbrVDf7+CwSxUBCMbCzu8G8HBVTj1Mxty05R/1dUPkwnLCaSB/V023Vfi+W+Zd24P/ea40B7ytpqqX0j80LTr/yALY3tDpF800nGU7+Hw6SlmngqhldiVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d0Yj9yUp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d0Yj9yUp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CEEC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757417993;
	bh=up9waUjdLYFCLRuP6w9cTFtYIIyoghO34BQO549wHBk=;
	h=To:Subject:From:Date:From;
	b=d0Yj9yUp0eFroTZYf2Y4qbaa+K8Wunxjj1TFfabvREfx3cyWhfSiJAx+/U39hkmuc
	 Jt5SOCYp2GIZH76eD0PTGWtnFu8Gj1HJdqi3tIB0E5d8GpQqlATO/qjdZkTkRG1ngN
	 ocAmHmo7bsdJXvRG0g9j6/40TTznHCqmZrBiomEumAKVtmX2Foyn8Ah7xLLV2mEVXE
	 Netn8nEGlEj0/cAano2udwTWs2r1cnsp9xrIPj2/PhfF3vvVChccyKoqqyReA1ey4G
	 d7+xXSJZTG7akbc1oEnnSPcEO3ehTt+SAi/M7lUOZBubkcXqtYGXiKG9apVat8cABV
	 oQ7XmiRXz0bJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F6FCAC583
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175741799358.26933.10206408674805275039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc8f911744cfb513678503a54ebca5bd96d795f146d6745e0e007ca9c9b8fa7e
Date: Tue, 09 Sep 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757417993
