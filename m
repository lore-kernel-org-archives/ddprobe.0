Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63726367293
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 04:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781928994; cv=none; b=Q9ibqJhxPf/T7VTltwIawLbMBq5LSCMFb7qSgoPZv/7uLbPsmYDNBJHCXbVKCJ7bdWtf+83jjx5hBL8cEmJegKRGP/LcuNpdM6v53q+cu89k+WQzPEeV763eJXxDsmqdbLziF2yrO39NV7G10nN/2aWaT+C6JzHCFB6DbGtdtpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781928994; c=relaxed/simple;
	bh=EimPjC2rp6eX7mv/8Urk9eqZIi8uGFxSrY++p7Y8U/U=;
	h=To:Subject:From:Message-Id:Date; b=DrHopw5KTkrUHWC5+AdUzlJ1W5mAR/H+MxhdUr3CL7HEAuvvv8u5OL7c7XPhyi0ShPNf7jWaJ+CoKujO+sKOJFfH1C2kmXyvS6w7DMJy2sGwFLES4TKC//iLZQ+/cL4DzAQmqMofF8mPFHKfhGZe0KYaO1zzLmnBPCCpZw+AtoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jSSJb0ei; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jSSJb0ei"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5C07C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 04:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781928993;
	bh=EimPjC2rp6eX7mv/8Urk9eqZIi8uGFxSrY++p7Y8U/U=;
	h=To:Subject:From:Date:From;
	b=jSSJb0ei0ReO3oXOgiZC6U9Q+pPVJe8wVSZc+q01sgYwjKtXtmFa+gOeOy4l8QsJq
	 WqsWvUGHXAWsnHy2NI0V7BEjfRaZ6RKshTC0GxcCwQqEOULI8jyXG6huoRYJERKdUz
	 AszGJc4KrVbLJqYrq/8ulATXuywWxOLiAaxJJIVKJFZtK7zWxMbC4dQeJk6JrlXeNK
	 d1PQ7/WWdGBoy8Mfg8vV94wNJ0CQIN902/ZCAfK59hyrD5XTfRGe8Dy2xFJ8JUeps/
	 6Re6J2JrROPX5sXM++Rwsra9yuJhHTtgQtcQUjjKVbT6gh1LcBM3s6AeAnnjR3J0jL
	 7LcW5UscJL3DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0CB1CDB46B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 04:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178192899374.19356.5642142325155682789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b54e229f0a037b06ebb4833fa5aab9a11b3309e6e4341578334af02e357c1c53
Date: Sat, 20 Jun 2026 04:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781928993
