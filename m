Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6892BDC32
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 17:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779385954; cv=none; b=eIFhcNX74/IYeoqVjdL3ZYvr/Pod/dQmUNNYqh0CK+cAB6U/lSpy7RSGJ95I9ZTL1ZTaKHvrXV3BMxv9dEbO3mxb4GJaDff4ZTIBnE7l6Sku+R9elb6qM8aeSNE7ZNuXJlb9jZP8tjXn84aDLAx4PCjeFUa/d/qTCUJd8vW9GUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779385954; c=relaxed/simple;
	bh=pzbxuUW1OLdCM1fox1HdTbivdENcfJ/IqzuoD1Mg6TA=;
	h=To:Subject:From:Message-Id:Date; b=CUkMCNJgs8CMWO+pyK4UoHuedikC1i+ba8Q7/RLnu7cbArO014sbVfD7cfqNiJoWDWllVfe8nqMNuSW/y5ecrkRgAcXaBKd24M+gIsI4PM+kuZm4tAd3My+kgvdwLutFflqsjFuYoEpHprfAD5hAPREU64svaXWtfgSX4IxE4a4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SclQ3uOM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SclQ3uOM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3C8AC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 17:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779385953;
	bh=pzbxuUW1OLdCM1fox1HdTbivdENcfJ/IqzuoD1Mg6TA=;
	h=To:Subject:From:Date:From;
	b=SclQ3uOMiBgQilJDmz+WraDcNuAGk/Yni2WyhRKOykeiIwt8Bz+DvQ9RAqKg5o2xp
	 oOkUYayoh+rVmgEfGfr0naa2ceTsRIfUTZUHPtxze60k3bCLHuZk0MyGHd3hBY5Tu+
	 cDKh5SZLKH3pkO7iQIY0TZ0RxTX2I8eAzau2exQex/fOZlmcWh52wpvlQJBUyP3spM
	 4ALa7dfy0kSbdim0WeeiyPzf8PkA41v6uYF0DIkMouEPsCgz1iagoZM5d7XH0s/qh2
	 WLnQAo/UlRKt39weekwWy+1Oa41WVXVNd9oJROIXw+Fsdt5Q6k4CP+KP5q9x8odHCi
	 m+xf0pCNJeh0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2A4CD5BAF
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 17:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177938595368.31604.2655506411510414886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 459395fb4ef7c2f0b8d5994ed56cfe2f9eec51ba7582b11924c700678b4ea189
Date: Thu, 21 May 2026 17:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779385953
