Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9FC38E8D9
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 23:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780357474; cv=none; b=WnJQfITrMy7BDFIZ3Vdt+JctQazMflpXc7mDxt4tSu2mIwgTIQKaSiAMdXixqHJ1uArOwJD3zYUskmWJFbLepvLTy4wknE6QcTw/rrxTj6n3X+pBbt1uf0M3iILwv1EMSgbGBvUSeqB1YxaLBrzhkl/iNk0R4nETcBPDPyyjSuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780357474; c=relaxed/simple;
	bh=fY2SHKsSRDGC1wnrXFh+T7TKsC7TLHb6y1A4F+kkoRY=;
	h=To:Subject:From:Message-Id:Date; b=VEbYT4Rk02siMbs0qbNU7mmhPpMzHBCagbPZ36IvXMXdYr3WPBiPXE1TvvRPDOEJ/5mUPZYE/nuS8Gu1VSEw4guAfAmGE5n+wcVsvkv541+x01zqHrIDitUhu8NKQEOjdoPcm5p+hGbOlvJdyUwPbr4zoKRfy6h9ODJSlhgCJCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lssP5l+c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lssP5l+c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C88F4C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 23:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780357473;
	bh=fY2SHKsSRDGC1wnrXFh+T7TKsC7TLHb6y1A4F+kkoRY=;
	h=To:Subject:From:Date:From;
	b=lssP5l+c3yHF1AEv/I6v75L/x6sXuLbuMBpWrySS8XbkGc4cNdusgfotKusptWuBd
	 LxZxd3PHvw8PYWg0mFPqwZemG/dmcxQEMIDBXD6Be7haUF5ZMXWW+xAfPvN9jyiP63
	 AESQb088uUo4LesnbP0fR+WaVwCWOIK5SUzmjgMTlJZMZJpZVmSjcFVjOHGiwDqN81
	 UjskWIQDzUetKC0uP6sUU4vFNTgho43oFljH1GuLZ5F3uprMkZaGT44lA3zTumXS7U
	 SwFqzoPAvkcZwn0mqY8h9xRd4GA0NHKPKGo9X4sdt9ftQKeu5xwIg7gg4Q2NPenvkm
	 4n6FaQMIkSJCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD7FCD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 23:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178035747368.12671.30665050922290460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ff2c99eb7d6405d54d03f5002fb92aa9440cb5d8479d6acd8b6b348842fba72
Date: Mon, 01 Jun 2026 23:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780357473
