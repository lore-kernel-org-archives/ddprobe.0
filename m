Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424363ACEF4
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 09:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783070314; cv=none; b=FnrosIoAB25YHmUYwHXCRdTjC10vdPnf4Y/d/zAyYc/671JlZcbzYAG8MBQOnNxIT7fNxbH8yF69cG4Xp+50xlMqwtR7rNr+YaGfoDZvDGg64Nd4GeUTIYWch1BUs96JlC8zEk6Gf/298/wEyqg72CZyjJ31FzMYPKZ2X5sOmHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783070314; c=relaxed/simple;
	bh=GP64hiwc47TgkZY/fu8YZjiIOIybhSxWO8M5BjG48x4=;
	h=To:Subject:From:Message-Id:Date; b=KRO8HdN7WS/ZvW+wFFUtXc+BC/p/h7v77sNYNwgtFt8pSsgtsVGnfzpCn/tSfwzbSSSlpdk/4tE1baUTBQ7XyEToKme8TtIcCN3pcYfqbwceJPCJiWJlQ9kTrKuqCsQ1OEAc8XLp8SxPcPAydBBENacS7BLnzfSu2msrzavXZrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dbCxvQvn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dbCxvQvn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF81C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 09:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783070313;
	bh=GP64hiwc47TgkZY/fu8YZjiIOIybhSxWO8M5BjG48x4=;
	h=To:Subject:From:Date:From;
	b=dbCxvQvnNke22X+fgwA7fLWJD8+gi+4rBD0zjDrGl7yyhd44RZBkzO1/BGSaRVGlH
	 eYAgdyfX/raXA890o0v1xlni0UAPAwYeUUZ+N4zeFHRMUL7Ry1WlGqCuwMBcxHdbyj
	 XkRTTOv5BffPy7BaS8k30fSGvYG4hEPx6GhVF3YN6VSWWakva7y+7yChZj5kfTMcO1
	 Fw1mPPP1Z6fpoyQ5EtRy0XfjSeWocPGqJg77gfEOMpCRvTPVBz6hIZOW/2iW0vUzJt
	 KlnjNbM6TemOoELpoxdOLRfjtBT41eG9zoczvgUmCMo7XtL2m8cWhPaIGEu9SjHaSy
	 mSOSnA/uz/Uxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A59C43602
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 09:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178307031368.18624.1914082528181143805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fff5525918c7f07fdf34513b3b3dce68d18bccd71b37ceca98f00d597d932ee
Date: Fri, 03 Jul 2026 09:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783070313
