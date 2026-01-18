Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1783828852B
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768745634; cv=none; b=O/gyuOW0mPGsr3pJte70bfs87gukupsqH8lX+OJGRNDo/eJzsaM3qA2nPNsnxBWE9k7D/0pPu/I58KJUHoqyRO6BPSHzJVdrBEzhp5kyokBAQcRmPjexLTVT71yG+xBVaYCvfN0y/UqXBSpaqbi60sGdP4k15JV0RgQs8cDQuTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768745634; c=relaxed/simple;
	bh=48toTy/aCj33+SUbEfqt0UdkYToEFQD7eSyI4KMqCyA=;
	h=To:Subject:From:Message-Id:Date; b=EQ/gIGeTveH/9tzB7wLpolYk80kUV4HOxaBqaXwU+EudKSzjMIkZvPwB0a+ewj9UEhsq9ZifmtxobPdgxEopmrigAgE7FV3pSpwkCz1r2+K6Pncv1ODVOHdGJosdhejj1Rimg7H1IeKCM+rXVvVmHpz1ZI/9RkW54ALKtJjhrBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i+h2EyuN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i+h2EyuN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FC4C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768745633;
	bh=48toTy/aCj33+SUbEfqt0UdkYToEFQD7eSyI4KMqCyA=;
	h=To:Subject:From:Date:From;
	b=i+h2EyuN+Az1oOMVHTvUImuxpMKk9mmaikYprnJ5JwQwRis9186iSXX73t/DByFSN
	 NDquoO7d6CUX+bRb8we6gz0gn/Q2sB+Etoovn+MUMp4GWuMSzqvtrPoZvEw6lpfAC3
	 KToow2Ycgiwp+7/WVoMC66OT9aFXjf5WmtTH7ULy6olpl1NQESQDg2CRqrl/dAPp+J
	 tLdPWx7qOjUo/7SpbMiOD5HIxGIs/jTFadSGqCrElB5NBowIw73ir+Epr/eIRb+C5O
	 BzYz4KLxHI0KGg9SYDnc7AgwkSjMtTNNDD+nVFmxuneobIwarSirVJbOQsHC0di0bL
	 PMo6BepqLABXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9638EC9832F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176874563358.16427.7974640991535995861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ae11f95593a41530d9309285febdd15dcd32503911507ec1f8905bb6d626037
Date: Sun, 18 Jan 2026 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768745633
