Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 705F3418360
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791961234; cv=none; b=BXAiSPLsZrwyfTvM4Wt45kcA0KXykbfIPXWOz/jpQRApSeW3SDCGATSPDnPed5seDdrV8XsSFIrhekoR4C2ta2sV6n/RXQMajTSRudCRJtVXZJHRSEoly9DIZ20QMlPjQcgTbCbaul3QjGZeJn43spNk59zngtaQXkY6deChD1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791961234; c=relaxed/simple;
	bh=hltrE8voiJsmEJQXQopKIEAJ8/lQ0LzjhQIy8mMAZaE=;
	h=To:Subject:From:Message-Id:Date; b=UlGo+2aiCCgtS1F3dx8YRRJ3VernvuL8gbn8vbWRQ6Jov3nLt9AKX2aJYhBw6tBsd2Mj9yH5P04WHCF7OOq1bQoEYueFnWFeXdJ/Ro9TsUrcTSRL4bqjas4LRhhXvWH4BH92ZEqog7f3kz2ruOQec29YP/fsHrG/oRwRRsjHLjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fMfgxjLU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fMfgxjLU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D617EC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791961233;
	bh=hltrE8voiJsmEJQXQopKIEAJ8/lQ0LzjhQIy8mMAZaE=;
	h=To:Subject:From:Date:From;
	b=fMfgxjLUaALzestMwm5NKs8qiLg2hb4cF4kYAR+5Fhji1hexGsc4Acs3H4zPYPwVF
	 ILsRkXdOTmr51myClxRAPQa0N4zjnNwNxV6Jy7gNjGpeRfJl7NHcarI1gLsn41FZ/s
	 SL5EPsVL/hvp0Qv0DHCtDhu5KmSQQ2oZZAwGo38f6PFZaKlu5/CcWMq/rTW4aw5zCd
	 5iHiP4FQ6qNCI+4WxtnphghXIfA9L/VUnu1ydwm4Z7S/A2HodHks7rM5C8IdlghMxi
	 3+W021GmBZs4yT7sIj7MD8RZukjV80oJw6BcZOU5O07wiluyhvM6w0KW6rQf4O2adI
	 9xoX8K8tYUBSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12B5CC6B24
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179196123371.22316.17149099020006612582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ae01a5691c8b5dc15d6068c342ed63710d20d08ed80b7c30ce806787dfe939f
Date: Wed, 14 Oct 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791961233
