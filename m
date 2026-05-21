Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D56B63CB
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 05:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779341434; cv=none; b=MfG4wPf2H2qSYlQ3B0qCmBTyqObGH/wLwLjUYvD4rBfLzf1Y3LrmmbiimtPZncOl8bndvt0Ixw+aCZhhoOtzSnm4XGgkrc6nffEoNwv1pZA56W7hEwt7VY+Y0ZbDRH989dUj2UikyvxtLX2CtuUV9rGKcOdWRphG9b8Fkpq5npg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779341434; c=relaxed/simple;
	bh=155pC4eXQ7mM/nQfrKjUnkldvIqJn0yR8cbXSziUk6M=;
	h=To:Subject:From:Message-Id:Date; b=te4Ipem9I0zzWmuztWxswWYVThtrkYVZlhD94bcq5Z89K+PmHqluZSSBsEzmeKVTH6DSI6rTg27Y2rh3FUfgP/olMKHNoBFVfWTWiXiwiZETa/3JD6cBEPvmh8UvMiF4ZuuuuZkjH48dz602xHgP3bH5pWi8gdNo/fXxtE778aU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+uCKFZX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+uCKFZX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6CF7C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779341433;
	bh=155pC4eXQ7mM/nQfrKjUnkldvIqJn0yR8cbXSziUk6M=;
	h=To:Subject:From:Date:From;
	b=M+uCKFZXXhsGW+T98Q4vCBpExv3WGZ0n89TBPzQN4o2M8nQSWXB19ESkC03N8UsTb
	 hvtDpLKr1SIz0XsEKJyKwD80kNtDMNjk2QAGAmU6eLYIZqzSXid+34N06dEnTWK79D
	 R+vSTEZB+YcS8gaI3pJEgj0Y7hVHiSbhIbSIhpmeNvALhG2DbYT7iDVe1VpGNkQpqk
	 JJmoiimcHvAH4yAL8N76FX8wPoQk+O6IsGp9PVTfdp40ddazxZjmve+ouSN4tcijwq
	 q/NgbCGeCtvVxNwbCPDqNJyEgjE1PG/nAysTc2Znzga6zbKtOInJ12rmC9uQIbP1L0
	 U4IkEeMu8mnUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC10ACD4F3D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177934143369.20930.2364724203080106252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6075fd913ae26419127b02e4178d7b8b227ebf98397677b6fc6cddbd19bd0688
Date: Thu, 21 May 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779341433
