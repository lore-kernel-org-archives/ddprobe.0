Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47466267727
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746842394; cv=none; b=u7LP8GoifboIxCFGCVkM9o36MsGE3mKnIY2apCSG69ptbv8zr6FgbHJKygw6A9hUEONOtz2qOG6/jGcC1Px3lAuA6/ctUg88lGLhF6lE1paSkbKcEI0I5p4BLl8X1qY+215IcPSrpNG+AX+rPDn3JT/vPWhxyNdzUQ0WdiDd5N0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746842394; c=relaxed/simple;
	bh=tELIlh3wFtG2sThs9U/tynGHfqC9Pa5saEthpwaSGro=;
	h=To:Subject:From:Message-Id:Date; b=d5ZsATqHpzoi8Zh8a0jd9bEMuRwudKnvsYZpKDvU3NfeCGkDTzYMHPKqVvVvaonojeh5z6zoDl7Db5y/xfaliFoJFOJHXvQ/IPhcLsEzBYE4qacDmT7Jd5EhcTM4MRoR/L+A21OxAsuS+CMqfPigqC+Pows4PxXSw5Xn62/vvmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BS5WeC1G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BS5WeC1G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49D6C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746842393;
	bh=tELIlh3wFtG2sThs9U/tynGHfqC9Pa5saEthpwaSGro=;
	h=To:Subject:From:Date:From;
	b=BS5WeC1G2WP8ET6ZfzXRaP1Bp8oSVRlxuvhpZfgIf4qR56Pd5vKuNMCuaDwk5RIxK
	 ltlAFcpXcEvZltgNgUAR8uqavXitRnNj7EYt0VY+CZAy7aMGY/dUL5FljXLg+7vDX4
	 AKQmrXtTtpwqMLXyJXB4L0bfEUNzxY3/CjO+4xDfniXfcwql0e7GXsN9EiCUwNIvP/
	 +X2HFL2GjjVVmorRaRR8+PA8dqtwa9BROhhSZt3mdXb2NWn80IrAhPbP5seSE0bxsj
	 kUvA05pQy/F1Tuo3NTR2XrrFajqTU5Nfx42iYdRdvKpa0sMwT3Io8qercSRqO2aJIP
	 R6oZBdRe5QRNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952AAC3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174684239357.4829.10061785852020775532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02948b9384249ca300aa799b5498a87c481bebc59def8fbcb8fa6fccaf7a515a
Date: Sat, 10 May 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746842393
