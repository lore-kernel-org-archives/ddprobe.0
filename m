Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C773846F
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751838594; cv=none; b=TPF4lQ8plJX2Kd6VgGQRBaHOtfMqXOrz/OCUquTDnNFSH8I7FYner+T6hptUNH/eMVIiE/J/w+yTV8x179OwwECQT+Q+rhp/5u+eY5Qvsn3gEGpILsCKeVSG8dwpqb/tP4VqRdEvEjddxHcjXUsJtPHc4/xyXICrCKAB/4dINvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751838594; c=relaxed/simple;
	bh=c9g6/nSiy16gFtg4n3V4oGcrOxgiieSFIqgHoIxjQr4=;
	h=To:Subject:From:Message-Id:Date; b=AXZuLBAihborbrofMDZ86MFWVHvrKfp5viiMlW3rtbEZSunYxEps/Rd2Dc2nsnjdnxZ+sJwPkUORRLU23BpDGVqS195/HmrFvrPGGSVyo6DP5m1fhhT/sDppsXuco3vrvnEzXbZipcxSCD7QW+QmXRmzLq/8kuw41JR3vd32x28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pahzEy3m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pahzEy3m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF85C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751838593;
	bh=c9g6/nSiy16gFtg4n3V4oGcrOxgiieSFIqgHoIxjQr4=;
	h=To:Subject:From:Date:From;
	b=pahzEy3mA2pgSmG2/ZeONDNpB1YCGHJIlE4sbUeKa2YMmyRXdSzGhfGt79pGOp1RG
	 oBcn9GY7kUObF8oJlOKEDcgQos3uTHJy0ODVIG6sbHZ66xCgAVCLqFA0U3RVKsmwDh
	 k4Bm+3qz1iznph7YcO8XAdTd9/kQ/UDZIftODNCgGlr+kAxjIGxVgQuwsZBlxjg6Sa
	 XpucZCmmbFkaU4ceYWs297s2tov13MuxEsCQdQWGDVfR6AVJkR8S76fVNdMeweVlsw
	 ZNaPqbV/DbF7aK1rEOfhcaOcz3nWp5xG8GQUA0DZa4HutUqE4FQiBu9D7lnC8cedRH
	 B9gNRTEBrbchg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E51DC83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175183859357.9760.16274345604927663354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e518a1457fdd616df07ac07679a59eb9b197f075df39edf9e147b2bce8edec18
Date: Sun, 06 Jul 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751838593
