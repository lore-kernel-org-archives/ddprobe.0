Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EB93D3338
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 22:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781303194; cv=none; b=QwnqDRB8ExjoCQSQheuXXpchEVXIntRLKPC319BggDJ6q6KkHxb5cUBcLJcg9pmy5FACqYW0sSPbZuzkAN/fv2I+JfHSi2jInbfugyam9h8F0qlTf0Z5RVbklb7kIF/LVmK3hw9qNJhxxBdKyENDOyk6yK8V7MsatjjQjQUEu/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781303194; c=relaxed/simple;
	bh=MaEFWmee3KX+ujCHV1TWLf4X17uX7gXQBCyD9GAT2mE=;
	h=To:Subject:From:Message-Id:Date; b=DyWkpw3C7RZ/DMn0DW0oznxclxvc/A8Kt/+91RtxD9jkmYLCiCwMkOFyJaHsCkC4K/XFy6jR7fxQQKHYsW4EDYxwwgYNLLGEMsoUVPyi6siUR6BMLE0F+RlaxcU8Q4Pu6VyqMrBFDYr+smjjRnByLNjbpBHGAMyAp35H0Ztnn+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVycv7ro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVycv7ro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D390AC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 22:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781303193;
	bh=MaEFWmee3KX+ujCHV1TWLf4X17uX7gXQBCyD9GAT2mE=;
	h=To:Subject:From:Date:From;
	b=aVycv7ro+/yZMyDbBrMECvJMWZJ7e6X/gsbuVM5ugiUBGe55t49rRiB5VpuWiP0YF
	 KUCsFP9XOTpSPcTw2++3vsDg3YG1ZyS4INXlje+TguIpoyhhKzJVhBaVLn80bgJ0Kx
	 d1Q69sCNVdX3sMn7kOLQ3NH/2HuPNWWQdAeptU7k6mX7xpiHknxZtNhrmLgYqHAuQP
	 DqiImkwpgb+SjxlRaRQiqIrRtnDMBhWRaHgHEnag2D2Hzel+q93JRpju151Ss12I/z
	 QjRkIcDpX8R0nkEUqymZkDqC4vh3wg7u0XEVAfLuM0ZcC7Cip+QJEJeo9UFUDmNvD9
	 Vo7BGyrpoNHrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B64BCCD98CF
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 22:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178130319371.1410.4720410174082032559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a6da537ca923dc09de6491ddd84f1e20b0834c1581ad02a5fb6e75a71d66614
Date: Fri, 12 Jun 2026 22:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781303193
