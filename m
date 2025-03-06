Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348F4204F75
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 10:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741257534; cv=none; b=fEksZoD1yajMBLEH5gezj3riIOlzyg1uhoJroREVJ7Eo/yPH8rV1q7Pm/ORIWhV2Q4GEFZePPoG/EM/jSJr3j4AXwpOxIesCXNOw5dToJ41dQGykY5f13L+lMIdEj7pE6NFCMp7AXL/7CUOUr04XHold+iGhj4ZfBxbeiKthzp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741257534; c=relaxed/simple;
	bh=QVTT2pETIJiGp+5ALZzqDZ15TPJlosUQPFI5fTH/py4=;
	h=To:Subject:From:Message-Id:Date; b=oYSXtt17Loc6C9HPcE9rrHT3bYbYinzmKpo/xbKRLD4leoYVyckh3dZ/JfbzU3CnWjL7L01CEzhM7/JEcgsU2m2IbV4vjw6Yhql1UzGH/lTnyK3cSSueEjvaDqi+yl1F3BezMsrl6AyZy4ha0vpDE0NP0xhjjqPaQeJR0xkbrac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EqvQnlLF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EqvQnlLF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B23C4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 10:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741257533;
	bh=QVTT2pETIJiGp+5ALZzqDZ15TPJlosUQPFI5fTH/py4=;
	h=To:Subject:From:Date:From;
	b=EqvQnlLF4jVcSPuzQI1s5UpiihJ8JeLbyzwSFcsfcmo9nil8Hk4H0FNny/0fvk5vO
	 /49TTgoTKz2anPYLqrActbyg/LKKhWJE+c4WfD5swhyjdogWzkbmg3NBRzmR9oUknw
	 m4In2Te1A2dNT3kXlf9CDiPB+xxGOyl1fGTAblpUxs2tiB5sqR2MdznnXQoXxgUXuq
	 +mtBHPO0OmDI5veoPI+pvb/tdNQvqBz8Szmc4WNTVok6agWZ3XpA5bkFgoip6JFR/F
	 6gtVi/iDmwxsAsWxj2Bw/g55ChGPjUXpqKe5yINMJyu2NDjxqDWenC74YEcGIkjIgx
	 kgZ8IiIHui2gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EC6C282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 10:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174125753359.27298.16110941649282608700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 723718671078e55adf911357e450683bbc2ff8d9a4b6c06069eb176e70e22a32
Date: Thu, 06 Mar 2025 10:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741257533
