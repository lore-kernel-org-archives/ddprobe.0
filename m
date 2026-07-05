Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35BB23570AD
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 20:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783283314; cv=none; b=QLqn5GocbIwuP0I/B0AMZRoTpwTHFSCGlq7po+jizklFrxcyQMAIFzmcILVWeT+RTAuiwimH1QGy5+vISOr72JSA/zHwUEVursYXovLeOlrztVaV/kgHiEwbOssxTVPHOoQWvMPL6MI1RGZWQW/JGchkgHlURpLNKEvyNLjzLzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783283314; c=relaxed/simple;
	bh=lqBp6xt+RCokHW9602L209YCLGVgE3pjnUVIOLxA67U=;
	h=To:Subject:From:Message-Id:Date; b=q3p8+htWsSdmOKmh30v4A4qzLxMZZKz1lCDwOIZ7kBO9vE1RLn8tg2PF1/Dn0Lw2j4XO2BENDag9LFFY54iPnKW/KQZLE0MuLhWH77x7WKiJyAOxcamxd3PjcWiXpq2XGYsKkjm6/Z6CLRwU4hgYwMzkUZE8Excm2Dhumcm9krk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZqe/bf+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZqe/bf+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD9CCC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 20:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783283313;
	bh=lqBp6xt+RCokHW9602L209YCLGVgE3pjnUVIOLxA67U=;
	h=To:Subject:From:Date:From;
	b=ZZqe/bf+4NAvGSrmMF29/7MHHLfEEkvs/r9mjv1yl16wy0DXpNzwGMPhkpLQavoyi
	 IpGJGi5wyxmZTJot8LraEzd4xlJxZtOgW7V/SOGGn+2V6/KjA3bYaGkutj6jNjXzzb
	 ktgiBENEI23LT5TZeFDUtgnhGPHpWvRMJgbhg7poE478X/FWtyMwI8TF3h4MFyNf6G
	 7ousDQS1gPhtT+KGi7fXnSbBBzWticvFwRLnoSYFj3iq6c9GxR24zzxThHq+hySSB8
	 VqySAFCA5V/RCm9lcuNTpFr5Qk4TQ6QwrkL9EowL1dmLtGM+Aggjd8gbwCQD9gHuq6
	 4eiEn2IhFtwFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C28C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 20:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178328331368.18271.10113415161552234683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3ec114d3339e53da2c7df471d7ee586b593ee499a1b45030508dc7e76eaf27f
Date: Sun, 05 Jul 2026 20:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783283313
