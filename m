Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BAE6136
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750711195; cv=none; b=AYGQPoUL5oySdEx1pnsWDofe8cki4edeZUsgW2XSC6b3DxfGTrQpcHi99kN98kNmzAbrh9RGgXkoZyT1jm/GQ4tKzLIwiYtOBK0SKy0EgmHi+6A/W+LGlJfKSwVwm6iyTMyQ7vaHA+HxJQiW0dBUIk1g3Xexk13gcxeK59qUgmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750711195; c=relaxed/simple;
	bh=UfVJDbnevRCelli1ql/29GdC6IBicar6DZlkeqklQ28=;
	h=To:Subject:From:Message-Id:Date; b=EkHGoA4iu1xw7dNH35x0TWwTC7Qzw/5FMtAENTvpKgMgZSHgscwOJ1FR2tA99pYnDk+CYExHxGhN3apRRyqMtprmZbr53OhzyiTV0/YQGg2w+14aSaTTz4iEvdiiUyYUPidccaM2WyI062EasFzJN44fvAV5xL3TZOSGFPMRyLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ew1geZjV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ew1geZjV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A335DC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750711193;
	bh=UfVJDbnevRCelli1ql/29GdC6IBicar6DZlkeqklQ28=;
	h=To:Subject:From:Date:From;
	b=ew1geZjVyxKahPFcglK7LrYQeso9MOl1GWI7EVSnADys3o2j6qPr2p7x3OcDoMOLd
	 UOYlbtmosS5Tm3pks2IeJjHmw1UeHATRxej84Y8yyGHsaoV6DAKeRRNyN2fF6Z8D6O
	 Kbblvw8gQJmCk3sW58LOqd5yVzIFexKEmur4LghIhAfyERIHu8ovOARRpZlz9nSn+S
	 3fkwbaFn0H+09tpNgoxmiCosg+XzxcauxXpcHq2DL3Ht5yNYoXitu1wOKm9LcBc6/O
	 aQRSBlUzLEAx1gM9k/pIodAgBvHcBFsMU+MseIjw4R0ETheAfvyWXW1NRi510MmXhp
	 Jo8OiaNFfokjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE77C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175071119358.29271.16400443248417164566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 658abf3c96ef3941ede67c00ba8f24d8102007642af5e38cfcc311419f4999af
Date: Mon, 23 Jun 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750711193
