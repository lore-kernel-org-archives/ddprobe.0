Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ADC6263C8C
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768174434; cv=none; b=mD42h/JYe29PxptfSTCbI1Yu/sDunLJsFSS0BcVXsi2hsGQaehPYCEjH4FNgU1R4pdNdCdcA99HaYi/TVk2Bo6hB/+OG/he3OOGUAlKx34+UunYKTA2OGe6BhYHOf/OMcUlQo/RUamDY988iBpPLRlaXmw6/4GX7UxzY1fpNP1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768174434; c=relaxed/simple;
	bh=Sz1mxX581vnCSQVUjjTRW5ZLgDMwudhdDQG/l1OnvmA=;
	h=To:Subject:From:Message-Id:Date; b=gaiaFBroZuadAc8/aavg7mruocCTjRHS30XfPsyIzE6s7ffLD71BWK2jDNcmZwCOdwz1Wn/tAJqEKxK32dKrJCrgdPbLZTCCJjOH+xS1Y5kZb7ZGDhFzi9ZFayT7snoC2A1PLUyEUDfwCCxjdevX9SZjX+OKNk6mprJZYlTODwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aacaFvNk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aacaFvNk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87E6C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768174433;
	bh=Sz1mxX581vnCSQVUjjTRW5ZLgDMwudhdDQG/l1OnvmA=;
	h=To:Subject:From:Date:From;
	b=aacaFvNksd4WrcsGTprKfBXpXJTanAwDZ5q9jRk1fecZ/jqOUKHw6oTo8KU/WzIUY
	 I/Tj0jgUjbH+OfyGMAbkWo2lygoNeOPApdJrQ4ySAcxTP0lxIvpuS3/pRA+aEX/ULU
	 oyNnSmH8Y+LMtLl/hhFk9q8ie1X8ng7ftAYwGoCnxR34jlsgbweUzGJ+3kB+wwNRTb
	 Ytw9HL8N4LunEZNdlINSCJhWKQqtUfgbcM5cvXYjErh5Nn6WJWAxfgo/BQKok1y0qq
	 KLWVGutrW32FIeRxYvWjMkXE2ac6iiuupE4Jlw65mwQve5jCQrKJiJoDrEMG7Idkrp
	 a1yukn21Shwng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C3FD25031
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176817443358.15514.5749864039863010117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fb7ec535eac29e9fe0fdf23f2f7672bea87865867df92ff3bc3ed1d91882618
Date: Sun, 11 Jan 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768174433
