Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177952D3228
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756183794; cv=none; b=XnoVdtFo1fJK/FOSTAIO3XA4JrQdchGzm25OQ87TS6WzFoaABDYTeAgIuGLMPoUDToLTGDfxwljD4uvRi8vmW7oUEdzkMpvgGP3KhJ14g/qAAIIC6EDXozD7GC8a+GSlQL2EVhsHXIO1l8HVdLOL9srxzRQJdDIdHISJJjQsMCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756183794; c=relaxed/simple;
	bh=02naUMzUWbjbxcoh2vXmnvi196ESSHpwa3efqliYT7M=;
	h=To:Subject:From:Message-Id:Date; b=c515A8zs1JPB6yozfs3DyZbEEMEtWZPReAqoVTFIDMoBc4qlmKoY2hBMsUW5EOxTGJUDtEEvSezjEOgXFtlnBOdgdpdauo0bXP57GjLcr8Rt07a5HTnkfo/DoTu60T4Mlv2/RAFWuHcLvmuDVHxYIoSdb2qWCUDvORiCOLY3CPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZRcG236; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZRcG236"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C0D7C113D0
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756183793;
	bh=02naUMzUWbjbxcoh2vXmnvi196ESSHpwa3efqliYT7M=;
	h=To:Subject:From:Date:From;
	b=NZRcG236ZcWEaLHyPVnztNku4njzi4VFio3XXk0xGPlYA67gbXH6rq231tcD9yAg0
	 yliIvVc/d8skPFdDCJApAy9ZVpB5hL8ZpjhHlnHBu2CBqYnKo9DezkeCp/tF+MWIjX
	 K5Fzoz7Dx3kw0t3uCMzqTjxfDHtQvvRNmObd/Yexqhfzf0OzC4+/tt4+tBCgtCgQZs
	 5OxS90m2dE7WsK1oSmiqz9NJYywf0Ft9037lxMcBMRrRyVC7s+qW7Sio0iOc/73C5w
	 pOQcZAAmqBar+u6HnGv+cFhh0I10J9S7Ej2FFO2Dp6qfIYHyP2FaDpl0C53t8kObGJ
	 LbcU7Xwp7zbIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7B4CA0EE4
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175618379357.20274.6803885679528811549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 704ae5a6ce9aaa11944059ced46b55a31848416ea394d1bc9713e30574e8495d
Date: Tue, 26 Aug 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756183793
