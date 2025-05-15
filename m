Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD60F9D6
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747270794; cv=none; b=pVTNAPnA0M60vn1fIhH1sOuH9akD1ZR0b3rc+EAMcbBmNfSAmYJ3AICFp4cFTamIL1j0Ts1loYhQytFtW74jSK/35s3hq9M54h4b/W++a37BltJLR1xUk+3jzWKJyHmeEKM4EBfy+VIPQZ0Trbev+3KLIvRn5GJdXQFeTfrRXu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747270794; c=relaxed/simple;
	bh=Y3aumo3ZpW7guYE85HCaT4rf0TvIL6H6Qnh0IDv4yds=;
	h=To:Subject:From:Message-Id:Date; b=bBe3IRRY9xvrcL/y9FUWyyyQhwJ90E/6iHN0tfXGzuXZA2jeBbKZnxlVohDgi5qr0tMLBNoTgEfS2xrLLtXujrlFDU2pTeMxBJZjI9rypF9+HOqC6UkoCMfvAt1q8UOJ2HvShlh/gKtP+7By1nxGR8QW4GBqnrUSDA2HSS/vWeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I5hVFofV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I5hVFofV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3759C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747270793;
	bh=Y3aumo3ZpW7guYE85HCaT4rf0TvIL6H6Qnh0IDv4yds=;
	h=To:Subject:From:Date:From;
	b=I5hVFofVZuZu8BKX58nER3dcKoWYHp0E4B4xncjaCSwiln2Kuz1jwvYOqJnFY8wxT
	 V8OX6QqyJAikDgEeSCpfn4VTiKdvdaGE/0rDE2Hwes8VYlDNE+BzYfu7YUiPkZGBfU
	 y3uCY68Nl4J9+g80tCH20mmUBEksNpEkUAOOPzA4pOvvOqO9KdkX4mhG4vtYCxhLGe
	 dZhpu2PfbFA2pSSC1X++PwqPpq3nPeRsd4frhp3jirJ50OszxfgJ792gbqzwCaoYQ7
	 o40fBYxPQ9owbfxuXiyMxcCtVFe6tU7VI+VBtmtWysGbHtgZS9LRwQ3x+KxUCyBn2A
	 R4Bgwb+O9PYXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9036DC3ABD8
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174727079358.23995.12292784536394938992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26303eb69daa1bf01372ed31183d49576283404b0d5381b90cca464abebb2c19
Date: Thu, 15 May 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747270793
