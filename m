Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B65C1BD9C9
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 15:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781193394; cv=none; b=CTA1eoSPPiUnT+UyNWXFs1gdxFcOKkjwwY2Dv8eJDkOkKuyhBSFD8s0x2HU1172f6cWVQ212j9ks7EsE60fFiByHb9YfxHHE9vw/DfE1oW5fAXc8lHIxP2nivlrpCBSes1YxGtYG0ad8WWFYqmByy37Co3tkpKR5mtKKOQKfd3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781193394; c=relaxed/simple;
	bh=pn7S4ucJhpYVX9o+pfAtBZTq+kG0BpGhvezBABflHWY=;
	h=To:Subject:From:Message-Id:Date; b=epcZZakzsWwJZR/5u9UfxeQZrEs/liSsxOXCBQkS4hgCenHTOLXW9pc3rSPfRGmg2nj0N5WRyLFNwt9CT2BO/rXZ1WoxO5lnaGeX+75rn2AuStUqStGVHgjvciXGEvcVCEZjEAZRL0XkYTynH/DsRy3lJtxhbvaO/ZHXcQaqRz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C51E82iU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C51E82iU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9671C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 15:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781193393;
	bh=pn7S4ucJhpYVX9o+pfAtBZTq+kG0BpGhvezBABflHWY=;
	h=To:Subject:From:Date:From;
	b=C51E82iUMRy2F1+rAIzFnKPuXWIGrwWAHQPpPP3ZsDgPi9Aww+6BUqhQRcYw0uiBN
	 vI3MPPjG5073Lwxc9WR+grfS1CaWU2l7Ws75s8f9SbRgt2bY4DPZVjsEVivqXOxdIT
	 WTKOZQjm6FhvkjFDyTNgnpgDpak+1Lu3Ki603+JI1hORXbHcQfee0QZ0ojahg5+A1x
	 Ube/5tvsPQoqGV1MSihzl0h3pJl7nH60Atdzb5c7x5M0iLolGw0daXks5dofmePuXx
	 tfaR/etnG7EaXUgaHjUPXiH2mAU0H2GldX1UJP0k5JEe84r/JAE9XXq+3Pu75vqLND
	 JZCRg2XN6NkDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA56CD98C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 15:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178119339369.23037.16931787932377391506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b76c416e387ab25180b386991815294f3f248d6b648bed5b5cc24cb502d19f59
Date: Thu, 11 Jun 2026 15:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781193393
