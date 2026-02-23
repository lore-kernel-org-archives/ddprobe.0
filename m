Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1995C321F5E
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771832694; cv=none; b=NOsNfa9TgypGYKmzfWLirwa40f2oJM8ztfthZtyy4oaminf4xy/SHdxM392RIfrzMpjRAWXDKoRs1vTv71/PY0pDVx98t/Uca+G/DNDNPoMF99agYxK43Fwebt4a6eVy6LhEKQcC512Qjq3gJCmGBX9ZJ79tOcCMH/m5lwSLlbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771832694; c=relaxed/simple;
	bh=z0Rhr70pbQ8YHn1OsmpwcFuOnhpWXrzizVpNaIDCbzs=;
	h=To:Subject:From:Message-Id:Date; b=j+czc6tkLfPJEJvzhCDoI8yAm2iVV7e/QkyTYoR4Z5x394IJHPBxYMDlxPPl6PCHUh3UtUdjgbIhqqjsU4d42h2WuxyRFF5PBCdJC3udBYr92CRHPNj6fk+Jo8GeQwB/0m4deK2Uukv5lmUlNGrnuOodvQLmuOMRF0lluebD+bI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IdzMk2+S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IdzMk2+S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10A9C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771832693;
	bh=z0Rhr70pbQ8YHn1OsmpwcFuOnhpWXrzizVpNaIDCbzs=;
	h=To:Subject:From:Date:From;
	b=IdzMk2+S9dooR1w0OpKelsJpYnDm1Lt2iP3wt972cdNhc0xKr+RQJ1064bbc/V8Rd
	 h49mD1/XiwEbLOOXYlYaes0MA3Av/Yw0nrwf3mVIfGTX1AC1YzwcDjVZvAt92ylE1z
	 lXmF7fYeLOlhgELpzlwa8N1n6hfhzKDj6lCnfY/5wRVLMNhzc+GbdcYkJMdu7DHjVW
	 0XiwzWN7oFxw3xC5r54A4TYnmupkfQ4WE8/Z89lPZ962Q56xcw/XnUmfD5eCJgF9/Z
	 oCW/rlREAnG4RrGIzu1Ow8bt2v0s+5YpwG8MR3taWM51M3OJOyRtT+9C3mCSO4RaVj
	 7+zGOJEeb86Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9119AE98DF6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177183269358.26686.7221156866259127880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c592de360e1265371160e69c75e8d7da4708b6a38ccc7fd9a205ac16501b909
Date: Mon, 23 Feb 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771832693
