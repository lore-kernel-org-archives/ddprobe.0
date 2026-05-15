Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3F2B3624AF
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 05:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778823634; cv=none; b=JS/QaMuICMJQTPxJu59CYI/Z08dfoBJXuB0ldWMfE44P3Qa3bXigOotLARZYDGZFq8tfvUj4Yt0yvM7x2eJWJtkrV3Zxz78AZ/jtw81hwI7LYUcxGL93RUGwwk9C39veIZNn1+DgSvNm20iV6xEREnt5Iq+UeKcR8i/QGdv6fKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778823634; c=relaxed/simple;
	bh=aLN47Z2tEy/1VKYOM+MpLoRewFYDWQQYkcZoN1f0qmg=;
	h=To:Subject:From:Message-Id:Date; b=DQ5aK5AdQepd4uzi68hZvBImo8DlKsDphYGfzRrPUKiKI7Ykiflx1afzKy3DqRhKyl2pk00PzTdqf989mqbqYL5WFSpGf5y4lJUB0alS8Q1RiKD0KykX5PJcxZUx31381f/KLadO1RXXKQ5GnkqQ6ZFiwPa8bOLLfU5Vc/IMm0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hkqHMEd9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hkqHMEd9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C08A2C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778823633;
	bh=aLN47Z2tEy/1VKYOM+MpLoRewFYDWQQYkcZoN1f0qmg=;
	h=To:Subject:From:Date:From;
	b=hkqHMEd9QJusj9TiAaM9C9B/Zpbqt9naUX4yDDHfb1fSsy+sIFbV6iKWLnuLdsnl4
	 L8T2SYwbKEKEvAv9RNEbCIXg0Fi3QJ6FuJj1uAITIOm/Eh9Vl005pCJej54AbGyaOh
	 N4nIhRxzaFsTWgP9Dj3YYPrsNII2uMoCuo/2IwtzTRiLBISd6XXnRP9JULtQyK5Vl8
	 UK0u96GzzgNGmcz5TjB+qwJuvPUWDVo4EUhafDeV45iSfNFVFYH4r7yhHHRa6l7Vkf
	 1ICnVdNqVmo/HLk8UERDVEn3c8FwbDjg8EJ/A7QeDF/ffmj2E0b8/JqDTGhKNeCY/1
	 Vaspqryv/I0oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA74CD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177882363368.7861.8115416955554993470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70a96a44f8263985b5c117492a0e9120ac84687d56030fcb2f73183d661a02e9
Date: Fri, 15 May 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778823633
