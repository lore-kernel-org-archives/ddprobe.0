Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E073175A8D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 15:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780674274; cv=none; b=t8lGDiuwVHE0CssAL/lCA2CU8csvlLiQTqbXE9D8r7Mfy1aSfmEQ0L9deRlBQesBXiMFSW+yx5VNSCAOKQLEac1Ita+5qU4wGTMsA39DcAyfWJU8pQXqUKbIRghClDfCFaiHaj+jBrtuR0yLtczFC3dhryKnBXdfQ5anuC2gJAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780674274; c=relaxed/simple;
	bh=P9m4C5D/+24Og+37v5KlsiHXMv00+lKa8an9hTS1ZDo=;
	h=To:Subject:From:Message-Id:Date; b=rXaDJ94xpkxCvuEpBHOhX5lz+yJX6YnqB9Y3ILS3HSDFJ0Pg5W/+v10TOp68BEvCdRhq4LyZZe/Pfq4HkQWS+S5d9URcE2a+nrlBcdF83WZJSXCHW50OpoHbZTNUhrFPlizioHXYLtACWPNquGDjdyjE7kmjFcRiiQz2JX5heAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQI3FwcH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQI3FwcH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D793FC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 15:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780674273;
	bh=P9m4C5D/+24Og+37v5KlsiHXMv00+lKa8an9hTS1ZDo=;
	h=To:Subject:From:Date:From;
	b=NQI3FwcHaL5nhQZziP7DRWHTx2g6j7f/pwYJSc6yErxG/hjkPUF/BfFTsbKLWaDqT
	 0RRKxmDqTmh6OEyNxUBX8ej7D1JQvP+XdpFWcRRXkSK6GOizlSzDmIOl117HwoZ2Jd
	 nLbwMnAMf6nJLw7bGFiIBDC4wL20eVdnQObECfQBawsImuCwQyzD2rdwV/Os7+6SBT
	 7oHXWgMaw+khIu7srEcutiHSHBKVsHYxgsAymphyInR8JEzeL/WpAPZ0IMy4ZbkVmU
	 5ffn8jOIsmB/xbAZbUbgRYheQWRLV4LVTyg2c6tLK4dWN2G+fFNnSa2j+U+rCPGVFs
	 eO/Dz1cPptABA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B94E0CD6E7D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 15:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178067427373.7850.5228689464212676365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6275ca2a4127767cf2df2b2ad2dbf279566ee60316e1099857cdc6adc51b091
Date: Fri, 05 Jun 2026 15:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780674273
