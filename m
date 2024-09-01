Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42233EEC6
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725187554; cv=none; b=VzTkdcjlBboUiQJn4BnU7mIPMWR6ZDEqJ8JiyBDsRMyYG4upDoHoUC5Fr0vJyOZRUCRexdW15DmfBF6X2D4NZu0C58/4/Fa/ypfpFppLqBy+kWhA0eBCI8kraNXGMGgeRrtGfPyAJc1vAt+6kTLzAUR2yDuuLTfwapa2mGiwfZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725187554; c=relaxed/simple;
	bh=rjm77WFirHad84s45/rGfjqER0etDOP+JWbskbqd12g=;
	h=To:Subject:From:Message-Id:Date; b=CVAn/YjXg74URAxsKPKlXxL/rBiOcMVJc7detGbIACE3kUYPVZfC8OyV4zPI59x39yqCyrEYarlpgFUnsBlUtEjTrq9M321SOCMXy/V7e9GbEDkESvMS/YpyCd7ac/GJguvuiGksdNleX3A/vBLjHFqbHo1V7OG5XJCOYqUU354=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePXr4kS6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePXr4kS6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D84C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725187553;
	bh=rjm77WFirHad84s45/rGfjqER0etDOP+JWbskbqd12g=;
	h=To:Subject:From:Date:From;
	b=ePXr4kS6IRPGN6N/LQSYsRPUC3f8dPZqAGSViI6gCgftEdXhK8aVrpoj0r7IKaNFL
	 sQNxwgTo9Ivjj8ytaavQUJ3a2IdDFn2hjo1njj+q02Swo6ZRKR/YGNauYV0mLSxmD7
	 9T2bmZOY07oATXDPEApirhfx0by2irEskEJNXVR8egt+2zLSNam8TX+cr47xWofe1O
	 yYgpTaubZqHE6OfD7mZ3wObhVbOOyznoAZln533kwaaKzxK0vGp6ipR+EWYH1clNz2
	 2fgtOPDKclDDGWfFPDLGqMaCDjo9BTV5Jvm0ay4Y7gVrdX2Qa6YMXzZy7yJwdCQQ/l
	 5tFioRuRjcbAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B336CC54FC6
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172518755368.30538.5317782956600234585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e571bd66660d965365f0a0613a8339dab7d84f4138a2614f4b18261a1100e48c
Date: Sun, 01 Sep 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725187553
