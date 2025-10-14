Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244E922068F
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760431794; cv=none; b=ABbag3hcb5JgV8K0ND5dUrpXUKDEyDP+374pg/dilsDj2deiR9SxnDOz4dXdTXa8AY0g56bDEFIAu1Ik5FYo8xpIWqQDfBbVbdHL4J0EUaAjk4eVTVlX1MQcd6LVczk23EC5bi8lqBIW6t7fjZfCLOB/VuOCtfkuznlULd5xIc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760431794; c=relaxed/simple;
	bh=kieAg9S4HT0cYGagtCFijUmg0NZE9N1NOZJnwBQMr78=;
	h=To:Subject:From:Message-Id:Date; b=jngfjr8nqManGZl3wcwNDsObPPh2TsE3gPhJ2pQHSawkHb5Evu4T0nRHZ4KVsIbAyElfXv9Y7hbkDWJIoLC5liCqt1Qbg4ukd0FO2F/TnyLjJBwmdV0xVSpy/6Mdk88gaaUQ/I4fkDP9Mbrxdf+CMLhlJ6PdVz16g6Y1iIngZP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JyVFbVrX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JyVFbVrX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A020BC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760431793;
	bh=kieAg9S4HT0cYGagtCFijUmg0NZE9N1NOZJnwBQMr78=;
	h=To:Subject:From:Date:From;
	b=JyVFbVrX2fPt8HUnyFa/5UQcel0Opg8kIlDPX8ODTMDDEkZ7kL5tDEH1MWFUejeIR
	 w13pEJ6x3jZMyrgDCPvgXsUWZAs01/eLXHf4YicnLfqJdj0clr20htfwf2Bew8mdPg
	 Bj9EENxX5T8JqoOql61mDTtRWhQ69fPwSs0U8S33ny++HYR9CP9p7f8ZqonskqnbBU
	 k8//H4kyDerfLY8FY1VsF+OqVIRar/sq2KsZ1knI8CeIzeEZ4lDfXFgIywqRIVfDL+
	 j3FpWiMqwcGYAjmae3GF7auCNfc1pz7/4JHKdt57YFXQ6l8b0Z1lRGSsUT70KApv/o
	 DTIs8/SCSQpXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBF6CCD187
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176043179358.1509.13474586082540981067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf21e21dd02f7eea245fa1954f904c5b0043f88ab957444c9f13b913bd485e24
Date: Tue, 14 Oct 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760431793
