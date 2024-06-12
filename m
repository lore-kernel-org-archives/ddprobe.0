Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6212C4688
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 01:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718155703; cv=none; b=rVsfUszI3hatMaycoCbYjcD8ZTDH7gqMH9PJ/dnImzeVcuNJEL+gogtKT57rnM97Zr4t2GlhDRN+XjQ5I4i3sJqw8nPV3DrzhFnkIyzXI4YL5OJbpdALlor2UeHepx/UfM/yCaNtyGWuDOFk8Lvqo22veGXE4leZspcopF9InYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718155703; c=relaxed/simple;
	bh=nZqUXsuOehgK33yXm/moJHnWIq2r3gjHi1Ozk7/etFI=;
	h=To:Subject:From:Message-Id:Date; b=Szc7ZDpcagIBs7pOfy7iEDiPdlDPZoVMlf8G7NpwlNLgT+4y79+MPkLUuPQZfH1PRSstX+kTIAsLqyrAx4CZosrt0Z9sdsYDEqFbp2Ki8dvoXSseREno242E9O1PUZrXVH/Zd/c6lS3D4cPBoY1gldOK1lDN6tPk5DcQNtt4gx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpA6+sFL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fpA6+sFL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0D94C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 01:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718155702;
	bh=nZqUXsuOehgK33yXm/moJHnWIq2r3gjHi1Ozk7/etFI=;
	h=To:Subject:From:Date:From;
	b=fpA6+sFLGcPAwdN+L13+euHJQUkdfSR+NsstTg0i+HhpbeUplqcDaT/NstCETyYHR
	 cjJGSUx2Oj5ZRHYaLqodwI4JWXtgXMFzipoPTjyop3b0QbFej5qi+V4cC7s+Ju0brS
	 BABVRoWdEomu4iLYUgLOPbs9yfA/mG3NieoZEDkAPgB0T2bZQMGiVZrAa3A9OtZy1D
	 YwCOoupiDbZToa+AhCn8NErjfzQjQcT1U/TRrpRLIP6gbJjVunUbpOVPtRQ7dwq1iR
	 DVZSCtr2HAmYTVoqQzHFbq/VTgDAlywS2+rqmAz3x0+ornLQ6msHADfv9AvsAtgwgo
	 9RQCvjD/sLGpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7470C27C78
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 01:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171815570280.10431.7928344155513567607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd7308cb7aacfe7ceace93b08fb7669ea441251c84ed7217d4798d7ad4511126
Date: Wed, 12 Jun 2024 01:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718155702
