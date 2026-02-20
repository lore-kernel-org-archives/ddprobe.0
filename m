Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BEFE1D555
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771572894; cv=none; b=aSK5XSv6HrQx6sp8aVlZT7pLZ8MkbAOM+YO33iwVa1CbnPXpqjQ3paIqpgShXz+JR2Z1Uc5/BKX73KWZY4R1zVsO/wlV5hj8bp4/7PbL5w5OdUi4/s3cDky+Rd1zZGElx8ZVOeY/kwM8em1ic7MG89DiO9yDxSSavZHip2WbDjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771572894; c=relaxed/simple;
	bh=/L7VsoJp1IOTRUvHPRF+V2oUB78FfeU0+uDYFJJGzbU=;
	h=To:Subject:From:Message-Id:Date; b=thNMHJy3ewjfJlHGYPF7lWM4haWA9oPexJ40YUZ5l8DAgVsPC3uk6p7apBXwt9V9gRTLPPAuTQWDuctFLR+kXVT5pidvbT74HLhy/OX6Od22IeTv/hsycCGwS+2QFqGQVKNrEBdgOfHpEyxgtz9HEFl9VQKBYLF6rvm6TLh0Dec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YSz0KgJV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YSz0KgJV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EF0C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771572893;
	bh=/L7VsoJp1IOTRUvHPRF+V2oUB78FfeU0+uDYFJJGzbU=;
	h=To:Subject:From:Date:From;
	b=YSz0KgJV4umr4DwEvm4JljEcQBu2Z96LPadlfbMjpQFfVHEgxLbI52xIt0X9RfLtI
	 b2b9fU3wVe0do7XPFOO2m2lqamP0zhXJ2Wc2STGF6nQw4xLQumu9DRxFF2vQNwJLXx
	 GQ5OI/UZumO3hfXphB8jNsH0Bg6zY8ykV5dg7c96bpVyi3FGf++eK48RY6+Gv7KV7R
	 Jqel2f91m9WtRf2kCT50diSB4eGxIXX8hVyeDsJMB5dR3WSO3AKglVaW7wEgZAmQ3e
	 vSgMOogzRPVbGN3gQ7KUxE4i7c+X4XsPSPZr/e0e5tnooYrggi4yFIzwqEeT+fZCIZ
	 A5snswsfwDDzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E79C54FCC
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177157289358.17148.16909882010192666908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e322a7d7c707dbd083c1875ade5c514d4c74a217eb1e69226108f876b4c4bf65
Date: Fri, 20 Feb 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771572893
