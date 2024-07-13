Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6BA29D0C
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 15:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720884623; cv=none; b=gtmdfrCpivGxDjBkpMg+emW5E9OkMO89CvUAWRJHVc0NE2DBJrZyY4DqrAwgEVmOFbeQwo/9Yxs2Vv0BPNWPcyw52IhxIP+iQPLqDgDZq260W1OdVtmwtYE95/tyFNga4r1x6Q2Z9IBXBsDtu/mYd2UKo+Er2qJ8INHNWbIazvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720884623; c=relaxed/simple;
	bh=cqx310JWKPWyAFPljyaIJSqspm8i1fJhcc9yiMTz3jI=;
	h=To:Subject:From:Message-Id:Date; b=D80xl3Fsjs9cITbMUeq5x7DLedYAFiYQhasLFiqtH7+Re8j0EP00juEz1XeioC3I68mw1egltvWUP/G/cKJw+2OljIumjZbDJLhn6uzrA9n67aUfAuhqMDBR57ENZlzvVG8hKC9ZhJqLHeQbaKhWslgfs3B6J84MRtMqoPVQPaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M1+DuLH+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M1+DuLH+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D645AC32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 15:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720884622;
	bh=cqx310JWKPWyAFPljyaIJSqspm8i1fJhcc9yiMTz3jI=;
	h=To:Subject:From:Date:From;
	b=M1+DuLH+CdI9NckS46feGEP4KxsCKUQkfzit0tcetPo7dD/PbneCXlwGhEHFeygnj
	 ERhN7tAu9QBQEcrI+0t3Z5gGOE3fib1g4qU7HQCCut0aXjCyCs8JI20K8gwL9E5g5T
	 kwHKHn4KKSO2yRACNDnk//UHMYcUjAzu8GHww1Yg1iwPcLLktbaqVON6PKCtoB/0Iu
	 l35+KZR+5OVqr5axMeWmM1ERc3fRGyQp/gZxMGWo5iZBbKZF6VbGGIT3HYrRTi+APZ
	 fQALyrTmwlZXPm2sfpZtrxVVuQNNP7Z9z/ag88FqNNZE/C0ts7XzQVnjPvMWKyx5Co
	 mdcmxbD95yppg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3578C3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 15:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172088462276.801.13827020560872239297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df2eb66f6ce167e5450c744103b20a1c25a4759ec04dd66a5d9717beee6f09cc
Date: Sat, 13 Jul 2024 15:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720884622
