Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F27C17E0
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738460755; cv=none; b=i/zZrZukb4wSyc1pCx1meUAf1hQsqEIx1h7KvPtGscepArpJaVk6EYvV1Nre8zAFr4zvBvXA/Xt3LCJtn3KixiamSjGX15rKzSfrGe/V1ICl4gkWDYEk0cXGGGYEvvEYIbzzsUOKcFT9UQ/6ZZ72DYLecxvFANhMwLS7j4vqeZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738460755; c=relaxed/simple;
	bh=ejIu0q8/7dSUr1+bzILV6EbY6qwFiYklQhASvR9wSeQ=;
	h=To:Subject:From:Message-Id:Date; b=DwSuwGdmioXJ7xvt63pSVo8DfFAmFQ+EfoNlngtMK0Z9yNH1ftf2yqdKjqfbNEd1taoiBfq65mcxKBBbhzn7N8WEc9qzJzFbqy9obW8kOIzi/mz7XlbahIR3HFvVWIKVtq3r4A0zEQ+fNVA85f6UXf6kyhALEPJseKx1r4APBMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2kDE6ET; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2kDE6ET"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B33DDC4CED3
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738460753;
	bh=ejIu0q8/7dSUr1+bzILV6EbY6qwFiYklQhASvR9wSeQ=;
	h=To:Subject:From:Date:From;
	b=Y2kDE6EThOq0FvEeXElebp8gaGF63fJW8Iw63bmkEtThwv38pOCJo9aWENHRG1T8g
	 GSEx796hxcFkx181gBpsHxweN0yoIFLyD9yrqvM14IzAUb1U1/nz+Xx48PJqYhVJMA
	 LkymMyGh7iGNn+WAPCWgGrKdEHorFdgWj6NYDtsDsrk/COsCiqHLiTv8RqvchISpSs
	 4L39oceAvtmTdUY90vdjIbwHcVP7ks+iFJKnGp/L1sBvsNjLGtw//Xrel40RsbpWn7
	 x8BQRKsu8YhRpXWKnKXhPhIdnmmkKhNCauhheUDnt82VG9jRoswnJFfVzmogsKxDw2
	 dCUFAo5CIvu+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF69C0218A
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173846075360.1046.10253344819993156953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dfa5f7ab6bf7d22f26353ce45dbe6cc1b5a9dc8a6184fbc1d0ae862ffb237dd
Date: Sun, 02 Feb 2025 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738460753
