Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35146372EE2
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 21:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779311434; cv=none; b=qlnhptaAu8mJK/tzJ8Z7oleQsneURsl73uPxksG3WgAufSe9+SurA0jUC1fx+jweBTArtFCZHtv5jrC2MWZWHfDMIZBaPNQy8sRkHqreGDPQzFkOj2fOqJGojUb1x9+GpRn73SIMq7g0yd3e9Cas3gDW1bBnNQgstpgBenkvLp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779311434; c=relaxed/simple;
	bh=k0ligcZXd5e82vFFbbLUTL92FoE2SPY5gJgj4Gv1gkc=;
	h=To:Subject:From:Message-Id:Date; b=Sugm+MgI9qpb5mMToLVyDNnItu8sJ4lqMF+Q7ecUy7tgg9OByljD4v02dAskknMrfHCGbe++5M3vdTTr4T2B9KjtujfK+AJ3PB75e19aQ2UUJcBg7qZtDDjjy9BO5+MulJPk75lboTmbjb9+vkR84+aUynjxk4aF4QtcebXH1x4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ateSp0/5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ateSp0/5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB9DEC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779311433;
	bh=k0ligcZXd5e82vFFbbLUTL92FoE2SPY5gJgj4Gv1gkc=;
	h=To:Subject:From:Date:From;
	b=ateSp0/5hTbRx/G4dzbtwwIQXdGynbzeGRZmJtbBFuRs5GTAtF5G7knEpd+T4pK7M
	 5pfUUqF5eURCxCj5lyv+n33w+SEREybyFnJFKfs0i8K2/bmXWpPf4GOIa+4zDMt6RD
	 nqUdCsvqU98OT/LOQBIVkeEllbRo5qhSztP7lS+et5JwFbfel1ZPu3WrUQGvDM7Xrc
	 rhDzsRi013rYfnIQGhiNOMnutg0dPHsZaxq6H5BeLesPK0vjkC9yVuY66aLsUpXnzu
	 522I4H4syNE63NS/FEC8miGXMFd9jZkAACsf9C/C4AoqmkvPPe4bh35eVZ5VVCGB6f
	 oSap2r3JdcevA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC80DCD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177931143369.9229.6550125940899194762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3bb99be7ab20f9a7960803e9194ac3fed335adb2c15297059bcadf5dbf979f1
Date: Wed, 20 May 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779311433
