Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61FF1204C2D
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738652754; cv=none; b=SzVPc2HzjQ2mxyaPEjCDYKHXsk6PM2Kg3nA0IHy8/eNQ2wXqtw6BU+05qSO19rKvfdJP6YlTwX5hGhBebZwC9aqLWH0haTHyUIaOhhuTFkgBbMV2Fm/1aYsJShI44PXkmnk0yjrv94YcihSaRG3OO7hvLjfPBgGEJ4YtdGwgV2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738652754; c=relaxed/simple;
	bh=chR0+XpWWVHN2hJKN0QqTRyRbevgN7oVM4bjj4c5qio=;
	h=To:Subject:From:Message-Id:Date; b=RbZFT6DfRolLrNlSe6JEMEPKLnFeqUW4KWTRorZEDmG43uQl2GZI52xTYSTRGoOFJe47iNeKd4V/Ydb+Adskdn+RQPBH0Fkd4bBCjlZsU3a64dN2V/4JBpm1CcQZe1PDDiHLGqikL9DjY3D5SDIcMg1Us8CjYLZk+1n4XEKXFYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+GtcR3Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+GtcR3Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEAC1C4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738652753;
	bh=chR0+XpWWVHN2hJKN0QqTRyRbevgN7oVM4bjj4c5qio=;
	h=To:Subject:From:Date:From;
	b=B+GtcR3YjDaZsFHFOSNhozDem/MWOY1jnRf98lFXkWBkryRJ5a0hoz98sGVqDYuBn
	 F1ZaGTagdiQPxzwKFzMGn4UtHGM3qIoC6Pf120Vfg4f1F0ZYNFoHlsOV8zrF0JNKU6
	 7/9kqEgMIsBpuCYLcx8qUcSKom/XQ8LjK3tL1qCr9Zzii7qFY4hR8uOIfazaR9zPT2
	 IAK5JUd+E2pc4Q+WIExU4FOejnKP/0uQ3HoGlO/TMdYoelgcsDqICz0RFSx0mQvynk
	 ZHpRZd32I86ZHcT4UgAZaA2vT8m9CTceYAQWz5v/VEDBXG/hLbBhBeGfCfaef2QyrP
	 35W2qIDeUpPCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99496C0218F
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173865275360.12659.9237693455736091114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2dc92c77f7e9cb99e41c5e9ad1d869ffc34fb998358039c91436866acf3e34b
Date: Tue, 04 Feb 2025 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738652753
