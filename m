Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5832021257F
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787977234; cv=none; b=TniWC3GX9A2hBdJ5PtIkSjiaNvR8090ZFGtpmwdhXOo127Qcr8lWgjhyGRgZmyZvtq1dlOhGCkiiHAHb7t9W+1PpERy6MjN+l33lUN2xjOrmBow38Pxn6YFmnMC3LJwfYM30y6aIOj4nvbFiiGNenstOztsanQ3G9JH21irDJ0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787977234; c=relaxed/simple;
	bh=nQfUA1DEw+z2kNJdX1w0qINq58GKcFtFmqUkhOwC4Aw=;
	h=To:Subject:From:Message-Id:Date; b=Klw9SSLvoyOHYcK17OLxsXAz+frEyu65rmiM3eyf1VcsV8TmK9xZPh8thAfy8IL49LZ5AfOqtGU0hWItvddS0r93fQRNiyiji2lA76os/zHv6g++Mcr3LsE4KbJ9rMF2T1c6bisiZ6rBtpBV4q87K+mIbU9tNwqKtWZW8TVcTM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJzkqonm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJzkqonm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA0E8C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787977233;
	bh=nQfUA1DEw+z2kNJdX1w0qINq58GKcFtFmqUkhOwC4Aw=;
	h=To:Subject:From:Date:From;
	b=EJzkqonmtYGu/8fv19wbgQ98ziEkC/AZcXD28/1Pqi6+ff+gw2MILBnBHANugKIR4
	 6bQWzSJeu7Qb78OGh4VboRy0wc7dd+8x1PuJU/oc1S4Ke04JzR7WHukkV6PSF7Cxul
	 VFkVfXhJNuD+AP0Z67T+mKtP8NM9FjbPTVC4mtECOQOTEgVg8RYUuXlHXQlgikw0y2
	 ifsaPGm0V7QWnSm8PXORZvjBa0AE5QuJ3tmDoLJ2aatn3HZ0c4FN7+1g/sirsHqMBw
	 rIuTAy3LJp/6WLqjAUiQ3LdbUeZAIKm6m97SX9LWzyUUyIs/UXteRtlp9ZibcwmVyw
	 VDDd7WdJQoncw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1FE1C61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178797723371.10998.4160798064906818994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 935df395b34876370f53dbd3f2f205224b227319dfa55faee21a99a9407dee22
Date: Sat, 29 Aug 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787977233
