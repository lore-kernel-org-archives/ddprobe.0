Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FA529B77C
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 00:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780360474; cv=none; b=lDrr8NsaunkvSIfbCKvSh98SfTkH9uymd6yVmH4Fd7p64Xv4PWuZ1I/Z/K718b1iLrMSJ2Ssuvz71nOUUFEwqXJnEdu6UEjE8m4jvi30VPeIzypKw4MZT1nN4uFV3yF8fyKQnBteieKaEyeop/wTq6MFfWIG0dRPBRR/VOSeCU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780360474; c=relaxed/simple;
	bh=r8Lnxzj2B0WV64RRVDcPG0nJM4LNMZ6Qb+e/dEcfufg=;
	h=To:Subject:From:Message-Id:Date; b=e19BT6UcsRlwguxvuNFBfyEI/PE38bvnB8zOp3XegQbyiB20cLYfOc0cRtUIsGwPzTMWgy/hhtDyupQ0YNocYLmS9qBzCgAZlXVPm7kPUITixQe26r7AgR0RaIuHP/1V4RtQM19IsvqYg1p8ddm4CDBmrcW9S6hW05VBVl3VZm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHCgPzdb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHCgPzdb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C27C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 00:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780360473;
	bh=r8Lnxzj2B0WV64RRVDcPG0nJM4LNMZ6Qb+e/dEcfufg=;
	h=To:Subject:From:Date:From;
	b=CHCgPzdbziknVnSYJs6eM9AdgNfx4fuVSxXAu0iTLH0gh3k21TivsfG87kOgzGzx6
	 QUoB1YdY7Q5Tap82Oyq3nDoG8d102dvUOrlQ1uU7/V4XrBSJS+hx3wR1af1J0UqMzk
	 8CvqtzT8z8Nw4vZLijusXBNhzj0fcWhMD0ODjzFHQjzBR0WPhATVPRPh4Od5vHzTwp
	 kUKRR2tH5INg+nHQfp8dMSXaHK6+tbqdbDl/w0DuiLG1uvjOdzCcGhc95N0u/FHxXd
	 xiThcaRb2eZXYnyr/aT+piF6ImI+xKEa7dy8P+OdMBOiN0sOR1GSd1vXN55j/PEW44
	 LzcWtsaJ8qeTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1FCCD5BD1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 00:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178036047368.30722.1491544459945332051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7c6ae0b2cbbbe4cde9a7358e96645d8d8204a60efda6cdffe25133baf734fc8
Date: Tue, 02 Jun 2026 00:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780360473
