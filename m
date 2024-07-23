Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2535C155C90
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721746554; cv=none; b=Ww0eH8NxIKUaqCxifweNqCQypkeBwJDziCgF2g/+1oluq57efpuK1TlWURks0PhFSUe54omhCZtE9Y6NliiWipYU9Ker1YjnovCK0iMUfs10tqQA30nnG5Z0Cdfc3pLbyPBKkbnqMZw0RdE7aYrlhNc0C7hDdvdxZIAN2CNss14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721746554; c=relaxed/simple;
	bh=w2waRgzNS2BExRV3hK9GaUsQmM0v+3FSWQf4DpJgaX4=;
	h=To:Subject:From:Message-Id:Date; b=cPL3Cq7bLEziQOxCZTU4SMWQo4qwIxI379Dg55x5tzzKz0v4DM89RYRHpihy7fuzlhjjMUiavIa7fZBKZPiMVcmxTBQVk8efIshvWIA6EMXvt/J4CLchQVGw2VCkIw7Guf0jdYwhqoBSQWZLoqWJ4iYjVUA92paapx4YrqBOfSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7CLksns; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7CLksns"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B14A9C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721746553;
	bh=w2waRgzNS2BExRV3hK9GaUsQmM0v+3FSWQf4DpJgaX4=;
	h=To:Subject:From:Date:From;
	b=a7CLksnsDG1wJ1/JPD3EA+R3GHOSdf8EQunMecc9BN9XlNo5nNLyyNeom7Xer6zej
	 m8I1OfU3gt8ea+xy15+9mqS/HQCkx74fMpvvQ230/F7we7bvzdcbw0bh7XSbL+IMJb
	 NTwjavyztcT/h3Kn9fucxF/f3K4NIpsQ3EAbJF8L2utrxfXvrIdlnCrqC5wqivMiFX
	 Q4Um+hUKmZ70aDm8/e2EzrV6YWdJIldSnDFwCZn67JXmUPiubesGzKR0MEpbigw3FJ
	 fZ7vdY6cmQyNW4TbS+nW7bLKy3BY3fiFdKrHAJIuhOiZvKbHUij8ETWOBWtz+W3S9i
	 L1XmxUrZak6sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98FE2C3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172174655361.8563.14811099854491143410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d373c04a2e857cdf3b033d8747f6957152d7a69505093e8014cce9936898c5c4
Date: Tue, 23 Jul 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721746553
