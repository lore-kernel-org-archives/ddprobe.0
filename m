Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C9018DB1C
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754816394; cv=none; b=YTKeNwHC9lWX9CwSX0o+wMoVjAK4MuFExPqPP/MMLnyYQHNyjyu0cPQag7kWdfza/TP1gpVvPSqny7ROWjMJ+zTvL6tUP1bY0lA3n/HaAnmz7jFPJ0zodJitFiJZS3iQg2ISLUxcQDWcOPmYvfojkzLwKNzU+1se4ocM/Dl3kIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754816394; c=relaxed/simple;
	bh=mZBFrdsbSpXnlXEcozMoFkfx9CnIiGWbbbnhO1tV8ck=;
	h=To:Subject:From:Message-Id:Date; b=h/mA09qe1vdiqpkm3s8qEsKeVUkVIboQEekWqELG+aVxq+1iOE/pN3eLNEd8kwxivd3N46o00mhsEc0AX9/YHL2j935yml86Op9Q3TfVjnYdgvgPG9AnPUQ39aLjypLDkmLFnecc6Vjq98wW33qW11EECkJA4mmCSvUayiRhUzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nRvnIftl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nRvnIftl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39BFC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754816393;
	bh=mZBFrdsbSpXnlXEcozMoFkfx9CnIiGWbbbnhO1tV8ck=;
	h=To:Subject:From:Date:From;
	b=nRvnIftlGU08zYOM0XZ3J/ZcUThPSmlaDRqUFHWa80A9Md4bdEjidNMKHY1DQ+YI0
	 WRiEJU6AWbS7Gc89qAXdUbZD1DNxywzeKXGZk3scnUYpugM8J5B2p20lUWO4TCZuhD
	 ezIr1q60MnNsUBM9rxx3kUCgZEbPJnkPl2RZo5UTElq6CeOUhFtdgkqIzxav2V/aP0
	 f2L4HTIII8B5G1Tz9Cbmg+sNVNZ5WeS+LDnlxXy9X9Wq38/JuKbg1jy+kL92O0xQYm
	 vpJfX3EVT+Uj9aK27GUzppi03Q/a77lTQpfRqgcWjHDcwhV3HMklg80tYbOv505Dzy
	 L0RpK+G8/v/8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936C2C87FCA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175481639357.21418.1488877557292379594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b14f2194b204309967ed4d95675b35c5e039d10367a13b66310ecfac17b37217
Date: Sun, 10 Aug 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754816393
