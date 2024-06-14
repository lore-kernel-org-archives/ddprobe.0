Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4710A17C72
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 07:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718348903; cv=none; b=J7d/wiBZjS9/Oj2Ka2zR2vudivwolCNcqCkIOrR12ANw7PV2BHsKqJeBfkSia3jgBKLg2LHMNe7Gw52Fk2G/taQDt4FP3wWEi/J0VIjuGBAddIbbVrKF30d69OvF4FV6WJ1BXkyQbffOMS0L+1LFcIqAIZ04aFD40FlSFhu/x04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718348903; c=relaxed/simple;
	bh=oY05btE5pRV/hKKqSvW4heF12+utFf2p5kpee7FnTho=;
	h=To:Subject:From:Message-Id:Date; b=nhtUJcgBchmylJ6PCHMIfsRXAOU90JkYe9KbeoLs5g3OpN5dc7U6zta9q7RSiO9r/CY+7fjoad7gpQc2qv6cvX5w99Sg1rl6Bm7mlegsxsVuWRI+Rz9gLtdoyjo9G21OmT5Z9odjK8l5r9NYcknG3BoceCix8giu8gZkXfJ31pY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LClA0JIk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LClA0JIk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA444C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 07:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718348902;
	bh=oY05btE5pRV/hKKqSvW4heF12+utFf2p5kpee7FnTho=;
	h=To:Subject:From:Date:From;
	b=LClA0JIkVcUSXXfZe/c+WR1x3AsEzUKEor+okFZvO84pe7tdQSSE5VJyEUElo2eEM
	 KF0Xd2r9mQQUGsVfJAzsFAyaw9q1rSrExn526QXy2dP8MR6/fJ/L2c3r4zBEQzgHsc
	 DAfF0CHay2F5BqMT5wzkL4OWUirUAOABK6w5YW1zJzHzEH4TpBB0Yf7z9G6NRpk0Wp
	 ceJaRldFUd3gYbiTF0no3OM8dveVXeTzt8SRxO2s78Wio0kVfhMhwjYAfcToFKnouw
	 qO33G9d7zGJLHymUZXDyUnXTBvnM5z1tZNV/2+SjNACgwkHqLaG781Zg4W6wQdpHNe
	 l+nw/a3I3xq/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC280C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 07:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171834890280.10283.15308214278220077533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fe5ae5770f9ae24269ac06ef8a5ee5072b3cab33451ee4e78120e6a4d9789fc
Date: Fri, 14 Jun 2024 07:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718348902
