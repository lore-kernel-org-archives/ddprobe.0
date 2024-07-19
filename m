Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D59AEEC0
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 10:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721384755; cv=none; b=Gn63VLubd/a8rfWD70qBxm4xdRidBJ2mXDnGn2jWYJZIjijh1AY2gX0LBTu24H79uM6zmaAdOaP3Jq9s2PqtfwTkw1oNBgokCU/Bj4fLCfoMeqPhhCr18zMsRhW9AIp9cjcbElGn5T+USraA5fTkU/9rM6DWNfl7UXFg4BMI8vM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721384755; c=relaxed/simple;
	bh=33DUxRsP3oOF5iL6jSeJhAsmr1Phn2bGezdv1WALbsE=;
	h=To:Subject:From:Message-Id:Date; b=iYX+H0Uqea0HN73MevsZ5Iy6Xgl12XVg/OgMmTdyx33LFU2jijGNRYvySbhFUfBzGANEhHxVRcxnpNtRhagPfPv1W0ydl0c+3zI3gNZjkufrkCBMrD/QnYFUXFqdS13JQGeb/biYT39kmDsJ6aT6MIb/FzcD6g38TPG7q1bYXSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UpWc2j0i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UpWc2j0i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF71EC32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721384754;
	bh=33DUxRsP3oOF5iL6jSeJhAsmr1Phn2bGezdv1WALbsE=;
	h=To:Subject:From:Date:From;
	b=UpWc2j0ivt8MX5V0VcCQFfnOmL8NkrpjKBzhKXNC6vU3CbNEmvhElgcn9x2qpD9Hz
	 fkcQpgIMcqDBUz9/EHxMjKywko2OXcKDHZ1SOLO+U4d4lAMgLAl4dIW8d+KPjhMQKE
	 mFeMd7S4qgM7Wqrvj5ZXOk+IXuZh09zlyNauyIV1UNbZzFupz45h+mQjWWQVLAa3gy
	 txh8jgdkIOY9kJAgkJNISt8ZsELVzUcrt3UW4UM9gGErfZDWiOwkEKSlsPw3kK228r
	 HB84tFfqZ5jJSNpqrrVvnV08XKZaO4kh2am7h/LP+/U28c/OGkb5g9SvOGLsC2Hbd7
	 6h49w8TZ088MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B482C3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172138475360.4378.8592998477056924360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21dcae03db6d31b259f75ab9294aaa5375b11b79661d6791dcb8edf94995ec74
Date: Fri, 19 Jul 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721384753
