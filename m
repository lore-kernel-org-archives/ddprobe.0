Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3069F268690
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 00:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779410554; cv=none; b=TcSl1iEU9pRbfICxcPG5YRnAztdZN6LLYxLRGI6EGqffUaVo1a+1SniaeYEq2fCj9alDxvUNlmpHvUsv1l+okhSjQBXftGwv2dSseMSUFf2mMyOFmZF6vTaJ2o8CUCsEwshfBsPaxN4pC+j0JaFoZubRH025sywRdofEQeWpJ10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779410554; c=relaxed/simple;
	bh=48zNRElRfgKlO9qCvoTrLs6Lkn/Y3BK3IiZCaCLvMUY=;
	h=To:Subject:From:Message-Id:Date; b=bW0Yo2wctJTb5/nevCJYUy7pnLQ7/q1CRROkS8B5x5S0ev1xEEUDuQhjQQlAKnkd92ZD/upg1ytEvwfCu3SOPdyABBUsqWm7t8llFY+ZZTcr7g/lEXLzlSnRSeJzDHsgRsADRecEq66ySh/8pJCo3L7MLKbSHgEKGRS/Rg5P5RM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cBVYIFjo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cBVYIFjo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C282AC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 00:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779410553;
	bh=48zNRElRfgKlO9qCvoTrLs6Lkn/Y3BK3IiZCaCLvMUY=;
	h=To:Subject:From:Date:From;
	b=cBVYIFjoVlfcf905h0/ApRzSm6a+neG1nJTp3UHubFYJvou2l08cxELtH7vwv6zCd
	 FkEQnatcbbZBN+/NdHHj+8NaUg8YST+MnDTG3D5yWMxo9MhgsEmc4j441VCPi6acaq
	 9f45tvSn/QowqZBtHej0aqvwxfq6utSUwHuOjwIK1373CgyiEV8Stl5Q2feMI5WayH
	 +V2SpcZ8CeLmKQJyRjsCBA9Nn8GgQdJANAgfSHmRFmxjEJm2GLu0ejeXOIgN96mqkw
	 QlRUP0jg1LGso9tlXBZaeIoVLgUPVfJg5j1EnKnJPW/mwVkbqYvG4PV9EOH+AaCFRe
	 kqHsP/Wnlo6vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88B2CD5BAB
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 00:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177941055368.11308.6601848236768320189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0cdf622c059ab0be75e3c079af06bb803ffce38c6e18be5f177ecfb73e8875e
Date: Fri, 22 May 2026 00:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779410553
