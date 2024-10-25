Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EF9F20651D
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729860954; cv=none; b=om7RZ+LRSceV8f9HtXoYhodey9w+zZLvxYL1/lViWlzOFPtNP66/Msnipu5u3hpbZMmPGr4TkcylXW35RrzNR3kMl/f9SJxTIu96IzBq5UQ99yXQTG+UW9B5M12ajl2SKAz7wmk7LZp7jqFvHGlrEDyLPmcbydETGKda+odwcRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729860954; c=relaxed/simple;
	bh=8YgYKoyuO3eiJeW4BgtNbWV4RjVjRnPlWDX1EiJ+Ahc=;
	h=To:Subject:From:Message-Id:Date; b=fIu2Y33Vjg2q6PXq7oFkphNZ66zUcCEw2LLG/mIQmO0CH/4pGcN09JUrChfLu0WsICsRmCGUuAvbja5QIKiRRo+/Otc9SpCaF2YTewyy8Tastw20te2trq37WJAy7ptwviE3idGzGDj39KWv0jw753ULHvjVB7EIqGrC11OOcGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KSMdbXpf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KSMdbXpf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDDD7C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729860953;
	bh=8YgYKoyuO3eiJeW4BgtNbWV4RjVjRnPlWDX1EiJ+Ahc=;
	h=To:Subject:From:Date:From;
	b=KSMdbXpflZeo1hNKOYtjRbEcdkQ2KSuw0b7hre65vpRVSfNTRG9U2HQfp4igaHBm/
	 0S4IVHSa2WbmGIc1npXNnC8aTW5LDGsllSlRGQLRCCVL41jN0Z5aSWWYu3NjAYqpkP
	 QRfRSqvkZ7QmR4XrMTvOH7QZYktzwmBvSVzGa6RlB6KG9ge6tVYQOG9e5EpCJq2wCR
	 uq6/7f/D9+9/lKLio2KDrSRLPmaccng0C91WIdPYk31ytyiot8bSks2bgazZBQhtmu
	 05hbZGVWDXWWI3bhqCS0IRBKnug0KkyLBqpnx/P96sTDElDKTr6Gtmwx/k3VDvEBpy
	 3vrBgu3UIw8fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1359D0C608
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172986095364.29083.15011942600183463530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed65551ca104c1291c18cf98531d9db01566a22dadd97fdcd45acc91c5def2f2
Date: Fri, 25 Oct 2024 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729860953
