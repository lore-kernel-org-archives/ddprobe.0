Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 687BC1A00E8
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 14:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718895023; cv=none; b=rAsKJym/2wDC/Xf/k1UnfIBqp1DQPTOT13v6LXXkX1ZAWtht8QnAyjqWmiEjfIrJYqK5rnaCgpnYD28Izp2vK+doBAM0ZKTREL1zwugZkM/ISlv0CIw6LC5IzLjEvyh3J7ik/ujdKI+lol2iSzp6nowD2p1f/wfInuYdf0uzMRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718895023; c=relaxed/simple;
	bh=agcDlyqWFAmL7bkPxPdS3VmGuQKZdFnHMZYsBCYI97U=;
	h=To:Subject:From:Message-Id:Date; b=UIw4QPJLLhHrUWBEw+G+BYfzJToEQw8uS/NBkAq22HqdPv7MyIGA4anRxAORRyUD58Zai1lOreUerQh6LnVBALvlMTGl1p5VP10Bsn2213/zPVI4MYGlo/YzvBocuN1dQyzO8fV3qaHXRQ2vLci2tK76Rbrl31n+XhlfidtfN74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xejxfr17; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xejxfr17"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE16AC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 14:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718895023;
	bh=agcDlyqWFAmL7bkPxPdS3VmGuQKZdFnHMZYsBCYI97U=;
	h=To:Subject:From:Date:From;
	b=Xejxfr17D0bG12HnHxj/4FSVFnR35kVAfPflgLNgQjopbHh5Hju/9PISCsjUplXC5
	 Q/+URAGnAjLdcd+EOGetsV+M1wnGkrxKxRayZLRUGvmw8e7Rs38/dO1Qf+lXQu9VeH
	 zP9JqQinKWh559g5greLR/59mgJ2dvHnlaY7EqCkSTYKJ59BEZMUqx884wrfdVWrNY
	 880DJ8YKW9FVwy6XKjMj9FKxV93cxHVm69bMfd4HbU5Et1fDOfcP4KjJTZpb1PRJ1m
	 nlcmY4FREZeU4IPJs8pgGALdwknd7uwJdv+UBbt1FlFrTJx2y4g3Zos28tfreq08lu
	 UvqfUqBIc7Lvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D19E2C2BA1A
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 14:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171889502282.26235.8791951211528445652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d5a7e271cf864a0a69c41d923e6dcc42aa247b8b8ba067f3a1ccfd4d96e3207
Date: Thu, 20 Jun 2024 14:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718895022
