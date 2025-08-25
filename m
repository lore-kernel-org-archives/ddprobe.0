Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6C429ACE6
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756109394; cv=none; b=AporDowIcEYcKuH+igJDGFnnrMIH/cxJlR/FFaVpa2DMpejfIRKihgmTOgeH0WV/7rKvrbl8/UqLLPFDO7jjQZCOTVQIntpL0yvyw3Af5eIwTkxBKnFcGyOfthPfYSvjNLGoqA6pFyE3+DS4okdJXkgeeCCh9CWaueCysqdVyBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756109394; c=relaxed/simple;
	bh=g/yWOilCZkq1Rr/qnhW0z3VGEUJ7527JeGDg063yCO4=;
	h=To:Subject:From:Message-Id:Date; b=mc4ybydzw2pKCRZlSo9niHqgZKBsKZwh29BtrlSTco7l0EfoIaDvnBqwZEOlJkKvk1Jmvtz0gVhEgtLrLxACvIBDQp4PRMi0uu/PYwo7aRwtlQCaplL/rQdBdwSMVb/N54YForTkmF2k9MVc95KVudg+J0Q/SHRyLA41Xm+h1pQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYdJWSKn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYdJWSKn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A677FC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756109393;
	bh=g/yWOilCZkq1Rr/qnhW0z3VGEUJ7527JeGDg063yCO4=;
	h=To:Subject:From:Date:From;
	b=KYdJWSKnl++HcNZIbMOgrA5V5mgoGO4nonqGWh1bq828zkjNXOXugREEwomqXjXAX
	 +tG1qryes3GkUfvRTXR8blQQS03so5h/LX4lRUlo3stcldgryTIu0MfzgD5lhD2CyV
	 Hkv45B+yvRfvwfBdUytjRWP+WM4ShvywLaBoYL27Fgh2tSyLkA3IVgDkPJizYLa6Bm
	 G1gB2fjyLicWFcOFH4XxJ5h5JIYcXkCfX98MW7FL2iKuzQppjpIIuXjng0eA/tQ3xZ
	 2TGNXA8lbLKL2BJZrWBdSKSAkBeJsG6P+1sbJ7YgSDInqr05D67zSdX+i62tI6fdxQ
	 1vuDRUy98xdJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944F1CA0EED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175610939357.19371.7904198223719507820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ad7cf863647c64d822f86f251f41d47010f7c48bfdb05363258a3d1adcf3604
Date: Mon, 25 Aug 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756109393
