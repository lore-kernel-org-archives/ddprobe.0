Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410061BD9D0
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788567634; cv=none; b=d1EVecK613cM84X2A6ppD7XU1pPtWnPNM8AUVRTAE5s04IAhNWECVDsDz/13e4ebMw2G9Hbz01EtaW/G/rJkU6WbNWPpSOeU1eBRLyheRxsCp4VseLdUuIynSX5fJ7Irc1MmCVKq9adwY+3Letp2qDcqERre7N/OLUcDaf5qcwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788567634; c=relaxed/simple;
	bh=vSiUiWCPFlxWOiwQRIbUz7Pcb4/hQJSG6Q2JgIBUauA=;
	h=To:Subject:From:Message-Id:Date; b=gXuzktnXbCVobjeYiVYtSBZ2yhzryBDgN5UQNAzmgqfo741EH31Y3Cbf1eV+keegixDCSjXrHWeuszobgmDZiVvnNbMBHw/dJrrwW6f68gOAuQfZHuGCWNT55R16fiVnwu7Pxn9uNLJER115xDRlMv75r4YpwhYpNP0a5eLV0YQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OX0K84o1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OX0K84o1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D52E5C2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788567633;
	bh=vSiUiWCPFlxWOiwQRIbUz7Pcb4/hQJSG6Q2JgIBUauA=;
	h=To:Subject:From:Date:From;
	b=OX0K84o19SE7VUGME9dz9ChSAlTpX908OqYss6V4qnjaVsf+wp1E+I8LtNnkD9/dI
	 8LWqvhsKpqIL13hBTCsGhqWO29m1b/oCYWIsfiIzZWYKUhOYrmr9NIRS5cVlSPrzm+
	 zCLq7TyHgZHkAh0SRCftAX50e83sca02pqqSR3t9p6SQPYYEYZ0Kp46Iox3ItMiHxr
	 TcnD78WkeziOMlFbVuTob5RU+XjF3p2pJ9oL9Yip1LDrmyrWRr3skd9PLvInz5sfMV
	 jhlICBCbNNh3Y9b5fZi+1qzjZf2l4hQset7qjfVfYCxw+JXFc/WYQU5Axw8bcqytFq
	 jXzE23FGnXJJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD768C624D3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178856763368.28475.7644668061422953143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b7be1bd49049d7c273c1aac9971292a7a272681ee3f03fcbc21157c21aa50eb
Date: Sat, 05 Sep 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788567633
