Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D23A31E84F
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 21:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779054034; cv=none; b=mJE3+MQt+BbUJbX/L3zmWLu3puvLUKjbpu3xOe9gDSx3RqEvv728sdI7rglUeHVReIlA/iCyEcg31qvhz7LMEzImpMbhPbrbU3TOmUCkWw8yMRO3vp+sVij09OCFcgkwEMH98FYaGYJxFv42iGgDVQUIfOuFTnT76In78MPhWzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779054034; c=relaxed/simple;
	bh=eu/5ZZyfaRMu16hXqySBJ4M/uDqrSpSddySoWD1I8Hg=;
	h=To:Subject:From:Message-Id:Date; b=PjGAKF6lKg9PZSJc6D03sab+S3aQyIpJd9A0/4HbCxpAILRkZx0dcXu267l89r84vGZYyq0xwT0PE3HQ5NPkiFz5kqHjTY+ZKRbYAtnZIQIBvzaKOZ14F6YraenDmeZ6H0tmbd5fL/1qsiGyihWkOEDHZmcuyrrrmRWzSaWuVI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ezNsRQkZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ezNsRQkZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4DEEC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779054033;
	bh=eu/5ZZyfaRMu16hXqySBJ4M/uDqrSpSddySoWD1I8Hg=;
	h=To:Subject:From:Date:From;
	b=ezNsRQkZMD/wwXLUpXed04glDhS+7Ccg4WdrS571jKyQXqg4M4uUMEg9/dFpm0Ct1
	 n6vnpf27Gkwg3R1OcE+g6oVCoRQzyc59LTvkQSqLuB1Suf9roOJBi/c0Gr7Jucc88L
	 7JAGToXsrEVj/ZkToC2pFpM5dBGDe5W91lNfsHOrnIzkXRjQwkcTY2z/2Bleck6cgi
	 CeQoJF7ui6KG6AohfQINRPW0brRyt3PbncOzkPI6RUun0j31/GQ+V3Z6TYJVtponGo
	 9y/sE0J35bGyvoUtLHWktPcz9V/o3WAPnGpYz08R0ZyIniFWox5XX9UP2pYGU7cT/W
	 4Q4iANRFwPYhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFDECD4F3C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177905403369.10728.13780756089995948957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf92ff430567f4dd6d32a256d8227b89e6e0989131fdedfbee16c3b885553673
Date: Sun, 17 May 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779054033
