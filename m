Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B542641C0
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746766194; cv=none; b=hRDcUZwmO5A5NeBQY+v04QTr7srY/y+KEueiiX0elkiMtTswUnOiu0gs1mcdVg3G83OQumjHMOx/fisuG5YJoyNE/35hLfyFJh2D4NhDdRa+qIzTG09mAZwj62Z3A2d+PNbQRvFiHY7ufrlJD3gwhNPDg+PeRq3aqcV5gwwJc2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746766194; c=relaxed/simple;
	bh=DjMNasdOax6/13tyHS0aTsYtiUM1UzRdlf+EhlmT6fw=;
	h=To:Subject:From:Message-Id:Date; b=lufZnRI5pl0I7u/wf95KIPzBgm96YNHr+lm3LPhKAmiiZZFFC1qryLNl8m+s4FIBIxegnPjLhkP+sCHl8GrfFEQo+aZrY2PWbD8Xpsa0OxmDcPQJKnWXn0LrN/9+KPVYQx0zgXYKBS4YjlydvUe4slRiyIN7bviCv2XxbXJZ/wY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ExDOYB1k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ExDOYB1k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3620C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746766193;
	bh=DjMNasdOax6/13tyHS0aTsYtiUM1UzRdlf+EhlmT6fw=;
	h=To:Subject:From:Date:From;
	b=ExDOYB1kWQtNWbeefgzhnlGEcOhJttool1+mZChs6IrRIkpn/Qodal5dLQqXsqvWK
	 uOQgFmFyUzHbFc9+ANtkAbrIp2UMvGDBWvel6wyOooTc+H3a69CDNCu4Es5tmUw0Ua
	 L8HZwVeHoY6twCyox7GYwlboTLNSsOO9UQFXM1JTahC9lWixmQbLwLVHsCSYmzU75B
	 SOwvYR6AK+sJYV3/4tMlgy8e3xlo9urA0UASBqLT7KMfTX5u66LXMsaD/1lr7NiFfN
	 9zMzIEZHXmQton5XoDpHtNpOVFnH420MsDDoypvFIeGFpXmXvSpz4fMXytpKepqPNz
	 bPMONFk34sv0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F263C3ABC3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174676619357.28675.15118108396366452051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43d4180511ec5f008b393a77d0527f7cfc9dfe7a42fed3147e2e9744137b0b39
Date: Fri, 09 May 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746766193
