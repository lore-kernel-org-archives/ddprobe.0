Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2351E5B95
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753529394; cv=none; b=d9Rr+HUT6/3UifDXYV1Gjd6p4Hp/pGJo6D971FEoWmdXRtquglrJVJ/LlOpf30A/wVa5YmqoVrBym6/KTMdLiJPZQsIy9rUAmj5P44uUcOqaHLr2kkKDOmO3+XRZT13/pRUd5kFocHCyolXNVLcBU4w3jIw3BiWdiAOhSWIh69I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753529394; c=relaxed/simple;
	bh=tIyjvEBP5DH4WqbjF0w6rF8x+2Sds768umGJxWZ1rVc=;
	h=To:Subject:From:Message-Id:Date; b=oZG02NaJhVbCAr8VEXPhF4vQUAfU7XS/H7Tl/5p11k2Y8Uk4qf7aVLyr+YxN+zQAZ83c1DOQum1fKPD3l8XbBYzcPZ6SKNbcn+kH3BXiTTjWY8k7QxwPZUbMWAFM6qJ9BNy3vT0PnW05gjDp3TxGfK5nxBzVKHIgv9IMFTBhM6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B8//xReN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B8//xReN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58D2C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753529393;
	bh=tIyjvEBP5DH4WqbjF0w6rF8x+2Sds768umGJxWZ1rVc=;
	h=To:Subject:From:Date:From;
	b=B8//xReNBQCKrpv/tluczHz6EALDAj+YOiJhbu15rpLlsKB+d/QqpZR1nK33p3/BW
	 clJZnvp6+Rg8fsUz+jkCdJGwdhZ+2jpKUJhxzLEdw2LTsn6/qTxGK2Sg5pgdlTh7nk
	 riGCIX0p5YjBZhMsj4Gx9LJsWDjwz8WYF/BSJT92evxQ8T9ZT95x6tTAKMWnT6SVC0
	 1vaa3ApB5Rl2+yAqO9ulYtKyagGhjghXM67BRPCTWMHPK1/46DwQOVE8dj6g9wFJIR
	 UALOdAV8Hc7QDm1LRf3pegUdiIkxbHw2Qv4dVyou5d8VrrAOOBaQgJsWQYI7OTYETI
	 Ov2v5MZEVznOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9488DC87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175352939357.10038.14676645317300365304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8828e4286f53e12500992cbe64623713e0bc100f31f19218e297dd2b56b32ba
Date: Sat, 26 Jul 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753529393
