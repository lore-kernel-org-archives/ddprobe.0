Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AFF6481DD
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753502994; cv=none; b=Ya817lvWRO8viaAdq2Lb0XTkXLgTiA598S8WDaTWd9bqUcnE3HIbY/vYEZzgLNko80zwEBJzl2faEpc3Bm3OfXCsZuPQ2Kep9p5woBimRmV5RZc9U2ZOyHt19SEm+tZRaXNUf1EN5pOs20Nx8XQV78uTlgbT62eWwsApX7me554=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753502994; c=relaxed/simple;
	bh=BL4N1nG5R0U3c8ipgon3P0D4FwsZe5LFumzRhTCjTpM=;
	h=To:Subject:From:Message-Id:Date; b=dPJWY9JJWR3Bij8/CV5IhzGs1mtt3VxTD6wGf1o4AhmgdVpSChzf8iLOaFMR80rZUJca3+FV0/DirX47LHzKKWHSgf+0UihQNvyszZqlcUsL75DAb8hHFXUWfmSHpu1FTReTZnBvtEsCK6iOLu/79yBoZB0rpEjKtQsHcG2kfdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLIeARDJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLIeARDJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A844CC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753502993;
	bh=BL4N1nG5R0U3c8ipgon3P0D4FwsZe5LFumzRhTCjTpM=;
	h=To:Subject:From:Date:From;
	b=HLIeARDJ/MCauPSkfL2Lvy+kGNrTiqqapTX+PuYx4q6OL+jyLCrGA/u+aPlIOlAvJ
	 sZkiXsB6yC2RUDbaqW4EpW0tUPI/uian84Cpt3aWP9F4tCaUzbZLlDMXSarRKNbQ4L
	 IzwoS/81wtq84Ya5mEXozn+qz64WWDkLnDPlc602tcYlGQS8YaSPjT6DRwsj6gRXX8
	 O5cBixpoi2zXsESuRMV0pVn5K8by9n2f+Syx0zVphPBQvfLwbEI0bErMCXNqJizDvM
	 uFC/g1BIsFH6ZiRlPg21OLd81YRdMCe4BB0aoe0Ibsrg2MOSg2anRmeOIZAXzN9w5Z
	 kJqADLvKBHcjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A3AC83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175350299357.23780.17148909414497606338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd8b7dcf36bc5e95f1560ea1fab5af33b78a6d16bb60068b014c13cb3265f6e7
Date: Sat, 26 Jul 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753502993
