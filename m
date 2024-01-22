Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA0CC3F8C0
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 16:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705939697; cv=none; b=X7gSChHXKwitjsZBZR3S+ttIaI2bD4Oum40NmhWbOFEAyo3PVR1n1fFoRbfVlQTbNnudQ37t8w1vDMTuCrOudgLcdgQmUAyNnn82tGYW/CdaAqIEKG3+rZbY/I1tEbgMTxROQSHfgBbaMyRKxJ2KbayM2rTypUQaHSS+pDwRt2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705939697; c=relaxed/simple;
	bh=1SOfm5ksVGuteZxA1fchhDbmXAsbzBI8rudx28Ck0oY=;
	h=To:Subject:From:Message-Id:Date; b=Mkk6xb29mRBNBSWrLnvVjZAWTO8hwi63GpitshOcjuDhBtVJetz8TNfR6sMOxAONVDS7x/wp2iU+LTXrqnTCHd8mnZ31LJTBmL64qda/DLQKfNv5Co4MBm0LA99kvxLjRHauOhqoEJjc2/pY6NRTRC1mOPMHvFCnLFg99agLszo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O1kwPjy/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O1kwPjy/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A08CC433F1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 16:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705939696;
	bh=1SOfm5ksVGuteZxA1fchhDbmXAsbzBI8rudx28Ck0oY=;
	h=To:Subject:From:Date:From;
	b=O1kwPjy/bUv26CQlfMWwAKYsaLeD6KRlxptFbCieify9nMpExtuUE7EzFo+OHd0yu
	 KBA3Thk41S3VS+VhIfLBVjakxl7Lz2l6u94eQQsSWbTZtRRZNP6+YiQqbf+FP93Vm5
	 YU84ZQ5+94yQqikLCfHG/tRhWGdgxhWqVQIVv0w+5l2uoBKiQYC8ykO8W1P+50SvlC
	 QiIXMDgIA9BUZhwk1FvVvTQWyWypq8ksyMjTxkO9bWZqk1ykPs41LRf2Mn1VTzxNsp
	 LQAScL3oEwWDECdL55v4Bt9HAQTAkxc/p7tmLZIGm1/hy7/AuGqxjBoKLf85wYXE6e
	 mlDs1nub+/w7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61705C47DD9
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 16:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170593969639.6320.13321614544124360700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbd51ce97a808199e62f1c038bd5146b7687c8a3f6a119bb9c531fb3a99c35d2
Date: Mon, 22 Jan 2024 16:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705939696
