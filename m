Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF74F2E2DD0
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755160793; cv=none; b=nUAvwQCfZMZU6kbUs0Usy6a1CTgPX1ct9xslbBPcAUOtmTu9627qpDocRqGg6EWrv++4b5L/OqlRj6uT+Mxx+vw0PbgrnGkU3L7V//+c60tmpf3V03yzKVToscXdj+pd5MvW9k2CnYfavPxaWmNxBtqz6gwA4gD36BPx+gn/HE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755160793; c=relaxed/simple;
	bh=N+pyi2JUM5pKV6B6+z/2NG+SYkhNX7d0uJXCqZHc8xM=;
	h=To:Subject:From:Message-Id:Date; b=SDQt98q/H6I/46XAHIZ2eINu8EginlasZQu78S7YT5V9QrOUhb4gKUHDyeCtw35LkRBNRGJQ1N3Gh6PhYwuDmyHzJdTR3+/wNkAbOAezeyBRPHqAGnwyWb/2aPrPZRx81lvaPx3d5rI5ysvQzT/EVNNLc953KfKLHnmoO89kvC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nS2VbVQ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nS2VbVQ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF26C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755160793;
	bh=N+pyi2JUM5pKV6B6+z/2NG+SYkhNX7d0uJXCqZHc8xM=;
	h=To:Subject:From:Date:From;
	b=nS2VbVQ1jP02N0g3+jsPFEkbSEB+gLBvn6r86aNjjrS3WIBGZxhIhhXxMfdiJd7k6
	 hy7prVF4uQpmbLCG4qVY4IPRqT+ktIOqkwf4KSsjxa27hcUXK9ZYhyWsXcFeZvfHed
	 IhYeEhwD8ImgI++wOJ4OM+yQgBMMW/L09ENYKeD302H1dn8NXS0z9ysKam6kHrnA+M
	 jiYAWzy/x2q2X4JJ1tjHS/6qg7b/odN5khWOL85rgNkI91TBTlXRQnAM0h9CnPGj7B
	 LQhE1de0lazWSvN9t4m49a6zziDBQnnVxEshixweFexq7MvYiIqv2E7RJ9Lw2Vzs69
	 jJF8+IJwMAhCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5FCCA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175516079357.3526.362162977446185511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d37ac2b8a3065c767c0341344315b41b831e8763ee7eb55d947a2c1d369f35f
Date: Thu, 14 Aug 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755160793
