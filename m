Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 647E912FF69
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785882634; cv=none; b=pDPCvtrj1dvqbsFgF3y9i+k48f8stMT7Cn/aaZP3T0woeoXgwvF9KQ6yGafFDYfj2Wac8WKSvk6hb4EaCWIpeRB5ZUUV3bW5Lh7+VPvWULXZM7A3RuogY5VezVRfmYF9STdq9O+iO9O3CkQjX9d3BIcHjVmbUBLPzupjfoIBp58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785882634; c=relaxed/simple;
	bh=mkQGKlZzCwBl66cy6DsLwxgnZKknOzhbrTJGNCyhiww=;
	h=To:Subject:From:Message-Id:Date; b=sfBefGPMxHKtuZ5RlRp3Ms4jQNnwZzh1re/1sD125pGilS2YktcqXwLM9JNUGZ1YL9Hz5q/JRF3ju4GAUFWQ1RnniqPw03tkHmtMpbYF6dtvQtPOWPwJgTRq/c1zbGIbp6kDpCzAOC8r5MGFM8kITZfO3x4TuRFq6fxUInnJzGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UrNTFUKx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UrNTFUKx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8365C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785882633;
	bh=mkQGKlZzCwBl66cy6DsLwxgnZKknOzhbrTJGNCyhiww=;
	h=To:Subject:From:Date:From;
	b=UrNTFUKxV+/kN04wiomXXyrTeZiUOBWxh6YwYN1Bjr2NoULDcsJ5AjUueToEMT/pW
	 sl40M3SBG2ADbMoGGT0oCAJ2oe0DomnaYHb7NwDISz7QI7IBOfzKM+1N6BAh75mJft
	 zgTJwnL9GafZ9l+0qbw9/0Le988PJysQxpauXPxCLOY1+2nvefBv7Ni9ilxtw7h+BL
	 D9W5AhNjc1gDtJdgPh0+AVu8AGhJVHSEqdSge9OGdvV6i+aPI2BEuuMEEPY5BLt/p2
	 cyjtgIsTfOEpSoJWDtfAKAkAzqSs+SsWk2U1EA9c3e4RIiyUCw7BZCz/BrQTaX3CHm
	 YiXpa23VyHxTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC588C55ABA
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178588263369.15898.4245111008062298500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7abfc206387b27c188b3191b1e771ae1dc61e24806f561451ef2adf6fac45901
Date: Tue, 04 Aug 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785882633
