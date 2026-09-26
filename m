Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5784928E0F
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790456434; cv=none; b=i3KR2R+SrTMBwCqg7fwg3XINX07V5nCNv4rhsd0hfHqkUc8SFGufOszbisW6K6UDTbK+/TaT9cu1n7ztLbSB7PWFV1yUUKEDRO+RfJHYBMW/T6y13PEQ/NfFr/KnmyDsEHCBnd0DYT2YJJSbJg08SwD45b2VDJGFLN6KmM/naWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790456434; c=relaxed/simple;
	bh=5ZBj3SLR8IojKClaOCyaVgu3Qc4kD3tvfsI2u5Wgm1o=;
	h=To:Subject:From:Message-Id:Date; b=PGiUU1E8D29gWWta6TyCY5/94p2VwU9vk6vIHXtXV+sWmsQX8ZOMYWbI5rh4aFOXY8Ufe1NSRKY+E/gGimEq7z6JvMYlBzGJkSSc2+0uiu8532QQzTnAc1Z8qTyueXujXOoIzhLToz7G2xAC2OaUXnAZYoMM7wwqRKCvwMLNYaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XHSN4v9W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XHSN4v9W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E30C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790456433;
	bh=5ZBj3SLR8IojKClaOCyaVgu3Qc4kD3tvfsI2u5Wgm1o=;
	h=To:Subject:From:Date:From;
	b=XHSN4v9WcLu/0bXO4+yqYoOggdufiec3FAWRkOQbokK+DiouuCKmcohrY9st+Z6gu
	 RMfkTxdM9CXEZnBwXhzULY+tjo3m8ESuiiVkFnI9sF33PPshLb091qoJ1MpoKTXpnz
	 bTdoZy0jd0fp4sgGDg12JRnZFMDX1QyaRzMgIthZiEk/URBS7EuPGSZYmuE9X3TedT
	 JEgWi9B4DRWakEo4nMIHm2jML/tiq6gRDEeoHrc90RthsEIQHAK4jDxjfHTCww02ch
	 QEq11WP1mOlKHcnRxiLGHflcdGmp+JmWDRN1Z2srkiFnR2MwOQ+Td7PVqwN9URGtvO
	 qwYXqiqX3IjZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE42C9832F
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179045643370.27438.2274195983229403504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5ca5ed1d2eaac3ed96182d2ad939784b08249b4cc454dadf46ffa1c99845b2d
Date: Sat, 26 Sep 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790456433
