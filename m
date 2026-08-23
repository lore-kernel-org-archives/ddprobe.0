Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A44E2DF134
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787524834; cv=none; b=oPVe+TIiTNTTAf1X2HGJRbO5DU1/EAp8woT2XQyVJPY/mEEY/WuliZ7O1dOrhnkGLEf8Jh/VrS2zTVjnGfHsSjI7bH+udzxyHCqQZzZ6cXz6/crhs9hRtydMB/T+1JUePc5nAnfpzyfzMISmkfP3ciggTycitgX/AHTODguTyuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787524834; c=relaxed/simple;
	bh=Wd1RdpoGYpSTqOC6n0MMzxbrwvNGo/Vs0KZQxUoBcms=;
	h=To:Subject:From:Message-Id:Date; b=j/J5Zj/vNUpLZvHn0kEEKTvoMRdncoBMRpPlCEyW/RiIuLqBcjRSEcJIeTbTsifV4dy6qdcUg8eEtWXtnkjHhcFt3Whu1xz+g4Cwa/549/HiTbxbYd8BQdHn5XFgdQezwX8XZ0BQj7kzppEJXXlYL4a4MXL/QqF5NKtgfYozwrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gvxdll7Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gvxdll7Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA3C5C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787524833;
	bh=Wd1RdpoGYpSTqOC6n0MMzxbrwvNGo/Vs0KZQxUoBcms=;
	h=To:Subject:From:Date:From;
	b=Gvxdll7ZDGb7TWmD7hmev8fGQdyhBOeZrYLCkr2ZaKknnfA+e/lZYOwLBYdip0g8J
	 wAj7Um+h2rRq2DX/tgq/NlgNRqk3WLmr8uXRDW9WD8F42cqLi/OGrMauZxkJv+OtEw
	 lKBmAEqOYc1QXAvWRQEziPvigi49ZeBNGqJuWe4YaYz/951V18Wnk6FyGJ5CwqRxLY
	 KZFGfTeo6SIdyYV3yQJDGMbUmfK6RGf8QyW5nEbDyscbURnxcf00EoFOI0H63SW2Zx
	 DkOJxeJAjC0d9OjbQW1/IMXBG2WAaOCE4QqS3Zv4Wna9v8113N3xHCEoiCsO1fFaNS
	 op7GSQTXWzWMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B48EEC5DF97
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178752483370.28566.17431936838098010097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73b8b5421835b04df78aab0991fac9f2d8b7817e9122c1f0f29c49c85fcd35a8
Date: Sun, 23 Aug 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787524833
