Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C31C38E126
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791411634; cv=none; b=kL5UVTzDOouB656TTNPQj79ILE0R6fAFSIjF3s1yDci6fNzliUDBYl1NdX+AcE76/14Ve7ahbW428MoUOEvguF4dE9vRO2ahehKEVyWVeLdupZjqTd/t4kn1O3KQTSWM4G0znu2qwfxgighOGu8omZwhGGLoaIiB6axxbMzGoME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791411634; c=relaxed/simple;
	bh=hFTwfcPoJ2XQDb44lCBeQSwQ2OHxfobGNPuPhb2jZyE=;
	h=To:Subject:From:Message-Id:Date; b=ePAgrhBnPtbeFYqnk5TpRpehvS138de20OTKtH8LgX4B51VPw5KRXRsYHYkMSzUjjhlybjz+EwM1WWzYH7E7GOn66ckFbtA6Pq7sQN3DZ7Z21kYiP4kNvLSAjb9V/WqvkxDbH9cWrM2GY1ZepD++JbNss5HlsYYpBU2JTvJTUBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g4oVXAdj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g4oVXAdj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D571EC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791411633;
	bh=hFTwfcPoJ2XQDb44lCBeQSwQ2OHxfobGNPuPhb2jZyE=;
	h=To:Subject:From:Date:From;
	b=g4oVXAdjBsYI8htQhOPPgh1s3SY6zQSzDjjJ4lLPlciyZW2N1ESWQEgtbo3ZKMCBG
	 FgTgC4uSjZfo4oF3/CtxhKtif3Krm95xbH5qBWRzAKKxK0NFU4AcsSCTjbP1EjmSrx
	 6CdIKNK7B1oobJeZEkDdkc9GKXeul14gTo41hFLY8P7UU7xKpTrGMnqFgWXYGvBZJZ
	 fwDM3ako82ZV1vvMrhkj7NXxWoNWKsvzwq3AeVSNLWbg69Nr5yhnuI0WxPGy9xeRVe
	 HuiSjN3bNQTARxCJ1x7QD3vT9mGZNseurArce9SnBB/gVU45bCW9c6kTMygToWBlkp
	 XXH+34dSwoIMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BCDCA6009
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179141163368.27318.3927266083264376014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94acc92eea8aece6b6f4d31919212813352e15edec6c59e06fd999489d8797f5
Date: Wed, 07 Oct 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791411633
