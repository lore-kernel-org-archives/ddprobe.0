Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A89F2DCF57
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 16:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775232334; cv=none; b=rGyk/ftx41JwaR5aZzPaZ5t//Dj1KS++a/1cHoQat3qdA3YLQzkit0qcfiIfaDp+7x/++mrdfTUUkubtD5RVCEf42yjOBVLPVJnwsGaQLU2ov9TsVOgrsCbvXVKjsW9nDyOEKs7EK9imb+xXy6//2PVXmWZqM7vA6u4yPCBx+vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775232334; c=relaxed/simple;
	bh=IJ/pOlN6WCF9IvPWbXCTvUrZ951WEqaaluVjEvCV+o4=;
	h=To:Subject:From:Message-Id:Date; b=RDWrqN5cXf+JEcFXnQoLC+RCP7ZSRR77N9hQh1H0uU5TvHvkBB2Xu2Q8sgNI0IwV2jC+k1qhhiOl+mgqRMJpsXhbJjqOFg8E8zk8WuA1rSZ+a0FE8KL7PZ7DitG+T77/vCRXKdVqnj+MuX5Ss3xEX6FEExd4F/s3/fghIPH+6tQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HzGlVXvW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HzGlVXvW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5D9C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 16:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775232333;
	bh=IJ/pOlN6WCF9IvPWbXCTvUrZ951WEqaaluVjEvCV+o4=;
	h=To:Subject:From:Date:From;
	b=HzGlVXvWGH3ha5fItfUdf264Wcs+E6bxVCzy+PhG3z3NEGY2wX8zwoJywwIVHCbGB
	 h3YyXOSqllPf6iXQdoeEZ8/chxiaNxTgC2kNBHg1pv2S+9g2pWKWXm6vriI0bgpuzk
	 ZgsNdTeebsyvGP9Xh0T0L3shG1ttUHbGXhohIdgvf4UbhZX9+P/Fn0+KAUvjZF4MMU
	 x0txE9idtmTSDeAl1ycj490/Doxw/k+BuqZtKARu3L3nFdr5VnvTWS68wowz9LLoco
	 sWVH+ehwd+aFUtSkg1OVmpgpnjHZtQz0TUI3epDyOxCjAjmpbP6bWjKkoFDAE+IgnK
	 y/SC2QiMLhpXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7C00E8537A
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 16:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177523233374.19464.16598865075391270421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c0161303d36703aa5b6403f0c2613e95e0b8b06e1ed2ad1d83acb31cd7c1bfd
Date: Fri, 03 Apr 2026 16:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775232333
