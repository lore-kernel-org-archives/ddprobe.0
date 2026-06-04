Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4049831353B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 15:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780585474; cv=none; b=jB/VmN7ad2upgPXvxaC5j6lzq3tC5WcLV1JLqnUPnEICEGMkGDvmj4pBlJPqFWXpg3G6YOLdF2e5N7G14dro+sjdnuRoKI4dtPzDqNtx5UcXXqYSqVWu555r/zC5VQStRDOkMP9vwumeCprp7+RylH/R5+E7pfhcoDKlQetIGvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780585474; c=relaxed/simple;
	bh=Tfug3X+CqaGQ4HAJAiJQIZkR8BAebbchhS7mGyAQmUg=;
	h=To:Subject:From:Message-Id:Date; b=I8xwb8dWVa0rP1z5SbudXzDMM9Q9Uw6y47Y/S4SdzjYjum6stpQ4zSaAqtVTse8hHlf92q4bLbojUHKF3+OS4f/UnZP/3DjeWHflhz22OJEOP3MGuBMpvEzd2BaXKFkkuS7HZug3NJCt2ojkv0hZ18vjvLfITabSHAs4YIeIvLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z9i4y82P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z9i4y82P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7AE7C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 15:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780585473;
	bh=Tfug3X+CqaGQ4HAJAiJQIZkR8BAebbchhS7mGyAQmUg=;
	h=To:Subject:From:Date:From;
	b=Z9i4y82P8T+fxfldFlifQaplqDQHD6XDwQPMh8QBO5ZVRTh6R8aIdCZm7FjQJP0UV
	 8UiALX2Pu76ZKNb2enzC+8fpWF6oUceqCSVNJUaBCYwJTn5S2Vf6XU9GnNtl1DbKPe
	 Vo3/1v80Ibfjzxia6D7P9P+fYFPsMwStkr5bbwmzrEjHC/VEACqEdlWIJvAOATJa/Y
	 dJ0AcBYFxbpyiYqVPQ6xUUSS1D4I27kPfoDUBttQDZy+xBYXtuhMiamWJ1qWmRN/Ko
	 UbAVdCxVYLxklFBdSybEo6tCTiSGqldf+LId3ZlWINMuDmX7b9Qp49sMRPXVB2rhNT
	 jd+z+Tf5LqeSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DE2CD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 15:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178058547368.3569.9538347751550114964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bcdbecd771b0500a0e35680ca56b4f27dfdd040c3cc2ba8b01d2dae750907d2
Date: Thu, 04 Jun 2026 15:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780585473
