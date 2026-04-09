Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35689204C3B
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 18:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775758654; cv=none; b=afY5rgJ+wt3vL2SMsX/jqF2jJum/6XuJ+OFLiqAXAChpzCBFR59JH1w2VEa0Hlvq+xfTSsywy2l+zo6UHFUll+OlxHorydXOmGLUR1QXwYE1hy53TxKS72W+chry3grGUXEjBzndEthWMyHoS5zAq5YuJEUBh82ifpGm0r+7FEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775758654; c=relaxed/simple;
	bh=7c0JkHsxEqOpB2jJKGmqTIJ+7/V4cFZk/UKWEeHrH1c=;
	h=To:Subject:From:Message-Id:Date; b=B2tELZ08CkWY1ebcIgouxGftOXSoGGpd6VJkjmykkNHbL1Z6NIqIXSfluvaGlAxzF5xb88gqDvYRUejooZD6ve5YAh4jUZfXcwrleRSSxRtQrx6frl4yU97jKUvWZezYa1UfcTuRVRZSAx0y24kVbME3tHJS/ceZ/XPgo2c9Bqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n+r3PYkA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n+r3PYkA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD136C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 18:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775758653;
	bh=7c0JkHsxEqOpB2jJKGmqTIJ+7/V4cFZk/UKWEeHrH1c=;
	h=To:Subject:From:Date:From;
	b=n+r3PYkAjM9CbK/2DqUkZUfBgP+hu091txG1O4UDf6RB6k9CnSzyJnnOjWED3utf1
	 dRYHe0IvDPUEoBJm9Kl0/J6AmfLyDuCSH2C+Qi1RH0Icz51xd32w1HHgLKyHP0otIc
	 ZIOwNqUJLR14GmBEMXFcEO/4d2Fc0G8wRnkkmE8V/yxbpgesm7gEjDfWnMsXADG/jL
	 erjCJATwCL2mAqw25l6dnrh9XKsNbpquCAJvkHaPL9kdGUOLR3FYUElU4JFc9o9iae
	 +qWIIn3oo5G65WXwIvKGycV2zfIj89zkWJF9klBxKKsiwzTSnPnJl5pYNbW3HzZDL/
	 FsdQQ78zEC+Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5CEF364A3
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 18:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177575865368.19579.6607437804855705621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caf5475e9c39505b1601bbc5b5aed55f110762a2a9d1ffd5a68fec22f9f9dac9
Date: Thu, 09 Apr 2026 18:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775758653
