Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6087A13D89F
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 22:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717713443; cv=none; b=KF8waHUqEbwDg+QQf5bKckVzkZGqO8LUvkeNBxus+TJ5Nnv00qcKKKPE6uvcK+skkeBNmfJPFmU4mVkUY07LM7RTYN4a5NrG1p784D3ct0y9otX1HbbwUmjU07imqKGxMQ86Y8BugIWxSRiMmuNclDZcJxUd3Jp7LLUASwlDJj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717713443; c=relaxed/simple;
	bh=Hg2YvBgdw3wjGvrYhQVXRXxqwiTZFKd6qc+IsoeKbkI=;
	h=To:Subject:From:Message-Id:Date; b=eYENiJbNZ2UIotlRrBOuxRNLqWIeKblGHn8wHF6ZBAfTPd6UJhWLcNJq9dzCsQEabKkKGRfCg67+TOL5izOaO57WKRsIl3oMHyyM2sg6WQmNFDeEQzeR6FvOn3soshF/zrECSv7yXmpWq+tgwFFk+0C+26ndnwuPUES94VYxuuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6QGCnm6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6QGCnm6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8F85C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 22:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717713442;
	bh=Hg2YvBgdw3wjGvrYhQVXRXxqwiTZFKd6qc+IsoeKbkI=;
	h=To:Subject:From:Date:From;
	b=g6QGCnm68cNcmlqmEsGL0Opqr8FxopG6CiEnBeGJFeozWaYzhaLlU3EyN6tsQdrfp
	 4BMJIIJw24A0Xgl8nVydNeTuG5Knugeuh4q8KE63l8FWpqW47V61SN3W/JLWvNPE0U
	 AMTvEKKU+tfWyiDp9psKsVVMZXKaD9GKlz3FxoACmXREJAe8yn22dIu0QCSH3n1nfD
	 XVh+q6E1PT79mZuWBe++gp/A+88Zb3PZOuIVgpcbqd4I9lRXifYaYnC31MzZavULA3
	 x8dyyn4cdbX0SAesLZhARUYNrHG2PJ4ZCaAambLCVnAM5KgE1cI3aazSn5+ePmcd85
	 o0me99Ap0UCKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF911C27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 22:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171771344283.13363.18336520945119939488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 337a9fa0ff571a437806137f4788be4f5f40b5563955c111761e896e435d3476
Date: Thu, 06 Jun 2024 22:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717713442
