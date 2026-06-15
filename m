Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ADAA331EC0
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 10:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781519194; cv=none; b=iEfoCfxKmcFEOAPz62sdf5ey8z7PUJGe3jXIjBBZcv7fS+43qtXiKnqiPEfXUEN/nzUfShTqMoX99JoCXc56RLZpQMT0x+h1OEAT/eEKPDQRyy9aTt4ypJFrUF1Qru7Nd75FdenqtXP34+K3QGf8eoY5c9A8cDqU5pJkO8Zs31k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781519194; c=relaxed/simple;
	bh=ubRWph8kB/PcxpJRx74m/bhKiOrvkx72CpUbj+KrZ5o=;
	h=To:Subject:From:Message-Id:Date; b=PVySdXyqBNntzV30z5BXs5+8aMisni8a1KhGLN5lpKmUclkf9jd/8ZJ5qYt/U4hH2YBZ5IOJQFL3TQDTguL7oSWpaD6bjSFlEOhwgL2hRzEc/02bnLrg+hKKiSKBFoJOnxHX+HQ0+0NCh7diEOrTqeWQw9eqSYdYPVp5rF9WkUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R72s/cb2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R72s/cb2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9139C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 10:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781519193;
	bh=ubRWph8kB/PcxpJRx74m/bhKiOrvkx72CpUbj+KrZ5o=;
	h=To:Subject:From:Date:From;
	b=R72s/cb20WCJhNrS2kQzAwJ1adJDF/IOPhWy4hosSlcyEifoMcKKlxgYT8vIiuOCN
	 70gQM5RWqLsvhNaCkDQDIQxLrlJO7oapbHQgZaiOupFvBdE9dFGbWNFDLb39AdEkdb
	 3WfMiJwTxUEUenBgvB067fo5ifibiHyzo8H99SRv0WHvmXAFJK9VZXkV+9DZKjps9Y
	 gFOlPVQDRD3sU2s0cOE6ZXa2FinsRaU4OaB1BdOIiOYc5jGJPLJSxUNYZaXS1VNgwt
	 EcQDU/diKXyW1Kkttdmz3/2mf4QTwxxXQrilLeBQZcottQljXkETBJ9GLI2XuAO2SY
	 BGYdj+bCA9e3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB5ECD98DA
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 10:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178151919370.31758.14169896352449877134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4906c0d4a7ad3a0097318fa21f2cd50d8b73c23e8bd9b2822ca90ef91674dc5a
Date: Mon, 15 Jun 2026 10:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781519193
