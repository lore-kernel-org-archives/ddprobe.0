Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61D88EEC3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784865634; cv=none; b=MVRXLKRKB4SRwgNus0CYu50c0HoZrb/p70ZfsvBNnyFYDL1dBjpdKUe0V2FTc9rBBBAzln/qcsq79KNiKpnHSJ92c5teX1ZIEp+4/4FSbprjv3jbYdKmcUL9SlRl11gCPwOEXgfxyJAF1qX9hkj+u8vT696sYXsiJeSdPgoAnQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784865634; c=relaxed/simple;
	bh=Ca6uO0QMdcvznfhLngxblX3frl29Sz0gqHDs+T7oUUo=;
	h=To:Subject:From:Message-Id:Date; b=gHc2f6S5dG6RK98Nj1HlGxDvAqdGzrrJHRULvyO5ruQlyed5MfCwdFwAgp9f8ttxNvysUbSVgArz4YAGBchB0XThWEerur1tnNtEi4+HaDAJPIEOhHF0zGmzvSodqwCfvpQcuC0Pg3VUBYqCqU/IxniSpGA8k11VoO4Gd/NZ0fU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p00I5SdN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p00I5SdN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC4B9C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784865633;
	bh=Ca6uO0QMdcvznfhLngxblX3frl29Sz0gqHDs+T7oUUo=;
	h=To:Subject:From:Date:From;
	b=p00I5SdNC5d9OUGM0RAMotlQ5YP1bQO/4CG4W86kgPgKWNvwcDeZdkW31KD2P/B4a
	 B+mm16y8kdasfZOvfVJsc8MaWgImMZAqgkSml8onHBaaxt4iM2iKFTds3UwBAvJaAW
	 bIUnnqscirVIMyfkjhPVrZsDT4ycOM+0/cwWcjnoXjgD0Hqbqqwlz1Tz8DTSeMs8vT
	 hUa5LfkeTVufmw5sJZgoYq8gfNl5Ma9mpsOj8HQi4Htk85feIlcMxvMTm3Q1dKHnKt
	 OtdmVhPABDakNyDsW68B9jjchTExxlmOdSa9qHwAntoIWNOoIizcpCJRZra90Xvfln
	 PSMeRhL7cmSzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F29C4453D
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178486563368.6216.13665870027618216053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fad7ab37cadea802c3cd870075bd9c5993dbd000aa7e05f50338cff71a3ea2a
Date: Fri, 24 Jul 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784865633
