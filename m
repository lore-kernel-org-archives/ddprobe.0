Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7D53D1AA6
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 11:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778842834; cv=none; b=rBY1IW2m/x6hc9UUJkTEyMi3BAB8mdYXxh8NxMiFsapWHCMzxsF6RxgOsY90n4yyCku79sika0RkV9CcF4uG4QiHjm8ciNugGUxqblGlfacBQ7nL0n9owtEpkT6FX7R0gea0Yee3W+kZB6xxnxNYtq6+wFF2R4FT5IsZWCWHZ08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778842834; c=relaxed/simple;
	bh=2X0j9n+FySs6meXS/SGxZJNC9egvBeZ+u7VW0NR6xTg=;
	h=To:Subject:From:Message-Id:Date; b=SNfrZnGcX48HatC1tS5PSo3hNFkZn97rL3bcz0BDrqTvipnPTsnaqqw7MiHNJveYxlG4WcPM1SWkXkoQMcTaIJCGPQs782pbjRUgbLHRbK/yB+rdv78TYN8hoLiStvy8XKaua8SBv8mbGqvKm6P6hc1IE7xDRW9mZOtVW0LsfMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aslt3ZlW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aslt3ZlW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFCC8C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778842833;
	bh=2X0j9n+FySs6meXS/SGxZJNC9egvBeZ+u7VW0NR6xTg=;
	h=To:Subject:From:Date:From;
	b=aslt3ZlW7fOehv7MNdrJXxOtsviPpmEEDLR6G0TpZhaojSM9+ZWdFy/5Ni3KjNSem
	 jTfht4jkNkSPGxPl+DeMeXSr/LxRaOwqbEewETlhNfarQBNuDPyljpYIHauEp37vo7
	 AxyIxzj0M0t6c4Lc1sP5gpmhwLn8dqTgr5zV4NhNwelvZrW2272wEFnH4xqbzxoaRq
	 1R0JMZ0HWbilkbapZj/CUjIIDR2EujavwCaeHLe568GimCvtYQ2LHdkPHVyUnsQlH/
	 jQKU/NCVjQFuEmOur6xa5P14jzqGAB0MUMMYt3AOPnb8Ixz6cr5QzRWEsahEaen4Bv
	 MGsFtUwHy/ydg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4A1CD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177884283369.2427.14603724351351462272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c5b31993f7d4b3d43317ebacbea901f57fe2614e5f058169545ebc56b654cad
Date: Fri, 15 May 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778842833
