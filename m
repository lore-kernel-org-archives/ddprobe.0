Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD9D2737F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762730394; cv=none; b=sGoNsVi8lUhm8ieJIljrOk9oI3f1o9UATLXK5zMdLfvil3/sDf99ZukGqoSb0ijnfIkFMtXtL4t6uHrvmUkkBq0q/lqBNA1ESDY44wML4vCiRPJK9BiLjgvWNyODCdfZ4WRsZPTr1MFweveoQEqrNte7/jolgT5Vrghz2+S/oV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762730394; c=relaxed/simple;
	bh=CWoaMmALhgrXH8dN7bysQAlbmqP4nGtBgIz7SzEsBPE=;
	h=To:Subject:From:Message-Id:Date; b=gZhloAGRQybd9kX3TBVSE4K+8y4kstNy6qiUri1LVyXFO7yebQH8jjX3vJ7smlrwUNcOwRLcDtjmDY75yN7BAxzgmn63BY8lt0GZj0/NwlcXXW0ZYAFTROi3TxIQpGS5y3CsbC1+PCLOv3tk+kvVcOew6jfNl3M1g4Hh4ZkjcZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=koN4Udb8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="koN4Udb8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B592C2BC9E
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762730393;
	bh=CWoaMmALhgrXH8dN7bysQAlbmqP4nGtBgIz7SzEsBPE=;
	h=To:Subject:From:Date:From;
	b=koN4Udb8y3cjHGZ7swYG/PStH4p+wPq5UaJBXhY9WVW87gdP+99jZueWmuiJ0CBE+
	 jKhFuZ5j6dcHGKfG9VbUreg90w3H3eF5PnUQwE6nMRtf8LvYNyrzquuvWy3F0pp7iF
	 5U0m9JwHz77qh89YMJqisIxwIywovw8DbNAXA3WsKmloapyiQn3KSAcBY4kOv8ucIG
	 ddwlJQ0LMq1q4ucJiM2cp7xyiJElvaT2INhg/P1lVHsaD7nprPXQwwZMCsEbk9n6C2
	 hqMxhp2157h1f8Gc9l9mfODQ5CU5M3JUCXhpSeeA5kLuQrQ5sfzd8b+mJp80D3rBu8
	 TaxRFNS0VL0KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F538CCFA1A
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176273039357.24376.10573512155948792692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1404f10cbf6a9dfe83af3269a862e4bad37ce4b01b8d6f05562aa69e39103fc1
Date: Sun, 09 Nov 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762730393
