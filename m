Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4298120E6F7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748404194; cv=none; b=jVqiHufXc/s94KprLIZa1+JDC6rwGGEym3UUA0vGGR3eovKC1h3g2fcfLxbPRCiWuKVRhV7RwkN58gk70cSsNvdzSy24pGvHzTh545JOEu3jeuzbWSW9NrU82MxTc8Lrwj5oQbJ4aV/5x/L3eN0+zY7iECPDNXkS8HoFUUPphFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748404194; c=relaxed/simple;
	bh=MKFX+E8L95HK/ET+OhvW8nJQQ0Iu+x/tZyjg6NbqJWQ=;
	h=To:Subject:From:Message-Id:Date; b=MetL2O9/pPfv1gtdTWmvyeFq+K5G9UL6eLkfU8iUlTNW5KwpwbkO7/teYf+LualOMBPq96Cl0ZGg4n6Cxl53CZb+vRHFrpzqjQSyjNqb7Pq9kyQKJk7ettgHi2ZbKPl0n8eYp5lCr0rQSIGd03CsOlQO5gwUhQ4ea0tuxnxhoO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PcwV6hdt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PcwV6hdt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BAFC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748404193;
	bh=MKFX+E8L95HK/ET+OhvW8nJQQ0Iu+x/tZyjg6NbqJWQ=;
	h=To:Subject:From:Date:From;
	b=PcwV6hdt21UC9chsCHVxFsSBH0GLdF0sVYLeq43FKcgm9lBCWYFtKBp8ivFNRxxjv
	 f/+fBk9mI/sSPL/lBVWOFHDVzEERxEcdkvl68sCuVWFTicfVpPefdFtC87A898gn9S
	 Y6XHOHYZfjFvUxeTB9LwsfOUozkHkgcUC37QasdyedpPuoxmlyfoAGZayPnGUuB95g
	 +CcQNGQ0LbEMRmQCEQkraobU90bdQILcgbHlbr/I9qeuvhtnPFD3v/aRttmAZL+n6n
	 ImRM0MwL2gjfdwgT5Wg+Oul5Q9vtb3nWrvMuX4YCOMzEsWYrwLNQFHd0txHdlAi8oB
	 jAskz83YLdwmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93153C5AE59
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174840419359.9591.1559894529301060567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b502738efb339cbf269d7b67d4af679476fcc58da6e9a1ab7a30c6617aa7dce5
Date: Wed, 28 May 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748404193
