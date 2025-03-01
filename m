Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4373035971
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 15:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740844134; cv=none; b=j2d7Tvg7iGUlzZBiMDtwEygSOnulkkH1o1hCVrMLzjpTmfGXvkVPK/TKKOhBalUHRKrAtmyFwvnry5nBx++hfDRPO8Yy9un+8AAL0fLDuEgqCOH6tSrzLO8hylZLXEGv8koExbE842JcHGo6kMdFt1RuTcFrdy22ljWbY4rEKxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740844134; c=relaxed/simple;
	bh=LmnekGKgyRB7I7mSJI9zjBBQEYJbqtCFkfKyrXSCnUY=;
	h=To:Subject:From:Message-Id:Date; b=qUXpwjmyJ0pg2BQBHK9D+aWK9X+dvH/BThY9EfiIX7GioV6ejis9BXkvdFMSu2rVOY589plbsuiSJX3iBuqeSFMJo7LxpO1eWR7Xha1nd2MxDQNaxMbbkVZFPqxfO47+M/9iVJwuP5TMAIfVJ0sMfInGYMhX/K0DedRsblIUfs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPvWeIoI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPvWeIoI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B55DFC4CEE2
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 15:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740844133;
	bh=LmnekGKgyRB7I7mSJI9zjBBQEYJbqtCFkfKyrXSCnUY=;
	h=To:Subject:From:Date:From;
	b=tPvWeIoIu4o3uxkwSh7koHBRG8pBjmzIWN02QD8jWmNigAUihxTxhAF3gH5BTL7yC
	 P6C+fhZ/21lpvWJNrbLQ00t2vyAmuOcjGxAemkWBCh00T6IKqB2bTYXRfXMlhWje6a
	 bMdJi/7qmiTEfF33Im1Nz96bx4EiH/swoO61MDJrUO6ZtWD/hBaUrAAlw4fOLrjRfY
	 cq1b+uUq86E9YJ1KOsT4U3x72FvxfWYglYhoCEbpF9RRG+T09HCyBonQnIq2g3Og21
	 r5PWpB/VRkbeTWbehwX/WTJctYHixeXj91q/F/yVDeTv0Z2kAxflv6B7jrkYwDI36V
	 shw0/MaGqm+WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD04C021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 15:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174084413361.5980.15072421030534485939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4de05adc1de4281e8069346fe12752c6963e20db5de730af1cdb78230bcc8166
Date: Sat, 01 Mar 2025 15:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740844133
