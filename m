Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2FE22087
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754709594; cv=none; b=fzASuXnb3oOd6tdnOw3rhqgmwYqnJb5PG23AG62SAVzlbcU3OyipnQCfu567vvNGMDHVulUx7Gdc3/tgtksJd0Blz33782eoUk7HMr/8m84OydE9TrRmVp1X+Q7bez/yPw400zwleiTnkNy+ZY6KMN9KGLifGVmV85BYvKLzlt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754709594; c=relaxed/simple;
	bh=t66VPuAqr1ygcvOEPatCbOmh0UvwTuom0wxTNfZn3H4=;
	h=To:Subject:From:Message-Id:Date; b=MJuZp5QAkb/9TLSfuPbsK4k8USlKsTmQHHHM2JOCVBw3LnAPLX5mDC558jYDtbSRFTDwD/Jk6PAhnRrM4bXBs2T6S0xBU7JCb5z2B9ygwRdzCnLtMtPkAuQJyzy1c/8KnnPp4IZ11Kuih/Z+O7KDAnHVwpFUyGeX4uT+fKSMnlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQQNNE+u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQQNNE+u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3453C4CEED
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754709593;
	bh=t66VPuAqr1ygcvOEPatCbOmh0UvwTuom0wxTNfZn3H4=;
	h=To:Subject:From:Date:From;
	b=TQQNNE+uXwZu/nUtEa9MZPRXtQZMCW/rjVawktdeSycK3k2evRiZ6hpG3agdJpm14
	 mkhcUF2TC+2PtB1Ilv2f3Oz/dqlSe7E617nDW04VqnoMfhewTVgU9+0joIyhCSd0tq
	 ugqNOo8/K4nDZuS4hnGxH9TELo5mJ7OGySm+qH27k1XtTnwSV9ZEMRSETaEJ2KsCdy
	 vUXb85B4vGLFHRiHnlxWIrE0bLAFGTUaorVTtlQla6gTfbI61AJT4BulZTg+Od+f+6
	 e/eCKw4HXK0zNU129Ay0nmcgGcpAm1PjapcG9C/txa0o15VJkVPa7YFg3njqM/mgA2
	 3wMRscKZxLaaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A08C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175470959357.29903.10044460587588332284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bce4139b2790d5813c7fa1b362c4db592ec7789f1ef507c471a9b98d75525377
Date: Sat, 09 Aug 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754709593
