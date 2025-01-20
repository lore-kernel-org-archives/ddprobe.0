Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333921DF968
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737374754; cv=none; b=N6ebqJ9SlOJDld1OqMdcyIwA4Apng1d9FM5aUn7t3YKdxbkx+IQk3wz+IOdd3ct2vT809yEO6tHIPpRZj29LKGWDQwpf55R6kBb9oiOPzLeoVTctWGDQYzuXbjcxCfTwXI13U2STRVacLAEpxv+W2nSJhTM++p15lsd+/AlDkY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737374754; c=relaxed/simple;
	bh=7ATiCVOe8EfzkGYsyywvyI7YTNQmwp1ONyiK1VWwUDc=;
	h=To:Subject:From:Message-Id:Date; b=lL94+zKgrsFndpTr63wlQEdcNe4xMKU8Qt9gdSnt0o9KGz/ie27T0ybwRHhx7DTjv39pcJABu+Y2SMsZK9Rgpx6PeiuUuORAIwQxP1AckAtFHBkYblASCboIf8PLYtro0+48oIOPMVCfv4ohktK0H99NIJR/N7mmfKJhChtMzvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=isK7L5CD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="isK7L5CD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86BBC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737374753;
	bh=7ATiCVOe8EfzkGYsyywvyI7YTNQmwp1ONyiK1VWwUDc=;
	h=To:Subject:From:Date:From;
	b=isK7L5CDsvIknvR9FKuYOOG9MlCTxJaxtgnMzfqRHC7LWKEgE30WslVh0nt6ifYDw
	 Voz291ewFTv/XIiUpqEevTEKU3Wv+iVWKnwhExBZdB1PQVr/3BBpApzzkHn7RJd4E0
	 3qRCjCNkoYh6yBUWBOecj+pX5u1rYcemUwiHu7vVWI9x12A6k801acl2TQ+x3Qv8RX
	 1dG4toKp8++ZB2WrzaHAstJZ/zabJjGlq13DrVUJN8VJvsci9F1yvVwg4bW172dt4B
	 wbQCAY/ruvcK1KHEF9V6KPfKWjrNTl1RXCA73aLtM6l0jn8NRXHT4ar5e/44hTGfOS
	 lH2UojPyoWTPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A04C02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173737475361.4977.1784369634866263174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ae3741731c65ab2f74af793ff7b4867239bd9d1955da7dd6b76b7f1d0d8c62f
Date: Mon, 20 Jan 2025 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737374753
