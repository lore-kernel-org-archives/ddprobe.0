Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3403B374185
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 07:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776844054; cv=none; b=HjKHtz6adp+NR/PIeUh6b5beYso0cL1vkBtOT6qjAjYraK4G8DvicLEkJc8uTIlcics+mWDmTueLUYzR+eCD4rOdAcTGpSRF8xZIFvUyGyNNcM9BBQn36Pq+MHZSkRWV/87TNiS3zAaCKWxOSsC3ovHzMgssXa5YjHChyjJcbB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776844054; c=relaxed/simple;
	bh=6uWIvX0ll/t6wsgXG8XvYXOYeOJ5sIsxsdOGKzKNpI0=;
	h=To:Subject:From:Message-Id:Date; b=Maa/jdhWXuaYn6ceEgSvUuTO5ULAc481ZmKRYCiEVggHhzWz79jHSOSxl6SETsh4pbpTSm7vPiJVE0mtka77AMKxHMGJDk7Z4sSo/+/COqKJcjWIkFFloQLZ7LiP1Zm9mJi6+kooWdaGlS2p6kAF+XM/KTEq+mJ47kghaC6nW7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L+9vcG07; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L+9vcG07"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8701C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 07:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776844053;
	bh=6uWIvX0ll/t6wsgXG8XvYXOYeOJ5sIsxsdOGKzKNpI0=;
	h=To:Subject:From:Date:From;
	b=L+9vcG07r8XzXXwdXBwzzwHMtu/009QBoH83dhOcBiB4CtxuXqNwgw/oGXhkmgzqC
	 6+A9L/dfT0jIsXCqhOuZkvWsFvkaI75YDn2IYDj28M2gnMduOmk6/MLVMqjhf9uS4C
	 yTvh6oCogzU4Py2kqMeQOBUnFdS1Av3+EdJNWEEeAd7ugyR+VdzewWFKxjQGS5itvu
	 g8oizd5rMjgvJVOITuGbmSkGq4XTOAyTf9VgtAtBuKpVQSc/iQoZyd3+LMS7d0AhB/
	 /GIgVg5sqyWOl8EANy4k8Uj/C2MKtb+Srilid5gft+RLAUW5tEdHpf2/i55SVTFOLC
	 hrQZacPGoVGuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95D4F94CD8
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 07:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177684405368.21163.15718113072884917789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e97675f315f46d42acf815825296fb1d17e06ae23d64c0acba80c3ce5053e4b5
Date: Wed, 22 Apr 2026 07:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776844053
