Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A777D32B12F
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 08:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781945194; cv=none; b=k2P1FK/s9njRVadTcprQVGnsVapEotAbsnKVZdId2YtopOgnEb/kAH1NwcTAunYu3PV7moLDCnAdXh9Z1ZoiWeOH3lHZgzM7OMrVplfh/8SgCM0seoGSQAm8VT9ddaHe0/dW0mNPxTQSNlrSXGiKhH90g1Nf53Vtmr578/4i84o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781945194; c=relaxed/simple;
	bh=2ZF4imE1qfwoHdhiyyir2YNRwQXAgXes3UUhCLF+dsY=;
	h=To:Subject:From:Message-Id:Date; b=nImvOY1kaOx8C6FnWEn/IAOEq8VbMRnc2sC8/j4U34btyDmHz+gw6WZxJzOvTrioWQwZARiO3Sh9x/+HgFvQRvMjBPlwKrOYCyf/1z9NJEJH7KA/U4F6XCJfj8XjShE0aF5cvxpdr8twtjg1HonmV9Wtxc8GCSg8g6zg5OSkQho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/fhQLvO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/fhQLvO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3F3B7C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 08:46:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781945194;
	bh=2ZF4imE1qfwoHdhiyyir2YNRwQXAgXes3UUhCLF+dsY=;
	h=To:Subject:From:Date:From;
	b=g/fhQLvON/ei5vC+wiKDy0f9TeNYS/f7lAKZuw95MfXsqfaLuCQQNuoGOzfPLAgZa
	 0tjBZF0/clsKP7dj63KzCcn66cXZkXYpc/Unw3xBsoyrMDZmN2rkqOPZCRi0yc7YvX
	 qSL9GJ3eAk//iyzMo82yQJ/C+HqHslHT7Q8PJ3HUASstNeUtZr1uEl6hTI0GnAvNK3
	 OELAfF3Ytke2Qhf8eATYGK89DDiLuNFQ5SdLAkPngyh1NU6trpAZEAa+p9MVRxn9U1
	 oKJEnb+pNKXB/6mY8yhNYs8pclqJ3+lfMcVbgePDSZ0pdqXLapIu/LC5wxehoGgiND
	 Q1aeQKodlc1ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0D9ACD98E4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 08:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178194519380.30000.15475445117762433992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2258de72aecc8360a395ab0dbae1124423d8070d240440c6f59b6d0e5ed6ce9c
Date: Sat, 20 Jun 2026 08:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781945193
