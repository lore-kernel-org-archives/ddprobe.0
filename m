Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B2129A9D3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753883994; cv=none; b=ZwZBYeHXSQDPn6NktB8RqPUd0bHzJtxb6BO1wVwqr8IFk+3bNhr9rwMTh3tOxut4dEIFPDNK98TRT6s0cT4ufAUfKWxV7eVuv5rsxymUvhngGEeg1YkDJn+5Q/EHwJlx0QEU4oVTEnKoiwLIQbaxH/SsBE6QSQyQn1AkRp3eabQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753883994; c=relaxed/simple;
	bh=rQ9O4LeJEnu+Kmoc1iM/TOPEJ/WzxxRHJc6wE3UdOfs=;
	h=To:Subject:From:Message-Id:Date; b=P/GWnKPgnXI1xepV9ebycUE+evcnmfozXWcSdsa2FLh1inli7AK+vjVhQaVrRYmqO8Wdc40R5u6PO9ivqVjKJLPgQznLv7Zp6wSrz5jrFace6YdIcN2npQxT0cKISSQaK4hrZuDMmxRMgBdoBp2SY6tDbsoDMv/emocUJp+wpW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+xYU7oR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+xYU7oR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FC3C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753883993;
	bh=rQ9O4LeJEnu+Kmoc1iM/TOPEJ/WzxxRHJc6wE3UdOfs=;
	h=To:Subject:From:Date:From;
	b=V+xYU7oRT4KoBkZHQKgkV4qvSv3Y0lUb4wPGcU4KLKfND+6NivdX15gsjffWDwwnO
	 R4WFFPTkoGGa9jxI6qe2lbwqmnjV5TxR70PpYuaMs/1EJ2KcEAzNGknLfDk6wqzygG
	 2sgrVOe+V6xWLI3NE+1cbRe8FqHA+vKXhGTwZ+JZz4cKAJ3jDTxaPQoSNYD++75wK9
	 EYbFTerh6SUyrWVfUzcHjcRPRqnPiKBVJ8BCusVLrpdfHsoNQU1Yco7vrFXZosXNTs
	 buIbQH11Tl3AKreEQ5yfpk1vLGlt5fAPt67zVwEa2nYfier+MDHXoT5Qc0RETMcoQq
	 NQ7V6eMbR1aZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C16C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175388399359.26262.16689197153271836977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 000bb3d3e0b9ca8597d2e0e45b70e84584a159c23f2e3aaeccd11975052f35eb
Date: Wed, 30 Jul 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753883993
