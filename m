Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305231FBA
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721534154; cv=none; b=iTiT2vvjWDQMW93k0c6zviEAvnXLw12HG3qhA4SEB9c4AtpXa9wDrBQYY9f0OIqvbSAdvHaaw2EWWsAsivvp85ZJWb9WARQKDRTh3VNdiajJ7LoEgN9Iq2S24frYz07uRymAma69ySzN3+RYipFTQF1xkM9+w+dO7VySCmF4pC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721534154; c=relaxed/simple;
	bh=AKgSSnEr2d40NpaLMZAJlQJo2p0ez4hrmRPTU08rN1Q=;
	h=To:Subject:From:Message-Id:Date; b=P6+blNk/s0FfQPFY1G5zRc2Hb3RloPR6EqiEa1qskxgPkigInOMgHwKXxueUWGjvDTtGCSroTa7y459QZecia8EdgzaiDY+exTrm4LDiyrk+m4HrHkQchuO/XOxMwn1yjEIrqj+Lsn/k7O71NCm00If9K8DAil5MlcN2CifLgGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oc8IJQY5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oc8IJQY5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBCF6C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721534153;
	bh=AKgSSnEr2d40NpaLMZAJlQJo2p0ez4hrmRPTU08rN1Q=;
	h=To:Subject:From:Date:From;
	b=Oc8IJQY5XOFaPIBe5YaBdTuvT1RKIrgtOIlAYimnZ37s0YL1iL/+0tI1Qf3au5jUk
	 XfN0imAuJFq2zF487VPSl+2z+IP0sThLT8cFUJorU2UwWjG5WyiC4CIHZEL4I0Eq//
	 kvvvZr5RKJKdyhjXstc0gykw+RCbDTfOaQfk+bYe7DtSTxnI05hw1Rgo07ZI+y5afr
	 /eej3Ot9GsUCduGoSz2ywfcd7GoZsntlGXSxhWHNi7+FI+VRGopOW37zMEBBWUzxZE
	 9rwZn9NJClfOc/T88UjU9Aw1Wxj33EaNar4iqlnnsBA5J66MFY/2Ia2rq4NngRhAbx
	 exy8ShHksZ5RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E0CAC3DA5D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172153415362.11596.17898615420000688333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f95d04c4edef3d7e4136520ff13956461b20a618895eb5b522eda9103103db7
Date: Sun, 21 Jul 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721534153
