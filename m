Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448AF36403A
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790394634; cv=none; b=lFbUXQKv2wDT0PnWdgFPo8jNLHEf4/Athe1HSQsAcOhwUvWBfm6sijzHENOU4jSUcGoWlVK/qaT3HqCUDW7o+XTSKU/3Qd2XynNllFyF6Xc51fG9odFvjJ8MbomPyk1mHh4TutV7f5hyZpSq3ozqyDhBOdbA3P4jRGwdDunN7GI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790394634; c=relaxed/simple;
	bh=dtRxKXsEtIekUv/Pozvq+aZIGJSvZvyNmu64PoZOPp8=;
	h=To:Subject:From:Message-Id:Date; b=LC2m2KG7Ek32Y7gO0qY4F+w2Ai6I61SIjBBIWwD3kcIpvmRvCKYAyHJ4ot3VcROUkvJexb8/FOS62pOONk5O6DQuOYrvt0OX+MjV70YeHBGbMq1qPJMGpVN5xFL5/K5TVgTiTZ/jl55YrMYnGacH/ZbXOYqplqZ3ntAW8Ih/VXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fEZflEsK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fEZflEsK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC73CC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790394633;
	bh=dtRxKXsEtIekUv/Pozvq+aZIGJSvZvyNmu64PoZOPp8=;
	h=To:Subject:From:Date:From;
	b=fEZflEsKFseot6rwBJAtbHxMQAsDal0/Kur54h1G037nO/vJ+DXqPpj5SGydeNRGw
	 5M8lhpG8A0t8bbHDCtU5CYmBj3e6MW+bK9gteyWtU+6fINDhzFjBEambMPwxY3C2yT
	 ve+K1ptcien7w7t9Z3/uwND61jsOWVCbs6fC4yDAWH1Ulquy3iauQsTL/ScM9v3CKc
	 94DQB6+x1MqDN+3LuDqWaoRmfFIDc0OTnkq8D9ZNiyGVpW/d5bqIXO592/J49fz2cQ
	 pkrTzQFvzB436CtE7/JDmsiO2meXS9OKRkKoMItXt5S/CDzw0cSHfEkbNvEv0vHSQQ
	 f7aMHKPuQ5h1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DA6C9831E
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179039463368.3045.3312118470671977457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3450d9f68702ea1a40f44dc28097bc583a8fcc5496ed661a08f130f16f39ede4
Date: Sat, 26 Sep 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790394633
