Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472BF1DFFD
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 01:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783646914; cv=none; b=rimvcrfT4FkEKmN9ci2lsYb1TeudT2QP3W6xt1rdX8q637QpSvxScc+95V3ehiGTLgaWIbQ0SdXKvjnIjxCwXHlQk5TPoVwMjAruTOOOFKT5VvkkxgmsGiDq7q7x5/B8HELsZyD0zpwlsIQsGB7IcAKlZUdCx5f5dLYdwEAhR2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783646914; c=relaxed/simple;
	bh=27s4t/CySYCh8G0ktyKh9W6zrDgjrOKAcasKeH9yO4g=;
	h=To:Subject:From:Message-Id:Date; b=Tvk8nYY27snA+uUhlDwArey1xdoiPxkXMW/nDjTc6UeVQycykiGmQNFzNb88iY3r/DZGaCDd7j9M60yaRcPsSua0sxcpoRUcl5+ctViowiXNC8FydMCS2Bq9mrCpT760HZzYLUCeSMns0S3cLiYWymXtAUCilEhZzj9o0zKDOls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRv46gTr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aRv46gTr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04B6C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 01:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783646913;
	bh=27s4t/CySYCh8G0ktyKh9W6zrDgjrOKAcasKeH9yO4g=;
	h=To:Subject:From:Date:From;
	b=aRv46gTrpmz6o+mO3Ru4QDQZkPCBYrGxYBQmvoAuK/Mgxb7ADmLX4hQaDBxFSqMwk
	 UnyZzN6KKfguPR4kN1HEr9US1cP9S7w+F0htbK8iE1uNWf06vfG3oBUPHckCAafLRs
	 wJS6sp5qTD0bWG10W/rRC+YlPAENG3WMfjQUqKQ68tfUJZRoS1joA1E5eZT/tNGEy0
	 TvDNnmxAjMi5rkhZy4nXlOLpJ+BvPLX4Hrqr9p6F5MRuJ26jhB+u2E2Aif0oSMH8Lf
	 3m9ocVoY60oKzZ6ayM8Gn7OK34Tn3okXrTZjm6WFa8LSGYEMA+78HdJOMs5Uk2UtNo
	 Ozy1oapez4AeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9E8C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 01:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178364691368.20718.17789703822017048575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e0cbb807229eaeebdd23e1a4e1c94526e2c103ba02ffba2a3fe41f8a02dc2a3
Date: Fri, 10 Jul 2026 01:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783646913
