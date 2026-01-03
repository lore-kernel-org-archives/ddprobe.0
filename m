Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24DAD2D97AA
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767443034; cv=none; b=OgCLszNPcFKip8ZF3envSEF8ldkgKQYJF5dZ+cG0FRgOctOK58QmRK6b6EJofyr1nhHUprmnUPplKImKRw89NARdg3e/R8YlFH/TKnITAzx5JXNnXwbKdTR+xzqKVZc6s1O5tK2328jH2b8TI8ROX/XrWNuoIt2JspT6GnXekDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767443034; c=relaxed/simple;
	bh=zajuaDUITq7JMB0dTaGaalX108295TKvjJ/aH4yLoRg=;
	h=To:Subject:From:Message-Id:Date; b=tSmAh6lgCDlHPuvrt+Hkh/jhFCS0EiuKQaAga93O8t+QyF+E3qoslbGQnuI6SVn0Ib/zfftfGJFgWCF/Laqngpf/UTwgK/wCVLWKoq73UV8g/t5NemVojSR87s7JM79ULsTMKXqBTrmvyMiyBtdDCatW3qyO1yQerRwGGSvRsp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spWFv4TC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spWFv4TC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4139C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767443033;
	bh=zajuaDUITq7JMB0dTaGaalX108295TKvjJ/aH4yLoRg=;
	h=To:Subject:From:Date:From;
	b=spWFv4TC/z5+6v0Wek503Lp61zDhfOttTRIq0MZKkoSCn8+ukHMSPWZqRudn4B9Wl
	 LGR3/DSB1bUyFA3lP2vc4djlyuftxvW3g2MXjfs+swYsrjVoyePT/ifci70/bwtt9P
	 LTe9QjH2ufVfhTvoktwLMqxUYCH+aku7VvrZXOTt7+Vhczv8samTVwNWA2BA9K6H8P
	 giQvKfRKCZVYLCqT4as4iR4VIbzw48wAhY5xgIccSx5NkDYjFKwWxGkrqwz78zD+W5
	 l18neLEOLV834ghHYEhWXQj0byHNfCSHw+Oefa6VJc/O8/lNR/xNB4OrBSxb4Hsq+8
	 cOHhxY1I0VvsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91423FC617E
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176744303357.27852.1895433380010512388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e88c38fa3df270bbff35f400729fc43731899515fc1a0c8801ec55ba3d2a7115
Date: Sat, 03 Jan 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767443033
