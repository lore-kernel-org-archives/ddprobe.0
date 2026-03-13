Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E0A3AC00
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773360894; cv=none; b=TqE32rXDNSJdeptKjmOICH7lWxgo90PVz6vNIRv8i14PBscRVQyL8EK1uMv/i7QZBZJbIQvV2OZzB/mLtq5e4D3U6dFlCNOWf4wVOxqV55Dmn4MZ5Msh9Az78CX4oGnILNqHLCk6vsPREG3+BIkm9Gj7DIaNL8m5NVNq2at1NVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773360894; c=relaxed/simple;
	bh=0s7gSQk08zVQhy2CPaEIhu9gGp+3j2cJdgTgiEuwQfo=;
	h=To:Subject:From:Message-Id:Date; b=uLhIjdvFbkBiB38PLXDKcnYDR44ivh0/eojxcziRcUTcbc/oyrM2qG3UfNqnxR2+ecgAfmC8DhZP9gPNeA1UPrOXX5FPlvyywOzh9Jf60YiqPm+rno7yU4nT7wUHundwDavVkI8dbf7UWVq6Hk5PWjp2SpvZ2adOVomYnEtwQ8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JuqyAmwE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JuqyAmwE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A600DC19424
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773360893;
	bh=0s7gSQk08zVQhy2CPaEIhu9gGp+3j2cJdgTgiEuwQfo=;
	h=To:Subject:From:Date:From;
	b=JuqyAmwEOUVyjOkkRYVTYaJl1A2GcLJ4TyHFZ1v/7QLbBJ45BRfvUYNQJul4B8BkJ
	 ekCtoqU4EvYiObtJjzpvptvUaZ3F5L1F4fmCTqXan/z+dY5ng/WXiXv/nF84y74CaH
	 6BIU1QThefFzkGxgerq/NoM5iUKKtd+q2hee2D0uppOojfHgvaGsv076NZMB/A1mlJ
	 pSu9n/ZMbdZ5KNwAva0tSuLkEudOo2dCXhz75J5C5re+E4KdzBOWXrynJwn7JyfEwb
	 FSwg+P3ZfwkApCAVyyxF8or2Di0cqu2WhL1u1WZHQgY2I+Z6fbKOF//ROWy9vbW7nc
	 B9qqYZVf/b+zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959C3103E302
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177336089358.27485.12851549612192109022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5dd54b2d89afbc9f7e943a7ba26740e605fad36e62f855e869507d09f241f41
Date: Fri, 13 Mar 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773360893
