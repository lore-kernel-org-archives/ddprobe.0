Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DF11DE2D5
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743149994; cv=none; b=KgZrw4UlLTisCJv26NA8WW5Z28D/sd4lBRhOYDxrAWzbnw/v2F2GANk2o81bq9WRAfpWxHHb4XUB96D9S8ZglXoCatcHiQxs61WO6PrCKcS25H48rIYdb5u1FuS/qwexmHJCfNAP0rHX7qwF8LwAd4gpR6j8KyR6HFrouR7KhVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743149994; c=relaxed/simple;
	bh=esn/f/Djm1vozt2iQjRWekhpD03CadxsvYttYDbU34c=;
	h=To:Subject:From:Message-Id:Date; b=DyyFkc1LaoBGPA6a6gNPWDV4yO8kpuffg5nXGS/UAns8KwJsbJzxjxnuQjKsGUYYChGviR6gi42rNDyoC0GjQdhZDURygFe+8mcg8TrOopEyiqPa7NXZxp7ZSivjOC4Kn+n6Q2B220jqwBd2XI62Ik/06aJZLgtgsCeTMcHdQ9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pd5M1wUA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pd5M1wUA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DD0C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743149993;
	bh=esn/f/Djm1vozt2iQjRWekhpD03CadxsvYttYDbU34c=;
	h=To:Subject:From:Date:From;
	b=Pd5M1wUAabSNfNvvZ3BGsh6iN1wOGqTwbr2Jbv/5WFMNEhP9Y5+UotsYFxepKqdJZ
	 wiV73qfUMDWtyUcxtAINkWpqi1n5LLvYvC6dlhra4VOMAC3f6xVXcpK5o1Ra/Id0SN
	 79LUGLTN79YXQhCVGEPKQU1yzc6FT9gQ5lUlhp1VsdpMXpauD5iPiX+Bw4JtW/sbZO
	 oHUffW3exAOf6QCUYahNdwdkwlUerLywk56BBKcMk9HwuTUKLspsKhnNgySNw1ojms
	 n97lrstMbM2oniBtXps1CfErFgKlYFu9kCLiBZy/Njrg8JyO2Qjs5HBHSzim84jfP9
	 ufi40z2aEONew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B9FC36010
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174314999358.1603.3213352076771092351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15e958553429de045d3a57e066c5311598d378428d70cf1b05f338982534f1f8
Date: Fri, 28 Mar 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743149993
