Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A6511CA0
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730389554; cv=none; b=GI+NaZp6OS8mqenscDFhZQYpkSr87RGmUnafS6KFC40SChzuVy5OaQplaEM9L2vjlm9NVSocAHWMb0P/RRlaniE5kzfuQc4qJ1YsyWFNn6jJ+eeABx3hlCSJO/um7XwPRzbVCVSO5H/kAkUssRLXRYeamjOG7UDIJfA49w18vQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730389554; c=relaxed/simple;
	bh=DnqNmmcJyzqFOeCg4qtf3dnQ6x9JxV9/i5MAGfDPcdk=;
	h=To:Subject:From:Message-Id:Date; b=cpBE/OUOS8btEYzy7s0Ad9j0Wc4xwaMXB0n2PLiiR9EJaE4g0SoHVmfCgrD09xx/Eb8LqozkAQiQt+FgYkldQLThQKU1WbUODlO/ZCUZXP6JJ6Q5gFoo0eVe2UedjfLNOMehsjLMC3zSchJF9tkKRkQaA4kzKiZUiUXWHXhxfLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kp/rvhkP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kp/rvhkP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B495CC4FF10
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730389553;
	bh=DnqNmmcJyzqFOeCg4qtf3dnQ6x9JxV9/i5MAGfDPcdk=;
	h=To:Subject:From:Date:From;
	b=Kp/rvhkPEYYkPEXiLRNArODnhBJeulTrT08L9xO9sCo7rya9BIHSzYR+jN6DsnNxi
	 pFUa7IV12oxcWCzp7i7mmeWlMKAcOy8FE7Iehdx4gGj45gr/s5WT2ITi0AFVRIIlP0
	 XQfvj61AVXbk4TjNkn0nEZgTI8GbgnH6sOX5SKwAU6C+2O+bU5ox9cgw2i2rHdyptx
	 Aqe2KrVV9P2GhZip3Q5eYtKc/zhPAd5OcXsSS5EBqLEwubG0cO7/cCBPgcnVEJ0vT0
	 nrqtUVnKX8/S0FfEH4aXIGxDZLlI0GQPxqzc2HOFFabPLXbxz5fniGH8bCJnKBoNMS
	 EJ0XO4cPk8r2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7292D767D8
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173038955366.20097.3787819911369698897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 023499fe1c8494b5a61e41a8fd740a3fc311144a4bedca2496afb21231ea69a3
Date: Thu, 31 Oct 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730389553
