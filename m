Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A03C320CBE
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770162834; cv=none; b=OVbMxoT6mAWZZI9uRtQeWaQc1LZf1E72fQI7XjqS0xgwzBEhNLMqPmtxeZbc+EaWgmCGsZbK7RE1WF2ddyyLdrXa4MHWTaGxMou+vUTBx4PFnsYN5JhaNQENuukPc22DNhoQlnXoq7X2D80NYZv4JkaNYE2VDJrjzKn7RNJBcxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770162834; c=relaxed/simple;
	bh=7YF7Gy03SKUSv/K/MDyUwFL7SNfWyWlMulOfLo3aC1M=;
	h=To:Subject:From:Message-Id:Date; b=kAxQOazZznKzMtRT4VfV5lz2jDUcMXSVf2SKZgFDGIy1GpgCAvdAp8sbdBspPRKXOgT7r/9SK3fHK7sdGHrWAlZQhWkwPf4G+T8AEIvuDKmIGVR09wVrG52ubdivRhZzpDRkQQVbRkjoFait8eeB8SYl3uhS4rBV1hFvs34CZ/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4rLD1j5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4rLD1j5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF75C19425
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770162833;
	bh=7YF7Gy03SKUSv/K/MDyUwFL7SNfWyWlMulOfLo3aC1M=;
	h=To:Subject:From:Date:From;
	b=B4rLD1j5xbKvLmczWp8aNoXQ8gi63LJTPIPJJ++y1hediboEiFcdSnmqQvDPEnuqJ
	 wWWB7j/h7ejzUbtfgkW16dJ/qiyEfDEdg7tReFgnyoKTnBvsPEyJgufBNLRvM1Kr1h
	 6LyjloyGabOkmOJKGm/Bxij31WKCygXhnCQVz4uMiq6hGmgliDFZKlhbP9jwX7G00F
	 n95LamFvjYE9LeEjgr6TTptRHd76YNkD07imWWnv/gF0zvzEVWe8tFVnMZPKbDnwxC
	 LcRYNv2LOKQYyQLRrfES4ccfR1fkhkWNjiBu/t290D/FubtkMzGso6AIxbcFaElMnL
	 pLj9BYV/Ue+rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AF7E8B37E
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177016283361.5049.14913868329225012995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a263634f7897a0205fc52ab7de9933dca655737635b36b852006d0eafd771f58
Date: Tue, 03 Feb 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770162833
