Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB072236FA
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759175995; cv=none; b=Fbw12bE5pRay+U/0ToJIs+WPFCQ9yYbjfDUExxDn6NoVn14nDXkpMnqkZjdQqWl5DqG9cspUZzciSNXLnUpWvrqyhy2OH6IaXD4yvxD7mGFt6KXOar4J6B2z1ef3MGu/ZBwm8he+P6O923rTWTGYbC+eYjUxlN6tZPIFumPZae8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759175995; c=relaxed/simple;
	bh=4jXFTLT+iFsQK4SiGgUiGqc8qh8qdcQAkscn2UzpWRg=;
	h=To:Subject:From:Message-Id:Date; b=TzIhs3El7XWir6Cm4FmDb7Fpqa1c/fXQoFE8cTZt8FG9OKm/huUBr6u4EnD1vrsqTGZnx7mLGM+py5XkDXGPl+hCIV6m3lGV3DVABRMHQPdRut90Fu0tRibaubTOyqFCtkMuNpKBQXKILfPtZyM7UyIM/wUNzAMTOduyJJ7x+k0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SO4/gFzk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SO4/gFzk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B272EC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759175993;
	bh=4jXFTLT+iFsQK4SiGgUiGqc8qh8qdcQAkscn2UzpWRg=;
	h=To:Subject:From:Date:From;
	b=SO4/gFzkiSqA7firie5Zh6q9wTw70uLcCh5y1V5kTo4d48Qi/z+FhuG4msPq0pgI5
	 MsbFMoueBJ2HOpxdkS0OUlh+xkkTRZy0k2/iQpuCvuBH7+RaHyskZQsy2HbxBkApfQ
	 bD8i9nyLgCQ+EI15rR4cTCVwuuVTMYLhLgjTJ+/9G1H5guAW8M/Srv9NRIOo/v5ybY
	 xr7uMRuPqW//Idx8vFKNuZZibP3CRR3ArxWHcnKV9wjxQO2c4WcLqZm/Ksp3eYpmtq
	 +rjGT8iKy9+VOzLThOvMSJ5TLQDkdwbFVdAcko8gCwlGiS5SfoNz7Rt0vG/9C6dQ2I
	 qpO1KcXgF6diQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C268CAC5B9
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175917599361.14991.814082395700430945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b57e91b5723db9564082050813c86133109f2cfe03c2dd4464c22e6a6b82e92
Date: Mon, 29 Sep 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759175993
