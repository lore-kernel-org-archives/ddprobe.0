Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67E76D530
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 21:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719177743; cv=none; b=AXBA2cBp7olvd2ls+XK3IOKM+apwioVL4yozJbwytqnyPv/nSQG70iD9JPazHJjtcUJ3Zvr2grA/bSCws3/JrnyLGwGFkB6sBmfViFMyPCKlM8cJ/tS3tV779S4HXEX7RjLNctHmqx/0KdPjw5GXp4cEMxbQrt58o4Z0BOqmnSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719177743; c=relaxed/simple;
	bh=IG73jc9OKLPuRcVSFMe3bw7Nb0rbpviftIxC9cRczpg=;
	h=To:Subject:From:Message-Id:Date; b=DpCnqBLagkDoYHu2KHMVkFigz1BNrPIYfKHlZ7Z3ECmJiPI5dwMirOMFwJ4hTn91aVi6ouRzr7VEpu4QmYLMKXH6y2lzAwxlHG5R1PG/19uytbz6uDVMxUfipIRch7AAllrQjB9LFr2XBuxr0ixO9IHUsSnTh7ac98SQc1PX+nQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SYHGP2O0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SYHGP2O0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D54CAC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 21:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719177742;
	bh=IG73jc9OKLPuRcVSFMe3bw7Nb0rbpviftIxC9cRczpg=;
	h=To:Subject:From:Date:From;
	b=SYHGP2O0GROkisGMe1Kx0l+5xOIZS5NTQhUhkgxucloVDkYfoU3M2t57sKI6hrfU0
	 GsoO0kYliOFkcNu4d74NETJg4cgBpJnCP2atJNO+0ANfMK7CKOR9bZMMdd2/xI3Vin
	 t4sNLofO80MJi3zM4eMdkslRQWjGlBq4Sdz0AHgD8Ia1edrtnAWHdE8+IXiOcc69Yi
	 +rYvX45bTqns8Ymh3RuHFfCD23Fr6RnXIOjHDyQVDo6RmDrcW6uNrEStXM5adilDAB
	 g/UM5fu0Ho6J31jQQcDCdWSC4Nr1nLJ84OWs4awdEwYQalKHKdeafTSsCjeMwj4KUi
	 vmGeBX2bVDo9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE1C8C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 21:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171917774276.12533.910705830732954387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9f8cdb7014082d12e1b55e16f4757070ebf763b068c93f75abba08cdf254c35
Date: Sun, 23 Jun 2024 21:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719177742
