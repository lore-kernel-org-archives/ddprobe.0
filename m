Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E98DE37F012
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773434694; cv=none; b=RBSFhBO3iYqTjt84Y/lTGI9/pVhwlQIPr8yd91fRofdJ02LpuLn2sHpPSx83lpchVDN30DJfIQ+Hk2e917sNU0vj2YqICEiyKCh83gziqJoUocv8ykArSvuMMIkIpsjrJYQGWk+ueIdWdrtnvisS9imGg4U0/6Emkkq0Tif/GiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773434694; c=relaxed/simple;
	bh=Z3FrHHAtIrfFdi3+K5uBcyIK1sdazCCheqetdtvioy0=;
	h=To:Subject:From:Message-Id:Date; b=Jy/9rqT/L7yDScVAGj+vRflxFrXgMUf822S22kV24AcdMnJzWUGATPzVezfPNLA3HMQhUij593aFTwnfKpFyd/dqdnK98J4PCIy9lKtLg0BDTFVYlYpsgqf6CXx+SInTDzwmzPg2RYoFtFbL3sJ2wI498J9v2LRkn05CIiWdQ8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pwg8npwl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pwg8npwl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38A2C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773434693;
	bh=Z3FrHHAtIrfFdi3+K5uBcyIK1sdazCCheqetdtvioy0=;
	h=To:Subject:From:Date:From;
	b=pwg8npwlbzQDCaO8a6YY6rcEmf30NgA1MFQHEg4BzlW8FYssl9lVnqbzZRhf+h96Q
	 Sp6yUBPOSlR3wPmSKJDMElAUNWQfbV/yqbgj59fBU8VN/8Ii3zKzMCZFQFRdtkA4/1
	 N4eFQpCySDyh6p3OphWAtFjinVI4ryirLE/vFhQ7Ftdsjg27hM3UTWAHPvM0E4m4GY
	 +WcGA/4o9B6G9FGPc/DRvUmJf1Xmurt/LhZQNJHibPrI2E+bgfV9pY95HpK7OHQWV3
	 qortlHE2g0Hxn6UmiYLFPfaj09OQo4GdRYZEfr9vgvC68J5H2zWGVeHDaTvGa0xz6o
	 HSauMeuiy0+nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FB1107BCE4
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177343469357.4749.6919552012260878542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35caed7fa0cf6f5b086ac299afbdb3aaa6b363f889df7cc2a6ccbfbbc0bb1fcb
Date: Fri, 13 Mar 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773434693
