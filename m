Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13CE827875C
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746781194; cv=none; b=MmptZmLqDEldHrhg6I2XownGX9TiRhxMhMUccFgBJ/5NhmiQnK6yCrjX3qPC4lby4Hst+jf0cqC2CNvZf2RfcVI0SFMmG+OW6rpbO2IpjWexk0xNrWNlkFYOSNTrzZJec1uI2oI1fSlKE0X17OrF20hbRWpWqt2DUYBidxDrZyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746781194; c=relaxed/simple;
	bh=4Cxdgih46nPVBVTR7/Phy1jWsCQUP8FuAtSpuoO6P5E=;
	h=To:Subject:From:Message-Id:Date; b=Z/MF2ihQ7ETxenCaWllAv5T5WiUb4BRjq6kQ/JpIqhPpo2f0XVke/icaoFcZcMVfy7FrB86HIHMzFNBDwsFoOHbCbHfKvVNW/b/B/2rijyUGqES2oJ24WpdSNohvA7QQxG2FcAwWhR0t7ytBH9ZfzHc0h0lJAbumg9BgOkSEPAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/qKBjYu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/qKBjYu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD062C4CEF3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746781193;
	bh=4Cxdgih46nPVBVTR7/Phy1jWsCQUP8FuAtSpuoO6P5E=;
	h=To:Subject:From:Date:From;
	b=X/qKBjYu5ZZIBWmQ52ca1sGI1KLkRMYzSmZL9nun6cRuvMDhd+JSd3ZoVcZyCkWac
	 bcFGyxrx60rKHGpBs/zyCi2qaQBruWR5qRyoEKIgPZXuLVrkxssdC2x1fgvleNpiMe
	 Z0/VsftPpAFhaXliKsElvX4YpUbAxxM2C4me8YGEaaVevTmxuZxgNy5e2Mqp/s1zIN
	 m64ZKSUFy830Si05tMXH3kkiyEm1ONKYk7rEzDXDnxYCFS0ERg+PJxFc2ijIUvUn0r
	 /vyvW27CtpcwLFaEWm3WlNXLk17OH0YKSo7TY4adnRR9+JmrFGz+r2oJVQxuJii2PB
	 vlJYGMZlKc4zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AFB9C3ABCA
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174678119362.32048.14081657569203480936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93caf38f1c72d91823c7cdeb12c9124fd9a724c02fecd35e48117058a5eaf96e
Date: Fri, 09 May 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746781193
