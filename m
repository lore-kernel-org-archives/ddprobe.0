Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1A41CAA85
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761371394; cv=none; b=NZa9/EGZjeVv6egM7o4eo1M5eViJJcAPQYBBNloK/C22mfDFSqMqNNspOcf7BHFdLJw/xBUHeoxZNlEncHmo5NAwpsxHWzPCGMhijbm1qCKLiXX/J2P4B9/I996w+u4wbDm8pcFGBTvCXYo0Xg9UzCrYZROxbMusZl1aITQfecw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761371394; c=relaxed/simple;
	bh=Irwue0a22GFmcGmXNJ9aZwYJuHpnqZZS+65Ok+JWfiQ=;
	h=To:Subject:From:Message-Id:Date; b=q6KMvdBdEwniw0SoxFNoYGzsmR+GfTmJIoF7cd+0kTm6GK3O3d6Ia6rhKwmafcaF8OEERagvV/OI38g0EB3YAleWdbdOkGvXoY4FEigjT/jUF31QSmxQkGSjrxDbbHvxHj6lplS7UxQ/N9FkDZdBxrGIL+ornYTQVcn5B0S6chE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YP84qMa+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YP84qMa+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9148C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761371393;
	bh=Irwue0a22GFmcGmXNJ9aZwYJuHpnqZZS+65Ok+JWfiQ=;
	h=To:Subject:From:Date:From;
	b=YP84qMa+e9vCSESSFp+NajJKYBBHOH7VZB5wR4UWUaROgq8u3xBez/ZxrUFlh3JHB
	 tx4zmof+m6wj9dTuuojPiN9Sjq6uo9T2igyHrZ96f8r68OXBMOwMSEcstCAqihGZEN
	 zPwAvLDv4lW34LyatJ6jOtPh2KAuVa42IltR6Gk31uImuWbXGC5WIv9wM/MAeOev/Z
	 0PmuB/2POpPT693E3yyyi/ZFbJ/2dqjr5gLqmk1V1Ig4K9uM4K6V653B6q46W6ooyJ
	 1nPdzVQCiBG6JNEwRus1JiSiNkYPSwgEM/1RumHSHV2rrYl6C/Dwflr7vpNVmo6SJr
	 FRalhPWVowRsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95206CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176137139357.3350.9496144177553754678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3364643447d187cbbb7f4655e8052ac429e145a4c4e81b229d1b92bc4b5d379
Date: Sat, 25 Oct 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761371393
