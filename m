Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A5B182B8
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766163234; cv=none; b=D9kcUrnA6LAXah14/SjEC4slJr2E+CgInQpWqSkUk6LnxoR7lD/gMxZC1ILVQ9hN4dfU7uNNdujSGGLBjkBdoMxR67f/PfUGM/575fq4CJ7bfrhckwy3GpsHphIY1jyg6296jV23URwFrXY7NnN4xs4DBKmRLAaqL0EdoIqI0pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766163234; c=relaxed/simple;
	bh=z2IEqAGiGxcQ4ArYi32iS48dwTdwEzNDkcSbNwVPxgs=;
	h=To:Subject:From:Message-Id:Date; b=Hbj4jCP5Fxb/YLS5brVngmxWTrbiEp8XbvULSpOfKXZbHJfYmKEmR51dQbwR082F1hJ4soOEzUedL2jQa5PPPtsNvvFMWhzC6FHR8Ld6mqX7D93z02voUlXDYZBOMIaRdP6hbtlz+iVfUA6hZpPg6H+ixBa80s4pF59Zv524Yyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gAQWP0kc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gAQWP0kc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F23BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766163233;
	bh=z2IEqAGiGxcQ4ArYi32iS48dwTdwEzNDkcSbNwVPxgs=;
	h=To:Subject:From:Date:From;
	b=gAQWP0kc9dmdwTD3BrqeT0d2MXkuf6NZ7s/Fn4a//B985exxskxMu/cp4COb8giRh
	 T/JQqjSYQsqS2Z8vwWhYThNzjbFyv3Zc+bdK+ycCx0YT/NWh5rMLNn0MBUCw+N27xW
	 K6qvboLFY7FOnGivlmpfe+rfml2UP7dQFWDoKTTgV2dZXGe0zO1Vck22LQYk2OzEiA
	 Nsatr4D+JgD1v4NxGG4DuifWlIEjxRQOptahFpLzV7PlwwVFB+FN/RIjGbDLriDbZ7
	 /ejqr9sNgocOqI9RMdVSkyTaVQ1GHWbD3yhRkKO0MdvLn8e5WIaA6o5Ojl3ZvwHIOe
	 OFHjHOB0I3l4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FCBD78770
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176616323358.25921.5393693257275139110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25bd93e3c93901b4347c22d733e8bcf21deedca892b46d59a1d1816e3cc2af20
Date: Fri, 19 Dec 2025 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766163233
