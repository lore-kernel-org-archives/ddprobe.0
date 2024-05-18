Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68640D528
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 07:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716017543; cv=none; b=uIU1BkZ0ZqQgtr5l1j1+btwVBow7Es8zT7LpW4u0iwAEn3hg5g0RB5hmjhsf/8pGQJcvGwbKQNRtvAfDNFRabeGzkWcHdtU1O6Cw+KTkD03Uo3os66GHYxFjQwW6RThcBSn0TcmulK1NWMYLgy8BVEQOJJ2aJlKUC8HhTggw6/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716017543; c=relaxed/simple;
	bh=CbGPP9HLPImJFZFVWS98lwnLuPrwdR5mpZJoCHwrIYk=;
	h=To:Subject:From:Message-Id:Date; b=WXJslV9U4CXoadZDdV5NOQDNb05K/5x5JlfTWy1wXXuxFjHJCb2o6JSXClrnhfL+eQJxriWdEJ7XTfVOiptU/ZD16PUcR9rnoO4RxZyeqyVCrwOGRJ4rs6M30Sijrh9rQ1LKLYzNzy+i8SooilzozQAViN0LiZ6fYekMpHi1AOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dSiNWahJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dSiNWahJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6A8AC113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 07:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716017542;
	bh=CbGPP9HLPImJFZFVWS98lwnLuPrwdR5mpZJoCHwrIYk=;
	h=To:Subject:From:Date:From;
	b=dSiNWahJXsnJpJ4emDeZWCI0Xh2ljIcJ77jOyxVoNyaf0LlIv+o21+uc4NccIXwsF
	 l81+8K3jwV3sc63WfGtpruoCOpVHFb+NPdfPQ4fRjZqS5P96pXO6HYU55ASn8jO/k4
	 B3J8+WX54mRBcQMpSNHJKn0dHQwBaveEsaxaplzcDd1dTEUesvyV9gquthpSihHrq9
	 r75ynskm2NBBXRi93y+6bGP2u+j2KqIG2T5WTRXBDGYB/Kht1LvGzDzhfNYn2QSsGd
	 8HuzVvvGs19A7g/h89nxJwY7qZIcJ6A6oE1qGotT4ow7rlSJeg+Zz8iLiF8RHTeoN9
	 sOhI/CxkPjlwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCF15C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 07:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171601754280.9364.5234973653650450368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da499db0e11d4be903e2a190a5a4c36ee3ba387417605ca798277818b08f69bd
Date: Sat, 18 May 2024 07:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716017542
