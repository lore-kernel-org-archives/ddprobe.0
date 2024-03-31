Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDF9B23BB
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711928297; cv=none; b=XoYTTZJWb+W8oDKCS9S+cUSae8TMlKEJLQHfsl7hIW4UZTy9Xwd7UqgPFOVEG436n0QQbpB1s4+Ro4qZYLhUnEXqHyU64l9ddjUJXcQ9eG105USnx6OEt30gakRZphaOKK+NCnbyxqQRkn6uBg3Rc6MKezJ5uNvqiFiR2Zo1raI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711928297; c=relaxed/simple;
	bh=O0rFmX3XIYHysu+bCGeMdwxHHn8nO4o521ydsNT5pRE=;
	h=To:Subject:From:Message-Id:Date; b=bEGuqEn+XVuLGztyewwk0nIX4cnsfbtPtl1PcE1trsHjoh3sHeiP/K6JOa/g+GbyL+SH+ncP6jZCGvDyrY/F5drJdyVJeW/+HMkCYlbThXZwf4Ei1zktSqD8vBCXlfgeBe3cXffXGQ9t8LWsnlji2h1CRacCgrVyhx3v0suFNf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WH53wcSa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WH53wcSa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B741C433F1
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 23:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711928296;
	bh=O0rFmX3XIYHysu+bCGeMdwxHHn8nO4o521ydsNT5pRE=;
	h=To:Subject:From:Date:From;
	b=WH53wcSaaqKCB9BjKwK6fl5f66m9qrwoaqoo3URTKaNxEL8DiZAOMFvGVVfW+QFud
	 5Qrk2PKJyjYop2OnJN0/gz+khKtz8B+BKDMnZrutJGQBKRb+pDBj0cDI30lPM7bIkN
	 5IsNfZwXX4Dnw0HjV2WZxqQwoNEXGuBK2OxUgvldrSuyiOJpgpa4dnpkaKJoVkjvwR
	 xbdnTv19/kzHde49JGpfIQK84KT6FFIFc+dzlDkLl1Tsq+iQIE8BbNr56pYaIH4/v7
	 J2rGeWxmY6eA7csLM0QGTpsB0dMr3SWFEepQDf1UrRWk6R22fKetQfbcDjLGAqhpOK
	 X/UsjgPZTlLew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65A22CD1284
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 23:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171192829639.9555.3939533909553845296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6829333fb3b8736670bf4a6b101d024e8a692d23c011b7b14031e6341d345d1c
Date: Sun, 31 Mar 2024 23:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711928296
