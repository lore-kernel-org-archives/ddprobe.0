Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 545994B1E5E
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747470594; cv=none; b=gz7t7ufwmZPCESXhL8PKkO2ni7l+7cL0bEl7kN3/bmOJHamhjTOVIGR/G/1XHVoLiSctKiC8kkuIqevTcHFnukXY6nhZq3wZ4c7J4OAXqVOMIELLQs0yVSN6rxKsnJ2+r40UIT89ZzPTUNSfVS3SM7mnBkykAiGC5WxnderNKKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747470594; c=relaxed/simple;
	bh=xgg590mylVGMTEsRPOrYQHfFXKLdH2qzGLUBrMndDd0=;
	h=To:Subject:From:Message-Id:Date; b=KsfmllMC6j8H2ZmY3lhX2BR1AhFYWTfyWfTC8kBQcMw85EgR1MWmRcvPo8CArW745JNsh39eydmYAb822S2OtPinNSdMy1Ac8jg90D7apUTD4RkIgsnRrZcGnnOKHaIon3rjoJEhQ+Dsy3k3JTWC1fIbkYdrMz1wMUWkp+RPUH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UhijXqhc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UhijXqhc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA07EC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747470593;
	bh=xgg590mylVGMTEsRPOrYQHfFXKLdH2qzGLUBrMndDd0=;
	h=To:Subject:From:Date:From;
	b=UhijXqhcw4LvGJLdYrUGbtqZ4TtaBRZkgrbJGO15eBh7BRi27hLKaUau9oBoDuu2n
	 uzU7h9NEFmYlLKcDFLQXDsgFoYh6rzLPQcb1QxdCfn6XvUWuPErqqL/SqdY2vjwVxZ
	 LcKTg/D5IL764FezYbdAxCSk8ij/53Gn8NHkH0InQ0tD296oNmQzjWqHspWwzumjz4
	 qspr+kOaKfzq6b467mytv6Mo5jG52kDQn/GGZMRxF5LImFhsAnAeVsdDUSf/jg3Pta
	 0TBS4+hPQl4a0EQRWpbcMcvOc9TLaLodEM1ksNjdx2qTDjq42XaHwoxfo+ZN4FDE9n
	 h5Sm0a4B/NJRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965FBC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174747059358.23578.7620689363905765706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e2811df4392185679e3053ed89f7c414e1b83adcdefe64a82b9f90ed550d9fd
Date: Sat, 17 May 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747470593
