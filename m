Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390E2EEA8
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758500395; cv=none; b=q3rKWP13RUtzSx7170M0CY/f81PcVCD/oVrlBB6Zt30wFtc5+ln6ctJmRg2EQyrvF8ClsxGEohfWQYLf1xuCGcJCiVwRsjrdLUWt6gwBQGl8Hn5FNYA8em2Ff9Th13Xr8gJAcNnVq2/29we4bpCI8/2LlUaibgUCGkYpvX10CiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758500395; c=relaxed/simple;
	bh=/cbMzhmR/PKfhoWsJiWFSw4R2dAGTnIa7O64VFtClks=;
	h=To:Subject:From:Message-Id:Date; b=ZSfo4TEuAr4tdCr2ox9h25xJx0Bn+1vFwLSG7dW4p2x1k5rNRuyG0CJvR72NkhJOclf6FBQ3BnBodrRCYDgwojnfz2aNWz+xAzArBFLDCpqfujLi3YEt806rvJWCrRe0V8LvqpxKob1r+PXTBLG7GbX7LPy6UkT0orJUxBsRdj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s2/nq49z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s2/nq49z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E17C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758500393;
	bh=/cbMzhmR/PKfhoWsJiWFSw4R2dAGTnIa7O64VFtClks=;
	h=To:Subject:From:Date:From;
	b=s2/nq49zwDofR4wE8VQKvAyqtutBTP/CSD4WJQQ8Lj42VAfrYC3MBUHnUrWCGytyR
	 JqpGU4c9XwfMnlGpSOb4Ulm6CrubG6C2011hQGI95v5kDimbZ2812wyfaJQkme7qkT
	 40JsefV9eELMfs0kYK1/CaWhNFXzVZd0lU7mOjG7SY63CJB+1YOIXAMPE7JrlpZAx4
	 em9hMqbhR0AkBsbczpa/qqPhn9uTtJednti8Wnwr9qC9c7fsiR5pAq9NOm4AP4aYMS
	 YG6lcIR0NXEW23cDS1J2B0+mYk61t0w9iiU1zRKK60HDgxK9xYJGMOV5DByUZTLOhq
	 yLm7i7qJ7N0OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E0ECAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175850039357.3547.16212113867662982815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cab351c7572618ac3b3c0218fbcab32a493f6aa412d193473afd005c1338c331
Date: Mon, 22 Sep 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758500393
