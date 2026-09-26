Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49AE4332601
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790429434; cv=none; b=WfBGu9PvkzfMMJFVdYzujtgVckBRWyZHfMnWbkIxxIIlThah3bIzzmAlbsFd8cgULtCXDPam7MVbaEJMQRyaexrA0OPOoA4V2DkQLyfd5UN7AAL/J8BtHlxG0PeMo8WiGbjksk48ZiCeeDcwDFFJjQFNiL2HIBJcDoijhCRU8RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790429434; c=relaxed/simple;
	bh=X+8MvETN0Jc5nnjts4ix9M9nDaRalUOpndDEZlZJFDE=;
	h=To:Subject:From:Message-Id:Date; b=r5dWj1FDQXpCfmYhA46/eyxzHzQ788C5DhZCkMv3vcOy3d23SzrMPbj2Tfi5tlp5Vgx+oo2gdEJ1zSH5U2qUx+A7WCIFysAjMPYosHyrjAjRmELLkO9vAWZeuNfCwxpCWRk1atoQAdlzO+G0zvtqgBVmEcjaEBflOWPDePBPqjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YtixFt5d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YtixFt5d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4FF6C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790429433;
	bh=X+8MvETN0Jc5nnjts4ix9M9nDaRalUOpndDEZlZJFDE=;
	h=To:Subject:From:Date:From;
	b=YtixFt5dN2XedYUPRlu+5W17YywUtjRKKYk+iZ2W4R6rzaaGEroAeLHtMGyp2lDmF
	 7SR48edMUl1m3H3Iwc++4BvltTLOn7wOU0eK3PRWBmSYKR8Sw8oq9X/DKwlp1Xr3BK
	 Sj6mGhXGQfwZM98dnhDS2c58FFYesO7L3AG6eQnOc6XaKWBxPGuZ0AfCPgbgZzfBpV
	 rPNRFIB1YE8ClXGsrEjS2kCELvMbQ1s5b3ba1XAu6DvGvO9Dp5ug/570c8P3UFdS31
	 wzZUUueNIwY9jqDElHRuiN/phWC3NFVFtmR0HZQhKMhDdV0/OgJMiJlgYR7SHbbiqs
	 qtZNGcMvLjjyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7F3C98338
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179042943369.21379.10833535360447344464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34392e2c5592d23782be22cfda5ab4bdca345d85ab6e9facb9cf49a084f0c6cf
Date: Sat, 26 Sep 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790429433
