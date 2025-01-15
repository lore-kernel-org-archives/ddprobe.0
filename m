Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507391DB15C
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736927154; cv=none; b=WN64Ar9D9a5zWw9C0gem3gfr7S2nnQF6iLe8AyGUZmFO70AsNzmnNj3BLYFpnvc5ix7WXmKeryUDmMdc5qnD1mWOQTzma8SwNW2OQHUONZK0JzGq2GDZLHb3vFUlWKGih/p1ZRa40FMX7lgrhTqssI9hxHUI0CloFtTW18OIPUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736927154; c=relaxed/simple;
	bh=rzE3UpVMRDa4n6uETKFxGPyhVZ9VmLudEpCK+bvDWz0=;
	h=To:Subject:From:Message-Id:Date; b=E5x2gyUgStEHChwk6Xprqvwm3a4VP2/XRPZ9ahAcla2SNH+JTO1n9/YfyqrO2QkiWuo2nRJ2zjcsWea84MkKxH1TxSCqJQ1YH1jMX96AamBolG8kKGEI1m9dWtoliEkQPiCMx/pNd6vWSWXtYcSJhTJ0VerBA5OFUZD+gbZX54I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJV5sxr8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJV5sxr8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE80BC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736927153;
	bh=rzE3UpVMRDa4n6uETKFxGPyhVZ9VmLudEpCK+bvDWz0=;
	h=To:Subject:From:Date:From;
	b=IJV5sxr84MlxOIks0UE7MS9TH484JKnCHiSgTfJskbadRqRDalrkigPwLIHqJpJsl
	 WFcc9lNDAja7//iDdZhlz/HOb0t0GV5dSC/FkHSTbD6KRXyBz/ok4AHIP3v6R9dVG9
	 vYGGyV/JYJ1M6L/wpz5VzhYb4kh8npLes9a08qwVLO+lW6kNgws6d0BvR1mr5fQqJh
	 Qv5AgPkt77xazgTFc6Nvgzi8K0uQEmXxV8J6BkyAfXeT2eOYZlH0Gns0rnNRv1DZ74
	 3IChqeftGM9t+bUQhd9qOjt2e40fDvuy8UqHl2dicpyvFifmiBYSIk4EaNa8AEBGff
	 FcMPFy4F+SdkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951ACC02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173692715359.12379.13966240826125169770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d17ba54ba4e578f2b5e9ddb9bbc59386f0f775dc73dc0a0471830079d1a5966
Date: Wed, 15 Jan 2025 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736927153
