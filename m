Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3158A23372C
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 04:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765771974; cv=none; b=VJjl04KKcTCXkRDfveXd9t9v5A4YL+wQGZ9FrrNBcsi2nbz9m2eVgObtUhCD5IZE5l89bdtgYCuDNfZF8fJhjJerX2M7nRGkOhQ0Cji19f4Do3Mf8PTk+Q6vo9TQXvsPYIGhCKZkrwLeysYWAn2R1H0ZFjl6dG1vb2XVPJCQhFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765771974; c=relaxed/simple;
	bh=f776g5RrEWfed27CCMcyxBIFx65yuPKUXmsz6TqgZes=;
	h=To:Subject:From:Message-Id:Date; b=GWDQ6pIcUWn2JXrxY+o0ZvqBaE5ShWDsxQrPeiZWzRgTSBhSJqVOQyb1Af76pdh2gcDNLAzSPWR64JzZHbmUYPr1aHW9CfaLz4TvWQGpadq5euAAufOqawqLBzvpdI+azLsexQD/PT9/zpERXKDG0uWe+bvXAsELzgSmeTGhcGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OjY9bdYp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OjY9bdYp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9252C19421
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 04:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765771973;
	bh=f776g5RrEWfed27CCMcyxBIFx65yuPKUXmsz6TqgZes=;
	h=To:Subject:From:Date:From;
	b=OjY9bdYpfs9hlvO+oPE2uxE1zzD4xXWSTvO6Ef0yflKtqgND77uuO7VGyVJln0Gu2
	 0Bu1Ig9bcLjFzkR1lRLe5UYrQH8v5AW/Tjf4nRudLdBI7u2d3EtCnXYkcvRlGqP+4z
	 133Dy3tTCFkSsKSeckWs5ThsyMJmshPQ6I+G2H1w2/MaejNahMBnptyl7GzGEF7pji
	 K5nq8/2j5UTuTWNZeJxSvGY89Bk7pEOA51a7CBKOGHBqH73/cKBA6GCD0DMiwtkIro
	 6r2BNSVCNW0t0TbVq2MBpJmZH4NyGIAOHKMlin15udSC3dqf3UBDC8pvC9TghmXGhE
	 UDt0x8lg3eBUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933B9D41D74
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 04:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176577197359.20908.2180352343417524260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70f84114905a2d4110aa8cc2a9e07f5118541a76731012b13941badd8c2cdc22
Date: Mon, 15 Dec 2025 04:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765771973
