Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8C817A305
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748585994; cv=none; b=YbUtqhsrWa0fSNBNkMrTxj9r6y7VKRFwhg+67a3uyvVYotXWsvRFQL1t/VOLNQo0K48Lb6jrbiCbAtAmX79yw4JaZiJPLkUS9DLo4UaMuo7gcwchwDt0iw5ud5NC4SwkmQ4+NvJ4EXSkffcfQm5KQDaMN8C3lhHyTDEp909hL0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748585994; c=relaxed/simple;
	bh=seYMWo9Xu/iZgSAc4CuxKy07/q/OeUVSP5wpOFxwK/E=;
	h=To:Subject:From:Message-Id:Date; b=oM9DLMgVdb458EqQwslm+bWYs5qWmA1yUDj3PzjXc27C0gNHhfEeqHsOdJeVEglWJWLRWoh4DTapywHgal0vQARmUq+luZJfCSQwFHTWh3+30S4dX3fF98j095fjSEen3AuRv9/JZ8a8/nyqECrNT/cfaW4rfWQi7/Spkrv/eA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EbkKr+zb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EbkKr+zb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3956C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748585993;
	bh=seYMWo9Xu/iZgSAc4CuxKy07/q/OeUVSP5wpOFxwK/E=;
	h=To:Subject:From:Date:From;
	b=EbkKr+zb3x5sk4/ixtWuRZcvWrrnz3tiFx8C9OWLG0IpnsSa+829kqrG/RK+0gFja
	 BQfhmwlbd+X6Us2EC1xdLOpQ8Qx1QOPIHuezea3xhSPlNOwdcYDadeM1OBgEkUB18M
	 ejS8a8hVVm0zSzWZRn2wLKlMBh8Jr8jj0i6BsDYFpA5M93yJb57tZMqYdGaRTwzqLr
	 Qyd7H3LgI19HTPysTbvm05hH8NBC34u5yw45IZL491sShvx+/qLdMrFFwMySceSoz2
	 kiybxFiWdgeHJQB7+Yus2VEO+hB2WgSFrHqAzQjMtA5Db60gl3olZI5mvTjJBOejNv
	 YbuPVA88Eskhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90678C54F30
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174858599358.32149.6684868678550342103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ecee18a042ca975279ad606b920f22738312ea2bc5f54189ed1ba8550ef1526
Date: Fri, 30 May 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748585993
