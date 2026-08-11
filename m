Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E8F3B0AE7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786486834; cv=none; b=f5eMYBVU3xm4wxhcYI8h7uTzovRDAZd5fiL6odJq4itey/njk20ruQPhWSjq3cC3hl71IFfd/KvoJLG3OM81ylh4FeEgtpmPv3f0S6+HXxYjTXJR9d41n2DM8nbDbmZtYQ9PvlEbeR2uqpVAK5ihHuQMr3xJxTGigmlRevInz8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786486834; c=relaxed/simple;
	bh=/Yb3ev1GP7U18IOoa25MB001PRIknGt3/rPgHY2rcaU=;
	h=To:Subject:From:Message-Id:Date; b=m3r4pzfAxe3x8JGr3XfPjcV15MElED85nC5ra3dv098ktb5ZPa+dxOkyOxj2uRDhzTqdlDcBYLqCjdRwq7IUPp7uFltyfIrzM1NagAiwwJc9DPQGtaLV92gghGFJzVXHxNXJyT8bPQMMLPdO+AwXYtaYk0uP9Lt7QXrcy7FKtv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bn9ncz8R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bn9ncz8R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC278C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786486833;
	bh=/Yb3ev1GP7U18IOoa25MB001PRIknGt3/rPgHY2rcaU=;
	h=To:Subject:From:Date:From;
	b=bn9ncz8RclZobdieRrcj4+2eRFLUuE48tf7X4KwVLtn5L4njY15oVDqBHw0LPSQYA
	 Iv8AZGI2MRRy6Q7D5xEOaHyanfXrjUPh4Yxyfk3O4Yt9DOR6yv8jXSzjzVIk6Niues
	 d4UBfXrzUggNjPCcqJie0v4tkVoCuVvaHkUUUCZQVpVxb6AtlRpJ2FaigX5lIo8nZP
	 fBEUIh9xRBB07a+lAid79XBM3q7EbQsuF8ZWJy4JkEt3J0C+OkYDOGUwZeSKSnDT3G
	 cgou0F24NA4APqN7fWmApBfLzPv1t1AmDhnKhK6KoVfZm+8rLd7VVCubHAApUfJ6YJ
	 bpNbgGUM5NKfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DF2C5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178648683368.12577.8507400166461885050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36755394e9bf15db4db631cc285bd2222c5441aa398c93906780974a43f27c61
Date: Tue, 11 Aug 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786486833
