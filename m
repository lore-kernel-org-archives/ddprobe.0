Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0051EA7C9
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747637394; cv=none; b=kb+TFQE53tNUIYDGNNcCRnVjHuqQmKdi0npiXcB1vsuNC/lO7SzqYbJr9Pa3Kuj8sTDSRfv7fAHY3+AdzHLeLUyzyvllgfNPOFmwPNjWiFdy+rQG/r05ndWpTmD4lytkLQe2VMycbBFEaBgvT2q3qqSzN+NabK0FA37GfIZy6Rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747637394; c=relaxed/simple;
	bh=e+2imdcpYK9XXKlhF2yrMDX82LzbbKj2X4qsjUJaOPg=;
	h=To:Subject:From:Message-Id:Date; b=k04TaZ06P/nxXQyu+zt57Ddk9ryv4exvW6iat07eFUDRLMNGBJPPo7SO/HdIRAT8oV6vxBYkjpGLVXAKkq3vGynVeXFZur5qZ9OfuV3nn1q3FqWixr7miACW2qwsULAYcafEgdHdmr/kVKJlomiT8OT2Cw9pRIoTmVq/KhB1Y0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uQ4g6iZ8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uQ4g6iZ8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B8A8C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747637393;
	bh=e+2imdcpYK9XXKlhF2yrMDX82LzbbKj2X4qsjUJaOPg=;
	h=To:Subject:From:Date:From;
	b=uQ4g6iZ8RNt/yQ+z1W5L12K3+TiM02xRKULNU2wuKQ++p0+XNJf2hwZ+A82JlfHEp
	 7c/PdqD1sr7kL9b1Ze3vwOJ/ylJpiNIxbltEs2D3Qa1EazMx3Jv/mvR0h73d1Insib
	 pyGugU1xrHWQxW3ivTYBhulTnxANG47gcpiUu0ruw7Vw0aZLp2FFf05teSRFcr6Yli
	 1kpPwUC4qZNc8Cj26M/jlWIxJm2PXaYrteexEpQUjkWPbVByp9poyErcSWVcvXRCdb
	 jaG2PkTvX8UW2fm1PrGoHqMYbNWI1Yu1RCqXnnj6NPPUJ2nfgE20ueDr7IWSB35RyC
	 rk6TGcAeW5d9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E792C3DA6D
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174763739357.23257.4001207111021120844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b14c62b8324f3ea85fc7371ed71840af02f537a13a2f6f8ea252c028a322958e
Date: Mon, 19 May 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747637393
