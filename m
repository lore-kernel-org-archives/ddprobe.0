Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103822D9EE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 12:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764334374; cv=none; b=NoDgXtJdvjwtsX4aeozIWnoZzOKrCy9D35yVSx8C8CZR1pAOuVKvuRc1v/dF/JANuNmgg3JljJB4NAnyRtybVOD4Os4UXd8EnWExhH4yWbGcR7LBtn7ZTia8s5Txnvgdd9Da4G3yuB97xf4TgRAbGSWYlm9mn1ppDqjKVigpVho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764334374; c=relaxed/simple;
	bh=tcfZTnWAhAJDUAazVe4sDwWFdowPRjNzzTcOONmVvfU=;
	h=To:Subject:From:Message-Id:Date; b=AHUg90VXQ1yXnQzW5l6KbEpDOxF0Xl+0BmXZfyDB8ZGOiMXqkhaEHLc3wEITZJOk4s+n41zRxmUTXBaoxLrOjnUv3bFDai/6rNyQTazHVwTVKOykagtl89YyEnkx3qP1o5+fdIEfQKY8Cir/uOgA56IR5FyngrPXnoN2j66mfQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ehDC7AB1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ehDC7AB1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3ABAC116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 12:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764334373;
	bh=tcfZTnWAhAJDUAazVe4sDwWFdowPRjNzzTcOONmVvfU=;
	h=To:Subject:From:Date:From;
	b=ehDC7AB19ocxBnhppUAyYaR/8vIKDodpC3aeR3GEgP66w6W71UIfctTKBlNPnWhBo
	 i2PoQE3BJFkTm/LvZrD9QrmJopG1HjdjoNU122PQNeB0DQOw927HhY1//uKxIYuNep
	 PWAAeXzHIR6XjmIMFeKzUedMWiimrfQcQbAuUnAQCm8U+ZpSQVMsNlRKWT2G9rnGKm
	 gO+5iz4h712EIyMk+o37KFNPzrFOGMO8s4HOdcj/Ez2dePGnr0HGIp7kLH90ceOD4B
	 DusXzN06KVI1gsduqMt3Rq98foSm+1rXDwa6uXJB64eI8L1ApLMp6vDgu9kN5eWtwr
	 YD152l0AilkNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907BAD116F1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 12:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176433437358.19947.14287628351707636022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 554548d4f759940c78a027d45484311960ea797559f8e6ce529d94243e3d257b
Date: Fri, 28 Nov 2025 12:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764334373
