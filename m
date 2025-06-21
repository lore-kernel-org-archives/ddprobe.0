Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310032CCC9
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750537194; cv=none; b=KL3WWKX3fqofwxYUAOt1XcpkUEPvsWDx5z0AFJj+jeVK4oOPygieRdyZIYM5tlHeKo+G+aVSx8WwTAx+TmTAI28ikvRbzJQCr6+C+vcB0DSmX82lCxHxxyPjQy4qI5lgulLADyJrSDaL4qJXENZvUL0woZOIUwh1Pm0xBjR8z1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750537194; c=relaxed/simple;
	bh=CFMwwhqgT98ijEvrixZ/LN07qPAN7pZaW90nN8qOAtY=;
	h=To:Subject:From:Message-Id:Date; b=KLKmrBX26Nzc3f9k3rrlrnkpY/bImbTWJU1AhjeCr6z3a6q0NPuLBtGDSvQPj+YuCC+COQT2ObUur89mC2NPznTU53n8jsvuNih6e7hRx1VILrWO5RQtd9bUsOl+f7FMMJEVe+11fF3xiZaE5LYmml1yVGaoTiamkevRyrQCiis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCnkLy6v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCnkLy6v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B0AC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750537193;
	bh=CFMwwhqgT98ijEvrixZ/LN07qPAN7pZaW90nN8qOAtY=;
	h=To:Subject:From:Date:From;
	b=rCnkLy6vmzDhtCmuE6tDxITcmdekjYQQfB1mF/Ts2XCbPwuNQzQVh+68L4VZ9B2lh
	 BMuHi8PoBvWEGt1Jzo6yiSh9PqqWCswHjNgXBnJEc34Et6zsDola62Fz8lsE8LwHkK
	 geMgqcIEiVHUZlJ9vgU86WF55/bAhJFQBQY/D8Iyl7mWVbhgPkFe+ZH2K6Czycqhpr
	 wEA80PCdHLukqyCKsGzZPr8W88XxyszSZvQfLKqdzxG/zTu3OguNFuGxbP1ef8kRB4
	 B8lgL+elPXLN73jyl8GXok6buIxM2xzkT9SRPyGX8BSIS1KgRpZ8SnPbZ1Umsnn1P+
	 0EyPmB2uhLyqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BC2C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175053719357.28057.10227300314713378317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f97b2e3b9f44935d8efeae208597ce1a12e1e078a3a2f7694af5f00fe8c87502
Date: Sat, 21 Jun 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750537193
