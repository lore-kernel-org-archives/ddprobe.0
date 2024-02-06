Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2EA7F470
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707199097; cv=none; b=Uc6TEWDRDyKYKh1p8Su2j7NaD969uoX5AENSDvu7/5d4ZcmHuiMiya5w67ljYrqetLY4B23HhBebGP2pjWE01z8me5XwvuUerp+gnJLEVhFAdGvkTGq40f5cKpUKwnH+xXu4V+SjBXr3bOp8QX20Z1FkKY9jblFleFdlbQgdkl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707199097; c=relaxed/simple;
	bh=obIVgQMBW7ZTvZT6aSUg9Mq0M72NmLpY2dO0lCVCRes=;
	h=To:Subject:From:Message-Id:Date; b=CB2WWJVltzBj+kfttr0u9wK7xowySp8onCuxDt3JvfGo+g4Pci19CY8SUN4nP9zWeessJid9PUBRntT7CqQhJsrFKDHWFqVklkeFWp1J2aLgHilV4TW2A1D834sM+xvGKjmJprZGaOsWMQhSsBGIpiRJa89JnESy1Sd734RwJGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=clcmw/qI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="clcmw/qI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F211C433C7
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707199096;
	bh=obIVgQMBW7ZTvZT6aSUg9Mq0M72NmLpY2dO0lCVCRes=;
	h=To:Subject:From:Date:From;
	b=clcmw/qIzJHhfbQK42zYrmfPiGqKocuGgN0PaklSCpGUYwxGcFlz+cl/oK0JqRIyJ
	 ON5k4DCtijf4cj7pCy1gpRsYJvNTZ++gVhbNgLbMIqegal2Etok+Oh8Z71qiUlRURJ
	 l6IkgAMaXyekYux6SziCFTIlsLOL0B/vZ92VvjNrhEWiVy40+sLxLz3QM/DDfNO4uD
	 KxWHJa7gW+Po8hLWTdmY8BAjcAgxgqCb/a/GTunscbNW0lCnz6tflrHPWJu6XtQE6o
	 HfMJ00mM88/GK9jUWdOMvbq4tQcPH9on4kxDT0PijmKBN7obW6jgYdbFACmSc3+iF/
	 DXYApFCSAq3pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 733B4C48286
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170719909643.2141.15933667083173909206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4822257c80ad2ab46996a63873531884bc508749fffe0ac41a98a7ce77b4e723
Date: Tue, 06 Feb 2024 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707199096
