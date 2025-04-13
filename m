Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53BAEAD58
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744506594; cv=none; b=Cfiio8JnnX95kntD4U5yEKG2yahzSr29AJQ3hK65O4ubQWoya2CXwRpC0zLB2ICdTonqhm0qwzaJZZZVST5aggPYgyojgq7/axW2gvzeQKiLkIM0es2RR9LrXS+VkBJMr9iyBV09kqrf3m6zZMb0/yopkSKs1SuWfWnRTbMwafc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744506594; c=relaxed/simple;
	bh=DvECbOlRhuaQymF0JPYeNCZI+vYCP/m4oLwhiTObAMQ=;
	h=To:Subject:From:Message-Id:Date; b=i5NsKGkhykVgz4fXcysVomoNINJ75IVdlDOuE5FthY1tsydJsC07SmMz8wbXEh37LsVQtMvazmlmPGWMw2a+wP1Ehcy5otWS6GQ5g5noaM1nxhsZKx8Q3vuO9oVET6BPhmXqpDFtIGdXJCTgyXOGgPs95sZXzNz6eAbe4k8fcps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QLJJwwDW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QLJJwwDW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3094C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744506593;
	bh=DvECbOlRhuaQymF0JPYeNCZI+vYCP/m4oLwhiTObAMQ=;
	h=To:Subject:From:Date:From;
	b=QLJJwwDW/PtpcoKwNbatn/7d3P7KHe1jQEff3j/VPO6qVIDeZ+bMgHVAiUU3n8nPU
	 rTOlDRe9XLX3vstTNar34rEmtUl3QG2KfcZi0yLHp3tUKZ8TDGX9OXvhnc0eJNFyjx
	 rczi/1QfEeryJntGJMe7cpnFtEzmXyrc8G6sRc8ddH2aBd/Kf1V182aw2tlzqjjWfD
	 52G0l4XpXJq2zrZoCCsOfBjvsUJp/cVDHyzxcp6hz6RRwErRJ0a0FKzFQI4O40tVgq
	 Mjf7rnk2p5ttDhr01LMd7Pwy+b316h65mjtpScZ53dtoAuRcThqcu8N2eN2NRBI7oQ
	 V4I/rnO+98ydA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B5E0C369AB
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174450659360.13827.8475560230040216729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 747a35bc7c763a7d8b7bae431c0a12d0d2562e07f66b75a630fb8465f0d4eedd
Date: Sun, 13 Apr 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744506593
