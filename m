Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C52D25A33F
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758214794; cv=none; b=WafcLZhLC3XMJpWMAM3PXNrQRm3iKz1LWKJwHNWl7PVgakR/Qdrzrb1h5Ccbl8aLytqsfecdNpfof916FnKzRzn8NeeSkdWkK2hwuLIqZdZxuMm1ns0VMaGlORvdbvX9R3SU1xVxraO0seAYG3oXCDWsSApVAXMGin7quK6THIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758214794; c=relaxed/simple;
	bh=V0E7E2vs1vyOlPF3Y/te8ot912F69eVIl3NAzCeg4qM=;
	h=To:Subject:From:Message-Id:Date; b=Ghrh4YFL1OeRd0BZCRV1y3+FJ6n3h1Y8OcTwsZxTlJKbHsFt0IoCppeIUfrpAmaLRwrHLSUNtdhMoktnlBQLOVDzs2X2XiVPFzTySgb0lUA0FHaf5hyNXfczJ4jCfXINVWW1SqogOm1TQ5vnVXCnIRluh1nUVWQBMgQCnZMScd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rKOk8Ayu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rKOk8Ayu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC339C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758214793;
	bh=V0E7E2vs1vyOlPF3Y/te8ot912F69eVIl3NAzCeg4qM=;
	h=To:Subject:From:Date:From;
	b=rKOk8AyuCRZlw3ycZHjl9GkBlkiQlKbDnfNRVy4JYyOaExEx8X3LHJ/sNCdf4pGW0
	 wtpCk5LPtrMm/tSE+IzR42UaNMdfkWuEG/XwVCfzsqoeu78MryhGrJnVk5mB4TSt1u
	 WuGeKmHOcZw35nxJhvDrpZAXmADaMGp06mW6hRSByU3io48eT+XnzWbIr60XZGUhBJ
	 qZxql+bQEdUvdNMOuFcZn8UyM/NEkel3npaihcGOFTovHaBEsVCz0Hecg5wpmUCC9g
	 /K6wi11YzI7nTObDnYe+AfEK91P4OHoSR4CFJxuQtrY/t9daavs4qQm6hzJ009E8qZ
	 LTWU1XuhSDqpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985BBCA1013
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175821479359.5610.7164861060482464030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82b8d9e701c4a14caf21d7d3e02a6f55324e726468fc266c548ea1885bc12e6f
Date: Thu, 18 Sep 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758214793
