Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20784189917
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724798154; cv=none; b=RpdgNAQS/qaAWX9jTQc3ndoB6Aqtjej6rL/3dArIM7yGzdcvMmvB8aU09LHX4D/h8XZ9vFuB+57u0gs+UaJ4xrAYKfOaUaviICJ1xHCzzVZsoA1M8QA6IO2kkumDmm/YYbOr34tmxWSmFaXkQSnbUsSky9NrH9DfCPBIgDOYIXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724798154; c=relaxed/simple;
	bh=GYdJ8CRsNgF9PLy9IK/l5SWpv3I03p7EISh5tgYYQgg=;
	h=To:Subject:From:Message-Id:Date; b=X6HBabmKBR2FwnWi7nDBNCQfIX9+Pxy+0Lww0kb5pHU1yBlmJC2GKTCBs3h6K1VUQLCW5fms0kFgSKnHKSVV6NX7AixyccqcKsLqQEJf9NmOOzeqAXIuoj+e33kBTpLX67ik2AMrYRlVg2XVFFYNL1qrNw+kC9fjnXn6R9zMToA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uS+BwzYE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uS+BwzYE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC5E1C32782
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724798153;
	bh=GYdJ8CRsNgF9PLy9IK/l5SWpv3I03p7EISh5tgYYQgg=;
	h=To:Subject:From:Date:From;
	b=uS+BwzYEFzdmfNPiZiOVo7lFLWAYBbvklVjt0zAOiiH0Ub/CR9dJZwRCYz19XevoK
	 nUCTS+j44axoOxPRtmPD3PnEou1a2v2GIuVp8wQcQin4APo5sQb9QhDYp/LD80sVrR
	 Y9eV8L4odMDxzRL/StQURmbho0ZAVoTAFsY64vUpsDRbMndc9QR7WuJnEucEIiEDTW
	 CWhU1Vv7bHOFxEWi148ruIPVYOXsg0nAHsJ+skzuB0G6bk2pVnXoFakmD6UTRewYwT
	 5L99ju8MmV6bD58tOkFzn4L6pc1wpE9JscbMUf/SDEkXC0kb5HaYbGDI+Kjp4J+P2C
	 /H62OeqmC6FNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A44DAC5473A
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172479815366.10858.13693376871518520282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74afd45fc10a8bee1e8a5b50e7bfee5c8d702bc10e14dc4d01c1a6a65e5904c5
Date: Tue, 27 Aug 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724798153
