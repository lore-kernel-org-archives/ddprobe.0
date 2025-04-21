Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F889BA42
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745221794; cv=none; b=kR+9rRi9GlkLtlsntAz4YimH27G+XPc8pbWdzRBCTCv9arM/JKqw4FovFK9VqvmYmkK0Qk0j2rGK8j/TH6HrDVbqqNr+ItauU4XJAcqZ01UL2ArNukBkWY8Xgx4m/ymlPHg50xfIlpjgFm91pCeOXJcs0LlyxV+o5XwUTAL2EYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745221794; c=relaxed/simple;
	bh=KLBPJGL4sqv0TLTQaugIVV9kEEK/RGav7px/0TJJODM=;
	h=To:Subject:From:Message-Id:Date; b=rnXBgJ3GYbHHjgHZvvsVdD+qqWNUAjHebySn/m8nLzAeHjiN1t7rpdLUzmJ0Lz08KB46lg/4TZFcOFZf5NJ6drHwh2gXKys9A53wdf2SypzNAYScJ1HnMjJFjGBVhI773Rk8AjWFn9WN3ydG8o863yrZ0uutEtjTVqqKVCqU0AI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tdn8NYAQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tdn8NYAQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2403C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745221793;
	bh=KLBPJGL4sqv0TLTQaugIVV9kEEK/RGav7px/0TJJODM=;
	h=To:Subject:From:Date:From;
	b=Tdn8NYAQaP0bF365U+P5gqmQkQLLiYLM48IMEm9n987wlcWzckC6qwJsIL09P0Lcw
	 znnB+mJmOv2F3G9O5sPmMWTq7Znxrmgx7Hp4qj2usndMuK/AMofOgRLh8ryZZS85ym
	 2naVxRJ4vzjtfZcDcpVXj2tNwsMHuEmVUPqOwoYW0JlyZhV20ZtnWeEIZCQ/gm72iJ
	 jkGM7H9kK3Nq3DLjVJFpAvhalLq81wrntG3/SV75Oz3n3BuNfjox/m0GY1XBI3pezD
	 mm3zhGeywmiBEUCxaAjUAyAfZOUNcxB/nLXXIwaSFrv+wHLCiKOb+2N7fmcWaESkNw
	 TSTdKCADYIfew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABEAC369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174522179361.26591.666102484974103500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cdecf550f13c215eac4a7b3ff893561d00ea4f042cc9c4d1b605e1c1ee7f8c0
Date: Mon, 21 Apr 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745221793
