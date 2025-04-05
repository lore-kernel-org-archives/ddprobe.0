Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B38D70838
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743875394; cv=none; b=a6BIfvGseSUIFaVDjoxtFS/4ns2RAoijzFemxZLANXNH4ymwg5n/EO7LjIrVsG4y4hih8SP/G0rW5sxeemV6dHMGUCofQT168R7KnRpqo+RCQKH214+qDhwItHbIpzFNwSKHIBf/ltlShiPw97VdDwJP7HyB04Qez9do2kvB7GE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743875394; c=relaxed/simple;
	bh=N0++EHLG8b9N6uOueTGZDZ06HAr874JlSuXeojhcvKk=;
	h=To:Subject:From:Message-Id:Date; b=OIzYdoz8EG3tz11pGoNQaXjoLeYnEBRx34+K8ows5+n5gHsO65Gy7QDEnE68U5qYECQiZ0LymaWgKfVUfkYaNc5cWBGdSxzmV3dewgiz84UEevtEn8op1XdclZmcCVIKnJHB3tJeXeBCNjnvxkhISlFpuK+V+RxdstAltw+tJgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IC8vPdKO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IC8vPdKO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE533C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743875393;
	bh=N0++EHLG8b9N6uOueTGZDZ06HAr874JlSuXeojhcvKk=;
	h=To:Subject:From:Date:From;
	b=IC8vPdKOkyw4zY4wds1/kTaxvFwSNUPita8XOUM504zqDNIz/yGpUiz2VT+Xxvu2O
	 8eSmLQR9Ae4eKMZf20pQlMshrwAKTggdAV4vUhLLsAFTzh84WX85hgQEjKNb5sy4QX
	 Um9aaaTFXHRuIL7La1eiUpA8NdNJs6O+foazhutBeeOYn1KOCDNBLrDvnR55S7t+kD
	 FSplSVnF04tm1Y+Xe6gUgIaAmR/Oq96XjoGVkUB+FCPi5ZzjirC1OsnEojXhn4Zzia
	 UCcaehRSg3PxZeyDgcZMTXfQWtDjDo7h3xumDY8+Ofj3zRGPsz3wrL+RqpGaNdDQun
	 NNkQDcknvKGWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B07C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174387539358.20742.3789531987679841713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1dc3fabee22f35ff4d2098ee6c4647fe458376d03ce4543b9bfa257997bb5ca
Date: Sat, 05 Apr 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743875393
