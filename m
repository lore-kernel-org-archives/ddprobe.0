Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3389C3A1B6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736803554; cv=none; b=rwLeLPgVqDQgRVldOoaEVMRMCFtfshrSPwyISfLd7qYNvy7/Udc35JXvITPv5A6iyKE68Iz0vZnqwsqaBPuNbJCNBqBQquI4vpBywaNkPo4Shp2Y09yC6AbRBdxDbpu59g4sVlUzRkmilfzmpHnJ1h9lNiSmUQXatX3+O3rZnZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736803554; c=relaxed/simple;
	bh=UbWKTltPw10VJiAiLVk4G5v1oliwCG2vYlCvOZn17sA=;
	h=To:Subject:From:Message-Id:Date; b=jNvGVsrR+0TSvIxZTZ5exwpq3CXY8U7KINFD69+JlwIkCpsIAXBlpgpmnZ9GDIjq8AT9wTg7YBsychQnEGp3CjF25r4lu1o6a24fJ4XBaJkxotl4wgU4K28vN0nVTGct4Ntrnx56+Qzak/QCfB0KB/TMFNpSN1tKeHBSJ82Q3tU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rPePfCfj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rPePfCfj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAB7C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736803553;
	bh=UbWKTltPw10VJiAiLVk4G5v1oliwCG2vYlCvOZn17sA=;
	h=To:Subject:From:Date:From;
	b=rPePfCfjXdWOSx+stfppJky4XSahAQgf+U45P2CYihqMNSR7/rRZA3YWJw0pTHkrp
	 6rA4Cg56mwiw9yoI2Lk9QyNDZB0RQ/TU80w/vWQUnttNmOewXyJt9SolhSCLyEAZlY
	 QaLewNJzELxmOngnAe6uUEs4pgje8UPzKttyb2tkJ3e8bpFNV0jidJoqN7UtTMBb08
	 DIBH2Fk6KAr5w/TbPRR1Q5LWHRMYNFQ7lopuwc541M1HDySwxOvesquCgWV7jHb2Tw
	 uG+ZawbOXmtbMDgPeFRGzspSoFSONOVL6Wz8Z9B+UuI3CJLS22LnC7U5tdtbzFGhoe
	 PWb2P/6uyvicw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2C7C02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173680355362.12644.10546630643184468296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 207457afdecfb550f2e2ddae110c63a1a892e19784bc8b189199471f368e5415
Date: Mon, 13 Jan 2025 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736803553
