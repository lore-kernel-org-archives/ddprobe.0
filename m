Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303611A23A6
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786684834; cv=none; b=WRnGRIrbncNrC2nYlJm0M3Si3rQy+2Ovzey70RKQD0cBuoQi3GJ+Pc4cmOso9ATMVuV1TSPKiNM0ttxhyWlfBOwq26XegML3SrwUvz3QH9cArlLzGqzT9k8hvo6oVUCJA5NNMbkhFncVhrdImDecbH/5PCQ1zaSsbwAN+aXK/0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786684834; c=relaxed/simple;
	bh=Lg8tiWrO52f2Eyyp1taXfpYK7c7nPNF45kZk7lvEQHY=;
	h=To:Subject:From:Message-Id:Date; b=m83eT0TSVEHtZNfBOvDkXCKzpL0TtOjsjUm4iddgOgx8v9CbYzjqviAfDD2E5RR/E+EvAYgZ/Br2Wy3LbFMX4bzD0RXeGpn4p0tJD2rvLc2YKrARQDLFhjkOY/r0XzMOAmM5q3Uf405RRvR/DzSyb4W8ct5+JyiML5hLteBChrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ac4h9ceX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ac4h9ceX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D25F2C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786684833;
	bh=Lg8tiWrO52f2Eyyp1taXfpYK7c7nPNF45kZk7lvEQHY=;
	h=To:Subject:From:Date:From;
	b=ac4h9ceX9yjGTU3qyG9GYplaVnIX1TM0UUCnV28wsAIwXf+yTQtxyNUXXzFflpllY
	 EJbHsPZ8FIjVfC4/Vn8MqPIMgUG1LLO6/asdVmdNdAZQW+2Y31rLjv7GkwcTHBwdPx
	 aE+LRy4T0SgwFOySKpWTJ8LiRxsNfoY5W7Q5zIaIFSZ9A3yXiILWK+nL35dsMlylnQ
	 QltH1jjaXFyQcpiAWXlP82IQKz3xRKfBBQU43DHJ1S6pBGWqMPbUB6j3tpPk4fUtsa
	 MHmXGVhzXNq6j86rpyrZyhbzAo64VEv04w9bFSnRPQF2EKiEfKe4J8hQSPBs3A6p9b
	 2E9QyasOFbnbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3A0C5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178668483370.3842.9367116844281916208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 597a324a16bdf743fc08fc26c8e8baf9fb6651d06d250cf3acddfa0f7fccbd96
Date: Fri, 14 Aug 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786684833
