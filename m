Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B607470EA4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788249034; cv=none; b=iNGuvFZnbPMvDPzAQ0SNxcUGc6w2Ft9Z4CctYHtRaVIPBqtupXnJYK5Cs0LEz5s1HEbaBx5DMzPBBLiA4p1MygRWdmZk5jLdt+6P4LW8n+//FxnImk4zPNXNBAa+p81Ln2GnuhoLR3Z8LEtP0Wk2F1mMvOQxFoLzFk1l+1epe/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788249034; c=relaxed/simple;
	bh=2j9Z1x3yE3JL49eD37577iLOEUI7w92AvptMPeFPJl0=;
	h=To:Subject:From:Message-Id:Date; b=Qu8bCMFRx8H6i1NSATKpx5EO/VTYd38MAOUDogz/fv0QqP4Yv8oVUJ9Hf819fvMz8+OIeDWwIAL9P6LdcYknNc5M2OU4ijEWjLi2oCEP5U4cqOsYUY6VIjHmam1OdKScoxEyemUQslDHoJdENg0lh6HAJCnFP5iSjM8RGg1kwTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d0p1G+XP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d0p1G+XP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE698C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788249033;
	bh=2j9Z1x3yE3JL49eD37577iLOEUI7w92AvptMPeFPJl0=;
	h=To:Subject:From:Date:From;
	b=d0p1G+XPIv8rj66Xz8NwDqkdyYV2MqtqTZasQYLlLtGcpnnlpvmCPls4ZrqGs54pJ
	 RkL15nr1TEWqVLu61qIrTKqryh8nbpMsD9/vrNq/czTZXpTAx5i3x9yFgvxTPLSpiG
	 LXigL+HYJb0Zao6i3VSNMLzRHGfZsiWVOvS2mGBwQTyVQ5zwagoHQsm+pve2XET/fX
	 SHMsu3W811yLLvUOt2Yx5ZujbytuZlfqwEY+cDwtTFfrr6QTWPKZXdzD0DFVM0r8CY
	 k1qNdpdWGCgxzZ5wEMEnqoWu8eNPWGPd1e/o7qUFWpbwnblI6j4XoZcroY77YIXa8B
	 qBf9Vdwopi69Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDE6C61DD6
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178824903369.20197.17500553904568956645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bad4b03cc032fdf4a3963a008dd869ff4f1f2a4c4959d6f60ba8d6a346b2736
Date: Tue, 01 Sep 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788249033
