Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E24C7245031
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 05:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778824234; cv=none; b=s2pC/CQ2CHFhwueFE2DEJQ5aK1dsnWnntiLhCwvN8X0awxWaC3nb9IfCR8PDR5zoSjt0KfLJyta5dPnW+YKA/3lHZUoB+DXmuHFNqwLHq9loii4c6ZOHxZJNcoHhQa9sL6UF8cvH3kXIOSnVKfp04uNr48ulO3OT6cpyW4R13Uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778824234; c=relaxed/simple;
	bh=MOc00IM3GrQ7QsRVOxslL6Mc7JUOtmclZzadsqNrs7c=;
	h=To:Subject:From:Message-Id:Date; b=IB6nvzgXEnNz6SMVRWtrflYUMceXDvjuIS2GpaeK74ZQ5T8KTTBDFqeVZ08M25UcSZz603JRzlIUR1r7sul+ybYRg0tnoTNt5blllLf64FhqddLXDhPCemzhvR8t3q4DrB+e/In5knAS/Px7VmLVKmS/oiYE79d6Wgv2oQbMtQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8nCcJ6J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8nCcJ6J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD098C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778824233;
	bh=MOc00IM3GrQ7QsRVOxslL6Mc7JUOtmclZzadsqNrs7c=;
	h=To:Subject:From:Date:From;
	b=Q8nCcJ6J6wAmhkrbteiSZQa3YAxFfvi8ysHRwHej3lvqzkZVf4ZzzuZMNEwIBrR5x
	 sORScUzZ/0uJ2U/0P2SbKGbMw+Lh7BBq4wRbenoA6xp8z6CMOQUwZLjQe2BBOw4Fdg
	 3K9Vm2wg/j0xPAsExQPo6DuCTDNE8PT1AbPNF+DcPuwfqQJtym+YjGVH4TmUVy9NXU
	 sv3Tt+qQIZRpLXIxJaNEBdfd4hNygFnUwmayttPhFzPFOJgK5AojMZBRQqOud/r7j5
	 pss5GbATzN6X8vIsUKEa+IVhJm9m/ykllxUG9ozHOxmLeaJ1fSaynS1Q+N0jUVz3of
	 YpvP9OPm95wTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA323CD4851
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177882423368.10026.9570756849668021083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0806a263ac047a406cc6600f6e84b91ec3f3b4e514b44aa9d1ddb43bb7605891
Date: Fri, 15 May 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778824233
