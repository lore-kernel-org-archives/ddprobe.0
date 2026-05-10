Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF091145B27
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778389234; cv=none; b=sVSfTMzbjyX/XYoM9NXcROmMPtujv0FijX6Z+OJcDK7viAao2LRrX/97pNylCqDIyHAQqrMgHl8BCd9qXfj6DnFXQXRJY0DCKB3mUYMnf2x2yWUFKH/lv4gb62ldvah4+La5m/ALAuiGrilU2aA7XFMlklcf93gQwS4hotQamEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778389234; c=relaxed/simple;
	bh=yX6INxmBq8vccD05PfsqOajZz6sKNmGv4f49HtNYX7k=;
	h=To:Subject:From:Message-Id:Date; b=eS1nufQs3AigEjVqLcHEmzJwrnzl10JUn2eAnYjQPodO70sgWrmqIXG3S8iAQOazOefiQD4FocZvTTOuWPi/aFs9A6vpUwcapHfPDOu+mbi0dagS9CtbdIHEN2yJeSDZLSqtmRkeaX7CxwCpguVl20AdIoD44b8v8BHyulmfMn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ag2tvds4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ag2tvds4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 46F02C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 05:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778389234;
	bh=yX6INxmBq8vccD05PfsqOajZz6sKNmGv4f49HtNYX7k=;
	h=To:Subject:From:Date:From;
	b=Ag2tvds4jRt8cL/S9lNQCilGEZVxlQxkACVArITS308fks3KBImM5iQOsQyWaXmei
	 Jk4Rzm4PihrGiDHMowKjEteRgPbym/ly/8stLOgVnuT7fDUJh8YgnQBfoEi2yD3zUp
	 ijmXdym2Egw87AgIDw2GKpoiim4/tWMNbj1DQvYCzI48v7XewCNf5c0sezw4//KfUX
	 6BbMuGnK1Rft46mlkXM2MWsB3iu+b4SsoNzC65qCt+bmHaEmGPhNR/VS1xDXntpM7H
	 BTvsjMHEyNdGdnDULGkMxg5oBpsWowmclLkm8PaZUFWIet06LJtsSTUrMiSjzMfu0x
	 04nah5+mAgWFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02106CD37AF
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177838923392.21784.7938200617914434309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3118514fed97fb7987e331e23c47c810900de831cf0c2e06af307e4852832f68
Date: Sun, 10 May 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778389233
