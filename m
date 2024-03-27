Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2FC3DAC19
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711527497; cv=none; b=s+BWmAYzAZ9eLu+cpjhkA+spJZZO8ax/PTfgnqikpz8ruVhvAT6SRTucURVpDy4MhAc+iVvmUIGYvIKBQmV5WpwdR6rMzIlgTEgsPwww2oMKdE+P7L/NQwGfoPbg3fpbAqnr4WqpCiWyFHKbl8QG/wjuktffbAY2JNclxcipW18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711527497; c=relaxed/simple;
	bh=SWiP0SXKJ5TC7cwmGzw7VCP3rUPDgkN0NBTPfGnyIGI=;
	h=To:Subject:From:Message-Id:Date; b=FrFa/jP4l0Op/glkvjZ7+Ezh33X23Efhu5wBTMS0JPuJxG0wc8vJJWnHOxH1j1QMFKQ/cl92UcJDKxrZw7luQ8a8kyRMgWydiQkJYqXEFLzpvC2ruk+UXVPaRxxJSSq0xOhJeG+LUPaUoML06gAAZ+0oQv8EdqFb9Sdj8ofmPIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AsA/sRIt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AsA/sRIt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 846C1C433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711527496;
	bh=SWiP0SXKJ5TC7cwmGzw7VCP3rUPDgkN0NBTPfGnyIGI=;
	h=To:Subject:From:Date:From;
	b=AsA/sRItZxb//GyAZwZuXIOunC8YiZ8CPBDzDp2dT8Gg8qsmGOFVolsILSlACyeeU
	 mYdH0xM2atVCtPCFKc3bYoE+kuEdM/Um6mkkb6RvkS89L4X1+nBDYOyGfWmn4+/6nW
	 uALgOiHHWnHqvgZWBVCJZcwK0oxVzIEPecTCP3yIc4ee47Yw57r7pI+0v4f2GD8vwI
	 j6nZXkn1YpAmAj85486XVr2KpEWmr2KvpycW0RQJf201Wb8KWJwh4lVfgMPRpXxPPx
	 daqaZjsGQQV/pnQasCXrD949HqjxLk6RQjqDHZTbJNbGvadoCUuKabJVPL9lzwhsB/
	 QCXTRVDAE5nlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70777C47DD9
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171152749642.31567.18255646061800600639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83d61af5ab0a4e1b68da061fef21214edfd04a191f7958571270e21b9d646b39
Date: Wed, 27 Mar 2024 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711527496
