Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7221B0F3D
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736185554; cv=none; b=AdV0D+rMVMb4jR0oMsuwBWV/K6WtT7nme8iyVcYRle+mnPL+g9QFez7Fp2j2kUwDLTSo2AdZzc2c/fXnEXOISOu/US4pDa7IdCxDfilK6wGpZAYS0YcBW23SWyO/FQxr/B9BeNCKr4hGqbDHB3o/xvEMzRZ1L/R8qYtnFhSZ+Ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736185554; c=relaxed/simple;
	bh=vDHDrGXLRmy7HSjuZs7IcGrwa/fXlmGfADgChtdP02U=;
	h=To:Subject:From:Message-Id:Date; b=De4N664V/eGTjZ/SC06CsJhUjjZeg7DAJLO4Cry+WbCQSKOBiUDE2icx5O4SiGh/xc1nvKeLq8MSbvDz98XVJaZZRNb9ljXTj71IpEUUp+OMdIC4sjrWlm00mHFnkZJX33c8JWjJJIhy4eLXsmcpgc+Z8Znft8gfcugS97Z9KV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGuwtcJd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGuwtcJd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3193C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736185553;
	bh=vDHDrGXLRmy7HSjuZs7IcGrwa/fXlmGfADgChtdP02U=;
	h=To:Subject:From:Date:From;
	b=oGuwtcJdQK/dukmJxaRCcbwSHNVVTxraODBvKImsNaGEBzZfHD06PnwxhYdllL/IF
	 foMtTLlVsAbMB5iw9kDwwP3AhH1T7kFqD41t0m8gtWaez7vxGUn5cLfTI0147lCaCg
	 hhO8XBehpj3x6jikJm0ZAnYlxARQ9oui4t8bUOkVku0da/b3Gc9PYMzxPcqSxTm9x2
	 3B0/Owa/yuNPms46ESNGjj320ZZVBbZ3GG2DMfs3pS8icLbFVxa5laFg4LUssqhs5H
	 HDS/yPathK8PQhh4JDYkR+dhe8E96Pc1XVgxLNX72E/N/Zb0B20/rbHHtdVE6z8cHS
	 G5MShVy7as1rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DD4E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173618555359.15331.2308007923819590814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a007e6310278de2ffe0926885cfde26a427eec0c5a3c6fd163f9ab5d2fb1c048
Date: Mon, 06 Jan 2025 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736185553
