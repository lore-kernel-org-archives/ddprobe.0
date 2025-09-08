Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2018B1A2392
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757293795; cv=none; b=s4iVJFy6Y6glgcUrZD56JX3RRH+GEDDp2N5F+RD9glJ6LTsgJA8b11NjJgT3mBQOzEmVJ+f9FFXQW9KMbmJxlIG/AU+OQ4Z4y0gKPYjEEhIDexdDok1kLZW9W0iMgH35lfcUpktp6AHy8T2vRh9cRIPLl3lwZ9LyreyZ9D3qUQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757293795; c=relaxed/simple;
	bh=TsaH+gJi4vns3WcfiGBosH+0L8ub5Q3IvgLIkBHz2Cg=;
	h=To:Subject:From:Message-Id:Date; b=dXGb1an3+yLT5sY0garoJBHzbdmvC33+TYff6PdXk9GN87wvbGfGNuZ5bBk3PELnMj8Ka0/KzfywbpRxp1yCVm2kpJE2WVJ862c+LRj2dRqPCl8sp4vOfzA9xDzTBXkN5ZhVi4OmPwzUvepjOmKninhrNDEUL4gaPv7hjSfwsm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MSrREp6V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MSrREp6V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A03C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757293793;
	bh=TsaH+gJi4vns3WcfiGBosH+0L8ub5Q3IvgLIkBHz2Cg=;
	h=To:Subject:From:Date:From;
	b=MSrREp6V6IOZrDcoL4w3WFnirX0pa8/MEb2g1AiKquyidKwEespJpEWBnYHQjrKhw
	 xq4a/EOqAdLmxDfe7+Ftg/9ND+of9k7EzQf+26pXckWQNP2W1XbTGQ5CtqDtIdjA7Q
	 uVR2j21SUTumlG+PDri/TdaghDPpi3wSDOAH/gncU4P40t/R/uzKnupZWY2lX+jaNo
	 t3B+qoG+45ltIkxNaW4aSPpguozlaPIQ09yE/5hZunzkVk/nbLu+EPjHMysTpPuQwD
	 sS/AOLB+tTuMrK6M2V1gB1AYn3u1OGuNOikc2HGGUiSPw/polYqwx8zhf+8r37t8pO
	 mT8Bio4qPSZiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90097CA101F
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175729379358.2518.14856428510511609572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9725ec038499cbf055c38c87af348eff670ae78adb6aa2cf3add4834e9255e58
Date: Mon, 08 Sep 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757293793
