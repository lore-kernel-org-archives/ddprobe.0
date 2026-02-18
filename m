Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05D1D33AD90
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771457094; cv=none; b=bduUNEt3lHiECjEunWZWpsTkMW9Yu04EruQFQfNUd5iDz0D/l5MQZL74uQX0axsrA6f6EimEFW/fwq/gi1/NJdgIs9W3bUonAfZh1oyjGAartOFXqGpaJ5k0ZuIAvBFhyVKsAppeOq41GOYJP2s2NyOWL5PK27jJK9WG5Km3xkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771457094; c=relaxed/simple;
	bh=Uln3kVnwZfx/2yAhLaUr0CNDdTcx1sui3/qiFBuuHvI=;
	h=To:Subject:From:Message-Id:Date; b=ZbwpkAT7SnhgemDFw0gfRfw9n0U3uIfGK8ecp4URChA8ufu0RGpG3ZXdtVWoO+Dj74kdRU3WLC51DyNM9mPSceG4tg3EfJ6mBIxP2M/0sXQFh2bz6XOrxhWuHNCXzvkGpPM6iJghq+3p6ePvl8aTc1GySbrZqEtZJyGUIv+rReg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOQbSIxU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOQbSIxU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A768DC116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771457093;
	bh=Uln3kVnwZfx/2yAhLaUr0CNDdTcx1sui3/qiFBuuHvI=;
	h=To:Subject:From:Date:From;
	b=kOQbSIxUbWpEyVKZMVOY8k+A3T1wUtcBrUAnQi5tlKSvV/upl8OKsGnZdXVCWtkPp
	 yzeKafM5wdgtQL0eePePtF50OczjBBAR5Kt7zICIyYTCv/1Rf8D6p/JEkEyjYgRHqj
	 EZfvdoUiPnDJMwqg2S5aNTRuqKQkBOAkeQjD0iBIgHs51NAHcd9cHuvuuCBIzq5xxg
	 Dcfebz47che9i9lzaXe6RNtkghe0Sk2yLNfigw0/jsKyQqlhM5dFCOZ8zMwJkvCctF
	 Aisa4idvkYAlx41A80aFECpsNK+Q++2S5kITSwFYvlYHPGDF+lTtqVAVkf14bLOjkZ
	 hvY+R6hMuhExQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C52E9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177145709360.18582.5134062313852863982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 611493231fc4d76251d0fcf3c572f481272a15b5a8c9f8ed26f773f57395371f
Date: Wed, 18 Feb 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771457093
