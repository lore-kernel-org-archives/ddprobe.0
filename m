Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1893064A9
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 12:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772885094; cv=none; b=TT8rZ5/HZwroalx4yKHEMj6XCIzB3SwFXZ43HGqcBMG9trDpSxMttG7gJm0nP0ddStr3iRCmNKDQh3m/+KwFODe0JVH02KYn4tK+mGWeYxbPsIYQ9nKywU1XujY96L54oYmL6rTh8Mg9UUqY9EUPnqRuxv50UfXFFdKMn4VKdlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772885094; c=relaxed/simple;
	bh=kgkclM9nRuv/uCwsppsQAoPzo2KAq4m43fqfg6Y3Ra4=;
	h=To:Subject:From:Message-Id:Date; b=iOR015M29ohGi9IuBBxLRedt6bpXqKc2HOld00YJrEFiPd5dcOPGZk/81zKT1dUfooLslOqrcE8GQCrhv1OVQcPNoz1McCDUvcZoKIlZQchAAZXvSDskhVplJZ92C2eQTBmiNtRQj8xczdnSbn5dJlFgpXMOLJNDL9LMcYczl2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j71H2pkz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j71H2pkz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCCF9C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772885093;
	bh=kgkclM9nRuv/uCwsppsQAoPzo2KAq4m43fqfg6Y3Ra4=;
	h=To:Subject:From:Date:From;
	b=j71H2pkztgSZQQUFXdSc7bu47D0HLJj88U2lylmL8j8X4boomvnZU7o0Y1Po0xKX8
	 DuMyP0A8clz5PloKHgzLimv17Zu8z9I7u8J4fcIKkPrIarWU7KZr8i48LiWuIWrA4h
	 OYMB/4x7bxtjSXHPsJ/9Yqq57jllxpoI7V4TmgEfPU0H+4mlebWKz3BHlmEdixUvBS
	 PZxnrnlJFya0lbcNgc1Y3Xk2No/s/Eo0qfdUgZBRbJjGaCjqOrmBp2Ioo8JTKGuMq6
	 +5IxHbNDf66XmG2nDtJJ78qWKeyUUYfT1A1ONH6zaam2ewLX/e7PZyUdRDgldhEDWo
	 al/Q7VgT7UViQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3C46FC9EFB
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177288509364.14135.12441054087444686579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 828e1a46d3a1a9e5db93ab8ab618094970a033b5b1c127ebd01ecf0f1de349b9
Date: Sat, 07 Mar 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772885093
