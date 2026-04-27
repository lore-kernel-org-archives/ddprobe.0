Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B2A3CF67A
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 13:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777298254; cv=none; b=p+d+RxBieIag6DWlwyiuFLgGvbaV5IqsRyChzH25MR7Y4w72Lnl1ZhHbTe64HiIq9/bil5zKG5oaMrQKLmXxJDfyyOp9NUEjlBJS0DpwqC/apQvh+f3JbHNC5ujO3j987DVZjqGIOOT5dPQdPafOXAWk3f/56aDnj358HA1Fv7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777298254; c=relaxed/simple;
	bh=aZBEUaU4EGt7pvZ+mzA+BmUg5UelQyUI2jkY+6CMuWQ=;
	h=To:Subject:From:Message-Id:Date; b=Z303O2WxWg8/rsYIDMFJHAFTs6gPLiLLXJNRBazZqdq93F+7nW1EesHEAznsS4sL83yh6wsW+tTR89ixuaVGAlH00gR8GslW26rGv1PaaELQVVDZSyIcUm0l77A4zmvjw2UgInHvBpY1vbUf3iJfOUCk+gatzjY5GdicC4P/hoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dG4ZFJRC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dG4ZFJRC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8AF7C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 13:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777298253;
	bh=aZBEUaU4EGt7pvZ+mzA+BmUg5UelQyUI2jkY+6CMuWQ=;
	h=To:Subject:From:Date:From;
	b=dG4ZFJRC4Ig0gqSu+i5dOmmPqhOTJxnj8fIoQe5EQ2U1ccjTqJppn3aTAW4UXyvam
	 TTlti7I5gX7E1Wj5IZihO35bjr553sRb3aiIVgoUxKahF1v9wm7pgrRCPKWBWZ19o5
	 DBYWBZIR/MrOWkp9KpTgOfu6wdKwuf1M00busrp9Cxyz1PNcKckfIir4MTzXtEvwci
	 +NBKiy7L8nLDKrUIXgvQHB/NV5c830RDFPR2gWUgAO6ZjpXW2bqNeobOOE+qQT7U5K
	 j2tM2peYnqkLH9JWM/qYrQAMpamdKBGOXY+m0F3qWO25cE0+eaz/otPUdkp+Zt7ITp
	 h9aoAPbzirBSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA374FF8860
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 13:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177729825368.19006.8583857144211357989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7f3b3373781f0085c973fa0beb602625c808b76533d8082a2d447f39a697cf0
Date: Mon, 27 Apr 2026 13:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777298253
