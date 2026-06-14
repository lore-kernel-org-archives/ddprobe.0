Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E0E1E1C11
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 23:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781480194; cv=none; b=vCxSEDLVhtYHiJIm5YUR7jwsI3tK3bdbNyu9i2+d9MDmdJd2Ki1Uwcm25QEzl+pFDABtg/iuvbZOFZvfLFhLUAUOfjRXjhwslI0jNI9IVkQ1CVEU7PwxV70j7rvnEi9kSgBBj1nY/TM0oGrkjL4uY3DMG1YrS1Oi1J4FFBoJ8ME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781480194; c=relaxed/simple;
	bh=bQL0+LwgT4UiCEuV+c+uY8Qjew9KtVI5Z5pjvy+chYY=;
	h=To:Subject:From:Message-Id:Date; b=nGvr4G27zE8cvy2E/hUS7+SO3Hmgiwy2/j7ENX93Sgk6ASDvwRFo67XhL7gf4KmJRbyfKQacIXx6IjMoCbF/XBoY/RCfJhHZ8gLf0tFDgoj6XK/gDxl0nYGRX8fLFmMPxrKOXTlkLHb9XlsQ/pSqNAynoy72Y5Ra1fmCRtFxaks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vR1gMCR9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vR1gMCR9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14FDC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 23:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781480193;
	bh=bQL0+LwgT4UiCEuV+c+uY8Qjew9KtVI5Z5pjvy+chYY=;
	h=To:Subject:From:Date:From;
	b=vR1gMCR9dawUgZOOu9Q/0Ps+xX0zY2Hs3YZ4uB3WVmlnEQUiB9B2wxXz/fTP27qPd
	 wQ7470DWrMXJ1smQVAj339/QG1wUSDkYR/s2PRkmFGSMg9e3SCT3bu1VgsYaFYI4nC
	 BLsntghL88G7yDjar8EeQ1qHWxJdCdewbDLEwujd68oyEi2eJI89TY/X0ckOMHv7bf
	 Kx7d2lBFS62fz84qSTEIgYudo0gHMmIE1jSBD2tNvtFK2aeY3FTsXLHdhVqmvKtXmL
	 MksfZbjeHKQddcnKxqwTVDsUGBhsxtUSU+YA3d8PBWDHCVL+QGxT9BuxPMJMJ0pVN/
	 BKJuOhaan71tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17CACD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 23:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178148019369.8494.3716491103241025965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b1aaca9c0b8e9cff1c0afeb6ddaf7dbd7faa3c65467ef26ef948604a95babbb
Date: Sun, 14 Jun 2026 23:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781480193
