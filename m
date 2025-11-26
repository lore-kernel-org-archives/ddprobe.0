Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4F6625
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 00:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764115374; cv=none; b=S+IegBHgQj2QnfQdUQRizR7cXwGvaC4WGP1kneyDcnQyGO5r3t+4wCTU0mnsqn8fGAlFLp3wRGK7emII0sqwqh2zizHNbiEjzoUO8H8H8+iflCz9IAqYWhzkpXAYKITgRjgFIYoW33zpCIVGEd0oGLh21LNIlcsEC654tzttnI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764115374; c=relaxed/simple;
	bh=IbPuAVDqRsK72yIU2dw8hYeculleo5KEoOMYUhOwhnY=;
	h=To:Subject:From:Message-Id:Date; b=dsP0TEpcyf3BTaLuCBm8dueMfbOqtcYJu85ezgz4yL5DMSAfZmd6G0XzipNYGGSRxWVtsVgwNw52GKvXbUmXxqTTncU0mrncmQEu4Vl6Hma4+LMb98jq8P70ebQ3FIqaHGT+bPitAmC+2x9AiS7lVts9Nj5ulG75Jy94tEYceyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6UNIXnY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6UNIXnY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE99C116C6
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 00:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764115373;
	bh=IbPuAVDqRsK72yIU2dw8hYeculleo5KEoOMYUhOwhnY=;
	h=To:Subject:From:Date:From;
	b=l6UNIXnY1En2gzXW8Vqwq+FIvoY2veo1POhRFw7MgmsUqYGiw7riJQ1IAPMziarw3
	 XElZtoMna+UhQgPjO67cKNBe9isUN5ckiUVW5BGwtabOp3P8nzcm1uPSaHyoCR6uY7
	 DrGZSC30du0T0EFgDLNs9ImLtCPjd3DSUqYcGBzJ4sCKFVTPemax1m9NlmMtoOOFZ6
	 TK2tyHnJHo96dXXJFUNky7w5Yx6RTG5oY6kKw8GwzuMCnIqLqVmt41dOE3s4WEWor1
	 iQebmnN3YocFX2HxQ2tyFqDxHguMzMFmkhpDsx3hQ02/g2Gp+iNDyrYGAM8w7RXjCD
	 XM4Ubs0SU5Rmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C9CD1036D
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 00:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176411537358.16614.1814655756874631398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a03a39319677148b677a88a65954a82af447126379130cb5d4643d1a77bd3789
Date: Wed, 26 Nov 2025 00:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764115373
