Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C83933DF
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 03:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718681303; cv=none; b=XnybHj+cf9dl3AQDemKMqxiStl3y4sFKBd3ivd2htX1cKW3N36WHv71+y9vCj+eLz+uCytH0X2qf8HMNpSAERlBY6BRmz1Tb3/VkFuGoWrLRw4V0Y3hz09rmRd6WVHoqXWK2Ns2Uhx1fDiiEVZrIpxk/j172sRcwwMFegHbvGz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718681303; c=relaxed/simple;
	bh=WGBTlPbAFvR1IKwLac0eAUR1vNT/LTpwRvBDIoChlbI=;
	h=To:Subject:From:Message-Id:Date; b=ZRd5W0CTUfxmQwelpnl+Gumetic5XIQXVFClVwZ4MRynPTU868Tw8UcHsYQomHoIuDEGNc81baWCdtdFbLqJS7XhACUty0yPOXd9bjsNOVKd5ABAx0KUaSVm/nhtbp8134H4RQV8ja2ueNRbPEOm2TcoCsxAtuPXYUug6y7KHIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZFmePKD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZFmePKD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2184EC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 03:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718681303;
	bh=WGBTlPbAFvR1IKwLac0eAUR1vNT/LTpwRvBDIoChlbI=;
	h=To:Subject:From:Date:From;
	b=NZFmePKDAYk9YfoPgQCT9H4ey/QiJV4YyjF3XP9bGOvwEG3lXtN6bB2UQoZJ1LXwK
	 uF5aAX4pa64ocyZ5IxpKc8loTk1QXaM3e48KSbu+7J8ONtZu6CMlBxSkihstQP4fM9
	 B98LY6ptAVWBfb3KS4oWaNQky+G3HpFjvkWlJN8xxOh17C+NP+FhyerYXo5/niFJKq
	 7efVHA+aK7cssIf6IILFTKmXWqwuednD8VcBi0yZ8OqkkJOk5caTJUmMoOVdZ+CW7b
	 WEEKo7mVEQc34CmyM3/WDq2lc9U5XRGfda61krnJSV1GINcmReXYaSAMPWk0lATqwc
	 qS708qqUmlM6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 051C3C2BA18
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 03:28:23 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171868130300.4858.5027930616109381668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3af3b61e258161a6b1bd279c222b1cf8d8cceafd951fe8cb245c2be44470e238
Date: Tue, 18 Jun 2024 03:28:23 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718681303
