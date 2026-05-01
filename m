Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 266BB34A3A5
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 21:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777670854; cv=none; b=Sy55tJ2pZvl3hlBfkMlDgWkO3WTyiX4AT2p2D5j86FyVidtv7TZ2JjcwCAGgPSPL5e+bqFtJRIk0TF32d61GCaeIm2L3wP6Hohue+K05kDgv6ZOUWjlL8DafDeqrN2esQg9t2xQ0Do4YKcS76Fk5OOBVN/pcFjifanG4+df3WZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777670854; c=relaxed/simple;
	bh=jjXgoFfeay2r11P4/CIvLgmVLo3L8bwaJ2QKmsBeN38=;
	h=To:Subject:From:Message-Id:Date; b=n4bqCcwc8kOXPcGMwU49ilpL8bdI8XMkCANCpBr+nnXTVOxd7qaFtyS/IlC1s9S1vso0z3KE7yUN0dSJ0hHLoA5JjtPapkAyMkfzAKeD5rjgnX3UCAnM/HhdLM7a0ol0M3OJcwCZf/cf32GW8RSjHeUUGv8Jdv4k/Dzx98tq+HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnPFam/X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnPFam/X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE82FC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 21:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777670853;
	bh=jjXgoFfeay2r11P4/CIvLgmVLo3L8bwaJ2QKmsBeN38=;
	h=To:Subject:From:Date:From;
	b=cnPFam/Xd4VfNUqhJNI5sYwKprLWBhOgTuoL/vjRcVwvg7GELFp17eMFiVdNx2qKV
	 8RyiyBe4FMAnP+3m5A6UHNUkSnM0TqmgtFLdMCgRugdX0NhVvap3baaALQPvbVx3Mt
	 RPQTkoWF8V4KmAgs7qyERYk+rNHv+Yp76K2nvIBNVzE/OMWB/YLJZf8gjXeJeU6YU7
	 IlQL3eOgXl10kUERDNXru18W0ZWOHXZSF/m1iNDs6m4rWMrbXObsOhTEwuAsoM4SVY
	 96WQc19xNPSdMC4xVIebvjsJiDqP5Wm2qLnUuxwYUYrcxS+5QBXRNYs/aiygL+E3xI
	 k12/YHfznD+ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6E8CCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 21:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177767085368.1466.6207164819384330087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b03ce162385ba48ab52ad5b5d06a9c4b2fa2b74234b6db37c72ecfd88551e411
Date: Fri, 01 May 2026 21:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777670853
