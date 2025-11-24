Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146E9215075
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 07:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763968914; cv=none; b=UvAzUjmz7HbyylLngpzUamfKdrnaFnfarvRs92ATcRCz4ZcknXS/YQeR4JuU2IyKYBXi7eY5iXnY9w1/P5nnWtP8EhidMuoz4xcxlDsef/n0SJnPbKdQismZTh9BntmaQ3RuZtchendGMNb7SVoR5Fh5pgUKaDTptSa3BoJlOxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763968914; c=relaxed/simple;
	bh=nzJfxBGgXVWfBRW+/RHAgaZ1QYHrMtSs3tPpyj8BxKk=;
	h=To:Subject:From:Message-Id:Date; b=UQVgi1U1R8nP/XKDOwp5m8XtSfNr6TAQAIVBEFwZBra2KH4IqBCBOYMazLBX4TzxRlYmi75ENJBuSBkI6VPogQExyUACA6SQnZV0Gn4caTUN8yEa7J7c6teAmcQHwSvtrhHiG1GBD0dWvvKdmtgN0Sywy4rCzVq6u+97jNrorP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5N2+AB4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5N2+AB4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5F7C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 07:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763968913;
	bh=nzJfxBGgXVWfBRW+/RHAgaZ1QYHrMtSs3tPpyj8BxKk=;
	h=To:Subject:From:Date:From;
	b=s5N2+AB4aVzNZrI+zN+qQ/Dmgcu465cFGKfwTy3aCCC3PyWwgDH3NShzhP8H/KH0T
	 0PEO6OFFSEuAYHGc52LB9K2z3g8EKFv/B5VR3r1L6VizK0PuJcpAqgMMUWBpF2rplc
	 LEosnXgaqRnDNaWzL7Auwoa3RJkbHiyKA2p89Xz4uEwZEcaU2wggC2vAMH6dYMFb6s
	 UR9Pj9eYNQXzVPeA1s/PMRicc+/gVVNGwnB1yM5I2ym56eIMnHz+K04Azy2d3c9Lwz
	 ofjVzN8Po7gdnKE+oLCPXty0BKdENfpnxUmCxwmOlQwMqNeiWuHSM254rNvxQ6NmRr
	 7YdQD1LZS2Crg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BBACFD31C
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 07:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176396891358.12697.8446055005129901628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c918941768256568d44df0b81db78b47c29a4b8818c1889a3e5c90ddfe5e561
Date: Mon, 24 Nov 2025 07:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763968913
