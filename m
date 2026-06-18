Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345BF1A682A
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 00:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781743594; cv=none; b=LCDtcbHZIm0bU0SpS8+YGaIuuPReAXShmrjMg/69Xdln3tFvYDv/vIWrOUx85nF5sQUzozyRQVE0+yeKN2UJzL786pYW8j5hgZv/zm9pDXybiGHMF7WFzOnGli9xWmktH3GgU2yyTHgB0Bdg3mrIS/BlxZC0S7wrnb2aWzDTDt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781743594; c=relaxed/simple;
	bh=LP+EFboUos3MieyHI1TF7OxlibY9aYaKKPIB1i74xKk=;
	h=To:Subject:From:Message-Id:Date; b=Z9nwxJ5U9cchT7C+7fsaCo9FQfF0r06yCmDPIUj/3xzj3mC3jOu5kmDP4PemmITQSgVIufxY4kE1PJJQamwntD1tZf0CZ8qUEPiRxTa6INqE7PBxkRpp5XI25RQyS6D5TBCM7N2Jf4wmqRsysERxsEeZqJOU52G+eOH0YgXFbu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IjuXr1A+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IjuXr1A+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA8FAC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 00:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781743593;
	bh=LP+EFboUos3MieyHI1TF7OxlibY9aYaKKPIB1i74xKk=;
	h=To:Subject:From:Date:From;
	b=IjuXr1A+vgMmTv0KvhdNspv8bi/md7gqMEgh2xRX8erEoQrVIUodyic4momYU5SeJ
	 LigBMv54szhRckGZ48J+X/VPtURb2Rr5iPtrzV/AdAAeFepvEWWZiqmIP1XRo1Jc3t
	 HcE1IAVpK/ttBTb6Gwm0Iz9DGKq/BvByDJ4NzPpwe6ixj0ghc3cY6EvoCIDlvWGBii
	 e1LXM1wHusSJJC/LsXzhPK8nqygrth4Zk3krHYn56ukeA+Gxaqa1bT/VDG4xOJxHnI
	 nZ3H++Z6+T5MAgPdcuhmy/FFCM2BqUTmR5PVT7iU7uwjal60UKqDBfxTrwzD9cEPlZ
	 Na2WDrjpv+/qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB78CD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 00:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178174359369.4539.15594455496992266802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 594975f44e6f190f57b8323ca6d1271beb43f9dae8e21c27adb8a1302b07a3f1
Date: Thu, 18 Jun 2026 00:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781743593
