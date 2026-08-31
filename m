Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443A43E00A9
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788176434; cv=none; b=Ug19v3r0ZY2/5xcoAFcK5O9SfyS5MZljRzUAFIG+cYNQ/UQLMeLIIk9VC5Fk4NJsKXpTontovvl3HNABqonOYA7nXM3bO0KlYT/w5/cc8sVS86Eq6V/wauLG+ih0th4zGhOz9yxOCANyShRPJ1ONYLVqtK6sqIoVnZE33YCSj6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788176434; c=relaxed/simple;
	bh=CKXHme7sADaoHAVxGD41ozDKUOZvZsdcI63ViPjXAuM=;
	h=To:Subject:From:Message-Id:Date; b=eSP/Hyo17bThvFoFCV7tjhiSos9ro279YOa7svkXZYD4jRZhtDWbt6oRl8qyJg4EtM9wrWtx4fh1bADGCiJyaZKvzjvK5jiIwhHNSgPODRDjHaQGW0CNcNRax9fjwKen/h96hA5CYNUQUCIc84EbiEZA0XhObjbcG85FLec9PIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=REQ2/xVV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="REQ2/xVV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5EDC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788176433;
	bh=CKXHme7sADaoHAVxGD41ozDKUOZvZsdcI63ViPjXAuM=;
	h=To:Subject:From:Date:From;
	b=REQ2/xVV18FLMoeVZZ0G7By5rQvP+017rWpMcse9zsTK8xelmoryJhg2h/C6XNMuh
	 cf4duszMwj8kJj1kBUO85O0ubwUJ+bffPEAu4kQ2FEvVqB2+Fw7oUl80/thPnKwFMC
	 v4ecbTRuuh/4xAmnZDo+ltUIY7PfGYCbOb7C+2+jzqjvo+jUsF0rkJ2lvApY75TMzg
	 XxtUKGzCdPrnpabuT0i+SGAXxBoq1QTvk2JjoQwsn4lDikvDs+BQcglSHoWJIX/eIQ
	 FeyI03fcfjQAmYYfpu023kbmc+a52TYmVSvFDrQhNrkR9N6Nfs2TlgMcODOHab9zYN
	 FnjG8vBdSLxGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFB0C61DE2
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178817643369.2645.1709434175628944216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15766a8444c4017f1c8e8f6e2b4afa117bb81d742edc2676b528d38f733772e5
Date: Mon, 31 Aug 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788176433
