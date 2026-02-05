Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D2C2E8B9B
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770265434; cv=none; b=uTS/vPocUf8NfU5xtGBm5+GMRLyA4JpbMxdd5Bry3VgBXdF/cGzih1r3sGH921+PCVVJlikHuFC22N4byLEM2IaKewIa7F0PJmfMrzxw3Un4IGJBqOjI4Q07SzJHlXwgJ+hYQz5XIvw3jVEWr8KxVxUsj3TsU2lpqASOP/04t7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770265434; c=relaxed/simple;
	bh=lMOxHEk2NbWwYKwZFNmXhHzVGbnWcsJHzKEO85l+dHU=;
	h=To:Subject:From:Message-Id:Date; b=Mjvxyb174CwM/EpS8uEmQZCS9C3G5pfPVIjTUZhZlCQasWyP5xzt7lxrBboAPsm6L+R0BUnCBJbF2/QVFbdRj8to/WLLM4Rx7ZqpslfjWvxfjuaTiRlQTaZwGX2PDgomVjpXgZCdeLZMXGwplsYiibRcVb4xLFUt4xtMyS5P+5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBPAxIFT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iBPAxIFT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D82C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770265433;
	bh=lMOxHEk2NbWwYKwZFNmXhHzVGbnWcsJHzKEO85l+dHU=;
	h=To:Subject:From:Date:From;
	b=iBPAxIFTEUKI9XqT3q+z3UGEZH0R62TGi7ZrxN8cx0bJb0h7BKfMAEXEB7uWNvVAt
	 YT+CEYNj+Bs8KZcw8pqhr1Ey1hDpRbyQef6nb5aODbtizrwc+NsdO+eOBRwHB2292k
	 8X0OYt5FdY8KR1JVrvhCD7RLFPVtcnrSStRymOOEcpMPNENupE8Mcng1rWKo3I7fci
	 6Q2gdADBymLhScw+RWQpNRiVGYA7RgVjfM3yjgVq2soP2XYjevuWy2LE36hkpIPwSN
	 40Egl6pvSr25dzAMDu/vkuq9f6IPtHtko6ZW/fJX5+m8Mj+xu/XxelrmgTWQ6W6R4h
	 vPURninu3iR/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDFDEA7960
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177026543369.14915.9785949095616637802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec4f02637777e33e008de37c6a6385e6d388a39e7704c240a8f6e9a478ab2b43
Date: Thu, 05 Feb 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770265433
