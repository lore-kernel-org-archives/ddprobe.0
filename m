Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4F62817
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726114554; cv=none; b=NxRHsNYFYNlCSZtijAq/XXPPik9HN4hZC/75oGQZ0ZX0TaynXXrSFZGSOUuKLnBr16hY1kIN3/BEANhvVtWLo0k9+AjO4YVIJHK+4+xRFE3YzVkHr0OO2KeF8wWnDXGsK/t96kvCm+uAydhhKHD6S7PEUovR9CaeRotNJcsp/u0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726114554; c=relaxed/simple;
	bh=8SpwoJs44g6mw96n/+h+mo9RIfiEOmjHATYDA93ccf4=;
	h=To:Subject:From:Message-Id:Date; b=jtAPoF8OZTQ6Frj/wMwwIoPuH1xJI8LoZ9l7KY5JuTHLyhdCJSZmMxldOjR3kwFGqhPmXjGn0eURD5Q2l1kFOJPOnQfFTdl5ADbT6jtO6XfqX/HiFp6DmF2bWCr/FR/mlsvUx3GjX9qGHuRkiO7FKdB0MoXdZ/U2WzA0ZEVg7N8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bng9ZBxY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bng9ZBxY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D59C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726114553;
	bh=8SpwoJs44g6mw96n/+h+mo9RIfiEOmjHATYDA93ccf4=;
	h=To:Subject:From:Date:From;
	b=bng9ZBxYekDi27huCpaqa5zPH4Gz+7n0GfWFBDgG+zgF4Y6ia2ciyXTIr3UW3kqbZ
	 tm1Mko9cm437VFPuDhZBf0T14zo86v1KUJNoL+IahuaLFmqgGiN+oFVSCuntGsfyfW
	 NkVnyrPPSpZ3D21B0zBbm9WG2GKsV4jpqbVzhBPT3iMIMPOtS4GGAKv3mYEPj/dku9
	 /94VxeslphlYF4iQ00YX98hlStLibx+KJdZ9ZsxN0xSeOdefRa5FPDjBiJzYElol9a
	 EIt3otqc3gd0jY3sZU2nM4EhDbs7RG4P7wjqE5oeZG7ueZCLLMIeB91QYyaqhQHaFT
	 YzSf9vfJIidAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D35EE642A
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172611455359.6797.252445985109049401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc9ecb0fe8d7a395eb4df4a57be07b0034a8e64b1291e2fea850d7929a149eb0
Date: Thu, 12 Sep 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726114553
