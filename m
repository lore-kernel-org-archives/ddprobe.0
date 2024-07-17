Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588B2180A8A
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 14:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721225123; cv=none; b=hBZp0uS0hjCbC3V0Y+EiAdYb2TiEriU8BCVPcQgniucoN4IhnH0qrf6WLEEFH8ItbOPrSm0MNXoozc4yjDhUI6sjms18+6lhyWEVh+WZ0sIMqaxVyVKTjVUoBm8pyBvuXv4pVZK4FPEBx1JtnxKSLHeDZJfvWs6X54TGPIi1KDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721225123; c=relaxed/simple;
	bh=MpJ5iGborCVlAcEvJk4Fbbm8pu5oSSZNKtx1BhPFXsA=;
	h=To:Subject:From:Message-Id:Date; b=gIwOPaEkhUA+1UQwIA5KLjPcL9saHvZeOZyXq9Y3xso662sw1mu8HOlFbC2NG53czueatiIMEvyT73tu+3x2jDfGRvimRH1AzOUgsfjnHyIwqtAOYbBbKhHd7Pm12hwvjjFrBsl8vPyweiy9VPaH4vWlLjDURl1jF00unNKRrjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NWHs5dwm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NWHs5dwm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5063C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 14:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721225122;
	bh=MpJ5iGborCVlAcEvJk4Fbbm8pu5oSSZNKtx1BhPFXsA=;
	h=To:Subject:From:Date:From;
	b=NWHs5dwm0EZRFr8Lvad96gtMaQ0gZoJFOkfRXPEmrvBaMxb78Edqf4G5lT2KD3Bkr
	 CX0E56LT9YLJsf6h05SIUdvznZ7hMbPoV6H1fDFSLx8qvFtqZf4ekgw7F1aAgg7ltP
	 UFpEj8ugO0hOADlm2V1+vVsr7LeatCyuBWseIPLSZj6CW54qcFjAlr9ksYN5rwmkYu
	 bb6QG8wwjBPnnTPJ6WQlT3fm6f8LJtu6hzLdbAgVvtuM+5oNYRqJEAquRaFCQyPm8B
	 4cajPSNybw9o5k9CZchVBaaJH6wxkuALzd+4YsHUX1ShGTupmqxmfF0scDssPlE/NU
	 C52Wgmq2015TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF259C3DA42
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 14:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172122512277.16678.14522270363354100231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39bc6a21fc07343225e29480fcf22e8165a6bb95d0cea3290a22d436065d1fff
Date: Wed, 17 Jul 2024 14:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721225122
