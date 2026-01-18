Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A32E2BE658
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768734234; cv=none; b=TC09MfUKSQzojXidal6t/okqUjqgT3uSrHa0f2wg8l84TJIIkmraznoX4rb1mjTCTFB5mzFBGwi2JP0eIYihHMxV4O0ppk0iHTg8b/V55YTemBZPNjuvtvz/1WbDh4N2vWjIhpjugsPAGZZqI4LI851cqw/sxBVe9n/h7j2dDt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768734234; c=relaxed/simple;
	bh=6IuQV9bnEhITcsO5TYwtFb8eGZir1evNebhGFEgRRpw=;
	h=To:Subject:From:Message-Id:Date; b=kpUWMfynqt+K0X2ZN5EwoZ+uEgn9ZssgYPGLDFDePTDdGiN2ESGM4WRbeoOi5U/L7u4DurLHaXgk8oM9nLBNMJPe7K+JVA7cARHvmtCMUDEF/2P2eFZj6JB4e4O+e9g21CsAJMGnqmkO8wHZvQ+8cFRnz3Nl6tdrUe6pfgr+/J0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qvpLtJ9G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qvpLtJ9G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06FFC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768734233;
	bh=6IuQV9bnEhITcsO5TYwtFb8eGZir1evNebhGFEgRRpw=;
	h=To:Subject:From:Date:From;
	b=qvpLtJ9G3WNWbwF6DJODVtlXQAsPRV+ZvjgQZAU6KLTt1gKhOkmgaNBVUlliruud6
	 aPUVbsi6wBtB8oBA/+1jvHMpAQ7qoEKik6S5Ib9I/n7ZkcNSViO3NQSTkzQBK/YASu
	 wSxE+ykNgH/L6s11GxEB+r/C3e1gX9v+v5y2DTJ7EDekjev+Y7H9W7kZ43z9QisILr
	 MWOxuc3gUaWBGszol6cFhISmbWCfXRE3mJJEarg0Crdvs+HGAzuGDFtaCumvrUiYLg
	 cDNpLRqkQIX1zzhH/WlJnh/BoBjA1uknk6VVl7L6IzwV8gSojc/kJ03kwb5yFX9/5S
	 zfdmjprmDT6aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA29C9832F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176873423358.29888.8856469918118640645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a37cdc5e0b9ffea5dd624acdc16fa666cb6e5c78a4b148a78f36613c647ffd29
Date: Sun, 18 Jan 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768734233
