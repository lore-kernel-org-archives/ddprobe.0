Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DEC2AD37
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 00:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782865114; cv=none; b=gCYyLRBiz1jRwrQloiak2gs0KpNav1bfDZoRlLIKxDu4mYUu0m/lGiIZenK1z7WfChZjEVFJMs2XGfZPa3Yg4Se9LdN+63mmL+SQRq7QOZvQ6vIyfvUvIvDq5NvWXb3Tm17aqxx2z1Q2bhbB0ojqwfBAXlds4HdcqfQvR/bcLEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782865114; c=relaxed/simple;
	bh=pHYwoMgqChvdycWg/A6wMB/kRe4AN700L6cZRyfRfsI=;
	h=To:Subject:From:Message-Id:Date; b=N5rkEsyisPQVynSNjQ4z6K8/SsRKn6IKHuq8mJF4zq6vagsoNOg3LxtInXBQBakvcJjW5Iu6rXwtY71uT4OjWM4drm9p+vff1qOSlpaP00yjutWi550VnDKYhoHsCzJpRwAtMLUO82S/VHsvfUeS3nxFEyyb2kJ/g/fYtCOur0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nkKyxlrQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nkKyxlrQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1891C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 00:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782865113;
	bh=pHYwoMgqChvdycWg/A6wMB/kRe4AN700L6cZRyfRfsI=;
	h=To:Subject:From:Date:From;
	b=nkKyxlrQFg1P59ighmMVRx27fnt8EE6I7++4YYUHJsKbIrCws019r8yeWl3kCYeDh
	 BKtsZbofRVBhe+5kKKkZvzaNR2Hav46JYzFU5IjRknEOk/Gcr24mx3zwZNagS4LFu1
	 GPgy4brZ6MND/7hfpAuUUAulMA3axXmwE71nux7AZb/0bS+w4EhVpVQb0Qfb4l+avG
	 5doysrQmZmNVtY1Wch9sqmRKSELtgQDpviI1uGSPQ819b2Xt6mCbwchypVq+KqMYzy
	 16n5N9i+llU+s7lPjyZ9Lvgsdlr7lXbNUL8MkMpEeJwZEQaK7f0ju2U506zlU2eJBE
	 KrX02hSvpZy3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9172C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 00:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178286511368.4031.6612728794503650430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 489df3b63435b83c8de1db0d5d8c11e99ccb6b8d5ce0288517e7e52449a4605d
Date: Wed, 01 Jul 2026 00:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782865113
