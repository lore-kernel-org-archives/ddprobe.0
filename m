Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E79B6258EFB
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 22:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764369774; cv=none; b=FqvRpm86bRWldtM64UZ8vd3OZCw9UEltpYTQFewrCbqsqznhkhKiHV/mZhwZlihQ0nZeg6SRCJj4K+PztWTtzYWJSK3UsR5uh++uEP+u1Y43Egbu6xDhobRGE8p5InXANKLsqbY2Lpa91qy9W89W2TTkyvc+/g8PXW3IIrRyfhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764369774; c=relaxed/simple;
	bh=4PKpQF5HsMgSezvt0fHEModtQgw4sEJ9HseggqFNPPo=;
	h=To:Subject:From:Message-Id:Date; b=u9H4hHdq4WkP/MujSL+ipzl5WRwHV0BePzTvW7Ed84Ji5O/04A0+O5eld2uB61Et6wonBQKreslmUTCsGswgqUGsrepfZJD9aCMSaz33v9PfJSke3V3ZwU5LYpcygoD3ZqaLw3ELPxrUamaGUR/kd2dYpvv2YhduKMLT7ENzzN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MhocdzVU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MhocdzVU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B55A7C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 22:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764369773;
	bh=4PKpQF5HsMgSezvt0fHEModtQgw4sEJ9HseggqFNPPo=;
	h=To:Subject:From:Date:From;
	b=MhocdzVU4ReBcZCySbWe5frPj1PwS5FEj5Ln4AZC/gXPkf873OrRkExIQzuxTMG5P
	 iJRkyXm//iapQkyPxvtcK+BzkZA13fNMBWTe23zqo96jIGOOxoT6bPLP7yUWY5u7Op
	 Zzyir9jn2f1ohOivhQw/7t8YeRkpD7u/rArQrWR6urly7zEo3KfR9D478ycwd6bcLj
	 05QOwNH73yFhupFQ4Anxw61ByOa8rTdROTsk4nrwJUFAe5Wah+VwfrK38N5NK+vrXy
	 dwavk/w1/TCwWZdfeRUlwHsuT8OJw+kvXCqLm/gLk3n2KAFNU3o4O0VN8EpQb5cr+T
	 QQ+vCWjojvMkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0F42D116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 22:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176436977361.19701.4072389702357918919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05e0ee15de3ae7175939960ce75ebcf3d1ffe13d7d304487fcb153afd6e5b694
Date: Fri, 28 Nov 2025 22:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764369773
