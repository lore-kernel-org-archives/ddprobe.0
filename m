Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535E717F387
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 23:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715728943; cv=none; b=qtYY9bn1+6503C49f700OQvJrIXIgfsRwNyE9Cr/ep+F8SC77Tdl8HOOYuS/cBYp3ulxLFrGHcQ73Xn+G1ajAjEBjsjbxZCAhgrpzUqLpGd3LG6I0k+P2WFvAVTJDleFjOhlxRHgiVrGs3sS0YS4rkifWIe3hwyZ4aXfjc8RwCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715728943; c=relaxed/simple;
	bh=sAA/7XnPP6Fiw9JLDvaU0Jnzz/gPVC2lKRC5oQ8Th0g=;
	h=To:Subject:From:Message-Id:Date; b=ACHaYWIw19svTJYWC/K1P7zznrMTCG2kbQINwRqQCNPADXdTHT0fGRXbbpnlZD4ylpDbHhUQ4jmzg8C0HvSvE2iQ7viIDbiQCQARrgHGsYGZgn13oWPdXQlnYPXj/8wm+tJrw08batAbo2BXYP0ontpwAj3jjp0KcguRtrRvl+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNRSPcFg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNRSPcFg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5EB1C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 23:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715728942;
	bh=sAA/7XnPP6Fiw9JLDvaU0Jnzz/gPVC2lKRC5oQ8Th0g=;
	h=To:Subject:From:Date:From;
	b=GNRSPcFgCTVkg+Q84x4g00LVkYfrrh5rzX5urO38zoQ2BgE+LLgJLDq7jSIOfzTID
	 gtgPc+FFjetQ/mBhc+Bthg4ncBb/CGWRposc7gaH8auguhLjs7NN2E6ZSKmqubKAl0
	 KTbcdJZmWXkyAKKxCuA2SitcV2kAWFK0U3HELE4i1HZq/PIsn8Zp+iMJU2NzYzG4t1
	 Vmf2q2iJhckG/9qbwgunB/48n9Nwe17We9mDyoHNi91lvau4q4bPjr8N+gZJ7TE8NN
	 euK9V80RqVE0s/ZC5m/lXPy8x4QfNfL6pLDRiIDb9y1pcUt5FzLkpXD5nivPxxPv35
	 XFxkPuwwB8oVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6BB3C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 23:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171572894277.17419.15833357598637447676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 312ee61c8fff57d347bfce8424cb220c9faaff2f490b11782d4245b528fbb45e
Date: Tue, 14 May 2024 23:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715728942
