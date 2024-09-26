Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E68E18C015
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727333754; cv=none; b=RWLZO0ZJ8IwXEiDznaqabBbm1pDp7GyfeEFd6epRtWOniEqTrkp3aQlX7whsNOmMosdGQc7MaXF9QNFfVnPVvhZD5vPe5T6KSOsj8ndSYaemuSKDRxJTjWbiPbtTyRTV3z14F2q3v0pzKZiCFm5oBfMClJNKJBGzxBVlAkqldW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727333754; c=relaxed/simple;
	bh=Pc9nNJDr+XRh1POuxGyVwSBNlOcS8QiLjCM2cYVfCKg=;
	h=To:Subject:From:Message-Id:Date; b=Ff8rSyQ9DcDpdFLDeGzwhthF2Vh7V4t3KKdst2HIHV6Wt3j1Qo85F9pei2V39HTDAuyvme1WurlyhTeh8JemuVwOCKeSDmSiLtdRcc4HlRWWWJCSHqU1xN82wQFN690NEZPcRNUyVN3DhLaeo1vKhnmdMJ4UW0U5pHvupJLe4R0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jaKtsTIm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jaKtsTIm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA536C4CEC9
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727333753;
	bh=Pc9nNJDr+XRh1POuxGyVwSBNlOcS8QiLjCM2cYVfCKg=;
	h=To:Subject:From:Date:From;
	b=jaKtsTImieQ+1Sh8RZyHy6W83EeXFccVJK6fTM+lU4zZCLH2Rx9T8HmKwCSfPlx+s
	 ORz4AWq4joMGxyaiWhPrwHaDMYO5j8rreW2QuvQO8pr/9hxximKDBF1sriA/e4JsGU
	 4raw/oSV+2Bh98FKhIRQGpqBIp1EiiTWevpw1HFCGcJr43AAvsKsAbCMYEdUq8ymbZ
	 hk6Ji8KSNZE7sa9pBf4YvKdt2MFR9fVPz+v0j6Pi07cZ2bOLNoVK1EBWr6I7R0RUb2
	 3oLMZJXavYhXPKJ2gOWDqlHuA4751iY92NWC8mKrCtxGMxzm+YaIf8EhE19mkrKo89
	 ONc6MnwcEMMqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A102CCFA07
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172733375362.11524.17936815354550659271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b58150986a08b80b1da49e59e4fb435523b2117315368c6888cced680748eb3d
Date: Thu, 26 Sep 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727333753
