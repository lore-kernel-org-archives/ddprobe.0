Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA5D231C85
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728122154; cv=none; b=mwx6LlpwQzgCmAfQAwor71fdOzifwtGaY9aqi6lWl8TyTmFmzf3SyqOvxRNZR+XvdFjolOhjX5pVtZquiFgMu+S1EdixjLMBjYq77yvsz82lTQ60KVE+ozpk/DvQphLej1dQE9fjePPtTwjeuYjX/0RvBjYxfKaZl0MIzQQ6PNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728122154; c=relaxed/simple;
	bh=MKVklwenHVwkBSbLLe9QatPQ7Uy6a0ZWTa6Ph+1nprU=;
	h=To:Subject:From:Message-Id:Date; b=ghoDBUVl+0BX64Vh5WMzPCcnFu5jZS4XgxScstdngy3Czt7E2iHz86MVL0Yl4pUQv0D+xZseOirsaJ4wCYzH+30Jarp9MLHdv2jD40r1iN0F84uunhZ1RQ4AGNazV8EpXqCq8z8XzKtSv31Jc215SqgSs/kQyWQiuol28JKNZME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hIYYK+Ln; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hIYYK+Ln"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3EA3C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728122153;
	bh=MKVklwenHVwkBSbLLe9QatPQ7Uy6a0ZWTa6Ph+1nprU=;
	h=To:Subject:From:Date:From;
	b=hIYYK+Ln3WF6hTKsw0GdRk66SJZJLm8HZuWv3+nLLXAYJmYWtyD+6/SZsaFyEyhbz
	 fbCqs1yLgSXmdzffhFivMV9IR/bZlSV5in6PG6IEQ429W1PN6qlDkZEMM+z4kfrxMY
	 IAW8MgZcmtdGXyDkdawADKBYp3q/TTxmG4GhKPFj2hRD0Rq9mwE0nh7vDiAdHuxxr5
	 tC6YDII/mGR9mnYvoEOhjYe8l6p+H85t6WN+V3LDGzMMDME1w9H6eoiJxD6bCM5ntP
	 PcxccTygv900qedNe5WFeoxwUz6/B1UmwSu5DpSjMU50PbgACc7HXRcymjJ/DRifIl
	 Hbs+l7yuh+QyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB392CF887B
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172812215368.7140.3106373269419871311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c963371a1bac0f38a3030ea7a10e70ecdf2b78451d9484bb6f396a5ff9a9bcf2
Date: Sat, 05 Oct 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728122153
