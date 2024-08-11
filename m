Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F76611CAB
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723407354; cv=none; b=DTt2sWd4TP6Sk3s28+H6UnNSYhgZEyHDbcMh513aJQvnkuXR8sXT9V5ks9DP+hsM5jrSphq9sZD+u5GNOiE7ya6WeOtIPEBlGv90u++q/leF+v3qpBfL5Jnl/ocNVZ2LfaPBP6MFm7/mSCUIeeSW5I9ZKN0odvG2HRu+fbtB5IA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723407354; c=relaxed/simple;
	bh=0XFLciGXddOzGD4QzhqRsweB91/cBaNMK9RlW2OJj3k=;
	h=To:Subject:From:Message-Id:Date; b=h3q+TMOtas/SqHvyFY1vT47VD7vkX0ePpEOdLSE0u5/idIB+3uw6orD4gQSGlIDHk2+nTC4TipSFWnblLCB38dixa0PW22WU7i2uRvd2lmZ7QWB0ZRlUQWp2eJlmPTiq+EzbgpLZvgK+1jJl/6UfirhEiBPDSYeFEbIEvMGTbJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WtuOfx9p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WtuOfx9p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D6FC32786
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723407353;
	bh=0XFLciGXddOzGD4QzhqRsweB91/cBaNMK9RlW2OJj3k=;
	h=To:Subject:From:Date:From;
	b=WtuOfx9p6G4adtw8JRFmf4Vm9dE7FW7+SIPC3iFJpgcfcegTMsN6G9p/qtBUyKOKH
	 aPmdVGiE5pfKOhrspakXBdyRc4RIHNqpUkUlvVPf9Hw715rcxkvhj4DQKJG4NLfWxd
	 EKz5+8EAgRduaPbYSI2JYnXVyGp/kY+DuahNaXS8IJ5gStJLfTju07w6Ij2Oy+WFsJ
	 1hS6X6W10AdST+TWMpepVQKE3CJr0bNAp5P1PBTwmgl6f2nrRc7jIZff0Kgiyr1L7L
	 RztIqCYO6yaIOL4G8XD4+vmw5PeW5EXlODjYfArry0Pv4v24+mNrfOe/cJ6P+tiWpy
	 zhPigajH/JSBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9020AC3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172340735358.27426.17025595510484532469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48897b7c82e9f25a38886a0d1174297f449d865e0e9fc5d70450ec0b7d5f4eec
Date: Sun, 11 Aug 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723407353
