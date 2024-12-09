Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DE11EB2E
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733745955; cv=none; b=ehII8W3077cDgRV7IcJkwSQgUb+0jutWpUfHBdPwACBZIENC+4NWf08jZdn1wnXjiBi1itPNltgRUsslP0qw2NnBIwLvTMfc86h5g+XLSqyqjZkNuwupeK+rEHhlxLTEfMCFBXOjnWiASnk9+IoY23y19vnyBWnuBXbCemaLvGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733745955; c=relaxed/simple;
	bh=cZMqo/wGSEuvFRumF7v4BG9FP8yirlpghO4eqIj/VhA=;
	h=To:Subject:From:Message-Id:Date; b=MbtEg6n0sDuIj3RUXO4W+P/kXZcWcZAMZUN6nj1068xKcAszaPRdZ+XqKjK+eNG+kPbsNrn+SRkotIIkiFTMlhyO0oObBa0yY2yYe+lVNU6oSGgEoJ9NrVJoQ3wKWnAlXosDNY21JADpZo72Utut+HlWjaYg2N1xKWhSVBK0TRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ezpPcIxn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ezpPcIxn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B14C1C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733745953;
	bh=cZMqo/wGSEuvFRumF7v4BG9FP8yirlpghO4eqIj/VhA=;
	h=To:Subject:From:Date:From;
	b=ezpPcIxn/VVVkFaBhrwc16kh0uUiMkuwiOpoUmaHMKPRdjNLwXLxfnKyGVaWxPskK
	 8fYrrKobEMObdWzvMZB9y6OTHS8ETu9Z346ySJk1tQhKZQAheouxhuJykCDfuDjSdl
	 cqyB/LvT2vWXyxOCG2J327qcvCQeBLXXJIer+UHKVWsTkbr4NQ0H0PXz8waxiiaO68
	 ELAEFxzUygg8PAoGK5ymrTKBxWGWB68YiP/GGJJaUA68k3GMGHyOESWI1syhnKfz7e
	 vgFtZHsmoy0U94ctHPRTNerrx2pkDkdPHIlae34dKk3hKnjomm8/j8HrAUDR9OvNS4
	 z4au/lK9jQ0bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FAC2E7717D
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173374595364.25140.1358521674343855800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e228f4b585dd0cb100526b77e0831cba572c0fc67727a8452c00e1e6c551076
Date: Mon, 09 Dec 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733745953
