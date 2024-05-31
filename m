Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BD7E20DCB
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 19:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717182863; cv=none; b=r9l5s7N5ssnn3yL33Yro0GDNVyAyNE0b3vLrbwaWcZHJC6XJFEJjEyPVXsbE+9FoVOTvaI7Wk2AgTEUPEGYnG5HVhjEdm80uW1QcfoWH5GdPQ/rLRcTO+JCrAU9uuLrrWRWpUAs7aVPadFGrjChxfW3aZ/nbNUj8Om4J3r/jgLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717182863; c=relaxed/simple;
	bh=t+NQfGwbdmRPqH5sm7DoNo5J5g3ShAl3qJJNxRWin3U=;
	h=To:Subject:From:Message-Id:Date; b=U0RI0911+LmSqAba4/Ws5EdSA0W1Y6cE/yBkAhK+RhvdGgjaScnkLjx70poL0GX1SxAAfRmvzRNUIc3TkdGYGsVLnXClHUUQF7Q7gZCjGfclwgucf5q8XMhP9TxwLRP+jXcPYAnloaQCt/cNes4UnLVG4jXU1Ze5z0G7cw/N98o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXJJN4uc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXJJN4uc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E22DAC116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 19:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717182862;
	bh=t+NQfGwbdmRPqH5sm7DoNo5J5g3ShAl3qJJNxRWin3U=;
	h=To:Subject:From:Date:From;
	b=pXJJN4ucAI1TppVZRLVEZTeNgnrM90B/JuMRdVGdZkAznfRckTIzzXyTdOJkvsuBu
	 qopFINTs/oD/G8ihunJsRaM0GuwmE8wOBIrjYAjhzqhYWQ+GhI29pNMsgCDr3HLLOx
	 rmKrf7QfjVlznQeMtOZjJIcH1PC+uAMfhnUrxXj8NYZocC32JMyEBcyhKppSNsj5fe
	 zqa0DC8EiZr46ltd892zntWLHRGt5+Vh4HB0otVw/t9uY/Gt09Xp1Vj/og92D7GW5e
	 uHjyyX/pK9WW7nD0UuKfKHGvD/NFTvxkGMV3sSItdRh4+cX0czoooS6cdLsnwkye08
	 FrnmJAT//NJ/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8D30C25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 19:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171718286281.15237.13859326627299111709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60aa172474592486e543c49dccfb659c908660a22934d11d4292a97b39d63dc0
Date: Fri, 31 May 2024 19:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717182862
