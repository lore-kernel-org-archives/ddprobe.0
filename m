Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8ABE55B
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754402994; cv=none; b=KiQxobMYbknXsyhpLjZao4m8ofOgC/Ypbg4yAi/ePIeWbBcizSsZMSroc2c3Z20KB3A2SawodS5pkvbw+8ooJ3sNL8a2aq2F58R+PFDivPC9OKyhW9hximgh64Udr2VfGIxBmgnuSvjmHExVKC4x+x8euzLWawxzEWMW9RGOC4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754402994; c=relaxed/simple;
	bh=1/xb4d0P0WYF+qBGeir4PrW16yERfxTsUyjkaA9P1WQ=;
	h=To:Subject:From:Message-Id:Date; b=B8hRSoOeb+GmospK+CmeilxJpaA9OYGtxPfkJxbkHfzjLtBZAwZtpXmdJTol2LRjMynS/8sXhifvm5ifG5f3E3OQM4WzrrjyLIJCwBtuYFh9Iap/bhKjpwngkpqC+dGUy6cO5rfXCiZzpsH6LS4fa4ZrhDuBA44V9ZBM3k9RGuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SY7VXJnj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SY7VXJnj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A374EC4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754402993;
	bh=1/xb4d0P0WYF+qBGeir4PrW16yERfxTsUyjkaA9P1WQ=;
	h=To:Subject:From:Date:From;
	b=SY7VXJnjTG3EKLUacgxTy9iKcUJa/XoECzOIhNZuzFhSKzkL5GI/nucl565w6agjR
	 CyiJMi3TTeQ3F67g5x4DrRTHeXIegxTuE56p74TjEj87vyTgAUbr9aGKTREWhVJEUp
	 NLwLVfUhDg4vNqIqiB2xr4PrusyuEAQiZC7rNX3fTcOc+5guGP7s/UAJJpWx9mC5XO
	 Uf75IF/zs3S4z8i/Rt5evG+xVxQApatIzoSz3iFYBvJP6tMFWWzQ3b7P5ak7M4I2Bh
	 G/ir0krsryBS54XzMrm+NPAqNTKc0IhzPRP41rhaqxEeepAf18DjUeZPEymLWAYec/
	 A9XDPJjc3Jdzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9071FC87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175440299358.20468.14191807799034134326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 393d1cfb5796ad121034f39aefa26b6a9ac68b6efb2ead02fe5a476650198120
Date: Tue, 05 Aug 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754402993
