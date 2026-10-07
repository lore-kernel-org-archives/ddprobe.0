Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5504B3D4125
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791393634; cv=none; b=OKF0IpapW3oZPNmloF3zFieMR5YwqpW6g3nL7qt6kNbejyeUVNLzoQ3wOEkGdeDJ6UzoTdUrQHltcLanMxY7HUQikT9B2n7xGo5ah0/6WmdBi8/mzcNBqJWM/kuEn7WL3iTDVTOSbSZfqPlcAIpqellqhHNY0+Vuwb2T6uQCtFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791393634; c=relaxed/simple;
	bh=iN6k43liWg1BATPwUgqkVni9DmKHiUEMTuquFeXf17A=;
	h=To:Subject:From:Message-Id:Date; b=ZNg4dNs+SNYodrqzGybujLzyj7OWkQpC4TloAISg2L/tmIGnKaP4NrKePYZ55yIAsDL/y8SyX7VDWf57VAoizYjX/bwzwwRNAGoKNkaIpN8zgsJOumM9TnK57pH8RbKUusd7eEWPWWlpck4UEpn4nCruFhj6ZCDHpLOfgusJsD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jpMI+0jp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jpMI+0jp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD88EC2BCF5
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791393633;
	bh=iN6k43liWg1BATPwUgqkVni9DmKHiUEMTuquFeXf17A=;
	h=To:Subject:From:Date:From;
	b=jpMI+0jpC+XW6D1mLoEh9GoLgeaVjPBZiatiakcVtQt9igiTLRha/7Z5x/lrv6tCx
	 e93rJMFharezAcmpDM6NryalGb4qN59u/Fk1h0XU+6wvIA91gXB4e46QylmrmVamKY
	 VdyYkVc/j59qqcDJla15GwsSXbhgtqJa9aq5nKRWBoITmCbdGBLageP8eAtGtHGPNO
	 YcN8DayT2rn6XjdXKQd+yCvQMTGE6zXfbUefHNtQLiwXU5K/FWY0CDAvk4LzN2gRhE
	 FZI3kDI353JnYEBtT7B+Mv7QIA2/9/ihZuzZX+oL1dtZti3rlOYekB2kRz1OPhZ8sM
	 Oaq3qONT8Nt0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98D7CA5FFC
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179139363368.989.5846058105116234638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fd8b28306b44e4d6d39278aa4f65584e12930d29759c7ac65cc238885508e88
Date: Wed, 07 Oct 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791393633
