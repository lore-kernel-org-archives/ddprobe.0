Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102C74DDB43
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 15:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789657836; cv=none; b=nGgbUQqy54BofFOLcJwcPz/j9/6SuEchJgZTUpYkFNdUKPHext1qCOGBgSWfD3znzQd4l3zYjYyHfc4sPRVf/4YE6Qy5Kr8BiEEcAJ6vcFYrMEme4PVooIVqj0HuvC9GDY7P0HtYUH1kX7Q4DMpltWbirp4X35M6vLh3qIbA+fA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789657836; c=relaxed/simple;
	bh=/8rYi+pQr2HCFeyZBu6r3ndRUzty2MVLdQzovyqGXsw=;
	h=To:Subject:From:Message-Id:Date; b=PJIoEhMahre7mRiuwfuHar3wy8Pk9uKFB/+YSBLZDVJmLZiR65Ihas4guNg6wKIS3CsVH3M6wFFu7m3s9+pytD3IJwN7TTbCJ9rDtk8Vdl1Y2TRwZ+MG40dQ02IJiiYbBHoFsVT4qng2CKxHxiVRWi3PtdJbXwpz3BLzkRIVvpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWlTLjM5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWlTLjM5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D84D7C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789657833;
	bh=/8rYi+pQr2HCFeyZBu6r3ndRUzty2MVLdQzovyqGXsw=;
	h=To:Subject:From:Date:From;
	b=fWlTLjM5Kfu/2P3ZvTdjej0oCVRkVTpTpWxO2jWyza1k8tpIku6YbHg7q+T273dFC
	 VEeck2oj9F9Wlr9ManehxOzFpfLY2xzZtZCFRsXJZ2MJg3JaLRLrEDHeTv3dpS4bfE
	 /Png7Kci0SZgynOSmRfpFGijm8iKR9CXrmvBhfDDakuiOdG2ONMvEhu8V1rpJCbgqa
	 KX9tkcUu15i6Hy4Wd7mT83LOT+lhXnpZb/urI4VVaRk1kYU0VBjD3rJiUptgFcn1GG
	 cupkaJBcBaJvY+IT2XQVPCFPpjgM2MTGOZwPuxrxpUxTvhRTQAzNlF9t5QtI9f7J3E
	 IOIRrHAEHAI5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B30A8C88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178965783372.8135.6999446115549250773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b59a31a80738dfc485fd8752b9427aadf6b33d9ba2c45f3be2c35ae5f32a5e2
Date: Thu, 17 Sep 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789657833
