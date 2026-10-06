Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C3322425B
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791322234; cv=none; b=PZSf/XpxybXTwsJ/IzTFIbuDLrawAgJsVzAUSPZFxVhM0MwWnI0FO7kFjd2bDgAIXxUxmaaz34j1wMjAc4vgUla5T7o2g0XrTg/kvTGfxFVknKoTRgsh+vubLW5rYkro+mCVFH3v0PAsHRB6VWysmfkcbrdUrj/s4ybbt6dzjpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791322234; c=relaxed/simple;
	bh=7MNVD3Txct4A/4qm03Nz8LlZQj/opDQ1hitfI939aXA=;
	h=To:Subject:From:Message-Id:Date; b=WgZHj+NG8GoD6MOVwDTwj/gsw6GgH6iIOsTwdX6RwKxWY0zZdY/KFRGRrUqN1+jAQTME5ofIC/GJeTEFOXcJAIPu/qi0NkMSfkdp+2JCeJjeR2qa2uYXsaq7MBgXClLRGEpIDEc2Fe7O3Cu/UUHvrRuHpI0P4sNrK5JAkXlUjFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pxib1eUn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxib1eUn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF77BC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791322233;
	bh=7MNVD3Txct4A/4qm03Nz8LlZQj/opDQ1hitfI939aXA=;
	h=To:Subject:From:Date:From;
	b=pxib1eUnmMQH0s8t4t9gB1B8BzpbnnCsPAR2mOn+PSpL90TPE1rD+Zj0nXdlPUBkz
	 ft04P6MkALB/Fa6OUIbwhKI3I7doZPe/J0TascINwNQsXCuEWa6ZsMxHXzfbITkL5q
	 9WYStr3gp8Bl/aPu0FzDgmRdLuemqvWE4bseflB6i/JolE4W+D56cRF8DS7U8Ofqpr
	 z24qk5MQpAY59BarT6ir00wXkuze1Fk/NA9VVwh/91WV+yTdN8bFKRC+iJvSVebtlI
	 MyiHzC9gFH6k612Xao/+v22dae1WG4IIOevKipVB44aHE12pTZR+LZPyoHSI435Awq
	 KPRrihbuKwMaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BDDCA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179132223368.6857.4716622008468624053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f87dfc62f1867ea0032c653b9fc2923ff7130f9377d4eaa709770e6d513469e
Date: Tue, 06 Oct 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791322233
