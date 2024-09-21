Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B68FF9F8
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726925154; cv=none; b=U6W0tppjAx1t5uY3wKWHUKsaJ6ER7vV7aui6Gmxzyj71sFhOw+hDM2gdLfczqcQlTzVMddckcWT605l9H82I+xvBfJzhYf7QBr2F+FqyGTkoNNC2cXA6HRcIhyqLB9bOuru2L6pH11cIIOn6608W7WwyHdn1QW8tpPLQ3BynIrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726925154; c=relaxed/simple;
	bh=wCd70hHp/3oNMUHxHb+SXh/V8ykIl/JS/nR1rdAfErI=;
	h=To:Subject:From:Message-Id:Date; b=d6ftZW1j45mpFv5eF7D9sIBZWAK1kycQbAo76AUWSOBAs25wrEiVa/YE7fpq9JX8lJoNmT/cXtMZyhPwRmFC5OF8+KcAbdkdIVJT3BgDNkyqUM7bDIOS1DNHwM1N963JrS3e6oXQZhrhKIysq24SuicFJz8i+eKald1LOuI8qGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGgaTVc1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGgaTVc1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDBCC4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726925153;
	bh=wCd70hHp/3oNMUHxHb+SXh/V8ykIl/JS/nR1rdAfErI=;
	h=To:Subject:From:Date:From;
	b=NGgaTVc1LhtwfsZxoGQLkGwGKvT73yUsOwLI9OdaCI+Bhb1TVgj3Gn/fyZ4QQJx5p
	 SoKjiCvi8/6rYBZzOjCG9MTlzqyNMJGYxBTv7/y8Hr6hZBU9SVtE9pRwvOqdLMV+GG
	 GMYd6mI7ZLAbBp7CGgKkEqcvzUgkDthKCNmrxMFtKvDOOiO4MB7OZL2sB83BCMgF+t
	 xgJLWM6DrWnkph9IpDnx5M/iGmnivbOpFl4iGfx3lCJyHwgtYcKkGS2h+chdbiyxoX
	 T0sAV8GxAS3lLPY3Dm3OpkueJdjc2z52DykMrzbrn9Bf93c/Fth/tWfrEn/ip1LT7P
	 sxeneGZvy69BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A3D9CF9C69
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172692515362.10494.9467163572714244489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fe0a4dce8ba0a97c98563107afa45863d921bee56514730e06cb1ef8c2dd372
Date: Sat, 21 Sep 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726925153
