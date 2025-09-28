Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB412BDC23
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759097394; cv=none; b=m6s5ZxqH/Aw20BSP5+ksNnYpXryMRwWJo3uPi+uJSZJmIGko67rIx9HEj2OewdMykWDJpB/bVu7VtWY74PEz3RW1QUHtTxZE/jxLFzqQ3AO4nuNVnglRORFMnMIvbLC0EkusyGb0+UgWOXxgfRJUntpOxSS1d7tzaNkK1YbJsqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759097394; c=relaxed/simple;
	bh=8pwJL2StjGAEFIc0uZ3S5wM1VoY/aChWhnsNNX+FWL8=;
	h=To:Subject:From:Message-Id:Date; b=DPTZMoQ96CBQyY0irij2WYHZJa8ZYa+UdxKcITUTMUgdeHhjrekuocmO4fO2ORee0RCEc3gTxnt/MKvN2X2d7Dao+trs/Ccn5OVlVMsD7AHb3Ec5XEPqXXHpNUBRJf+k9Bt1oUV2PaNNJD1USMtISV33pltj9H9YVxFJM1JfR6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u8qrdsvb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8qrdsvb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A2AC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759097393;
	bh=8pwJL2StjGAEFIc0uZ3S5wM1VoY/aChWhnsNNX+FWL8=;
	h=To:Subject:From:Date:From;
	b=u8qrdsvbeRXvGvogN0dSGPM5UaaIK14I5qlgwQRvcqezzbLcLSIx9YXlK/egxA4xy
	 nLmA4PfWBeiEzktpJB6/ElvZf4Gu/z7IWc8O9RwQXjt15L24VS8oQDVpHesZQRJgJr
	 DvI9uKL3cXCwx32XODM9+4NKCtf/FYzLdqBGBNRBT3MGXXrlUIAFKhgAEJunhLVk3A
	 PpllG7oxKPXWsN0AQLoiRlGBlTHRE7wH296dGcTXrxGSqoe3JWqAHvMwcZaeS5YN13
	 ZywkRaU7CHwR9zOgUMOZ/V4smr/KAe2BBtGDU6//CBauGra2a6bsYZwi8ZO+GKI2ay
	 CYvHC13+nRvBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D9BCAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175909739357.8349.11583156256002663950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 289017b4fa1921ed76db57ae8909c4c66dacdf5100326a6f4b30f61a41864a93
Date: Sun, 28 Sep 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759097393
