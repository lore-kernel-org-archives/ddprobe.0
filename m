Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F723274B48
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769408634; cv=none; b=eKg5bmgAiGV/T/xFUa/nJD/TqbXcn0M6OFxH4IQ3P5LQnNBb7grcM8RE9gNcChm5EhMbXRXtiWwnrtdZ5OxE1PTexU4qRSrN0uzAR7PpyKt7LpSWw3vovrhmIoOfG8CbuzYWI3HZPLyK+GzCaxaj7LDLdnxhit8olJQgUqS27U8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769408634; c=relaxed/simple;
	bh=/eA8Ang7NtokSrT/k+6aH/LhzFV8TyQfetZWhAWjWH0=;
	h=To:Subject:From:Message-Id:Date; b=AePYmoBlJ/jFqP6um67mNv7ihnu500Wi7R+RtD/cFHyPqqmVPF6q0qrRPalUHJbRIWCfSRoYlrfKln9/JG6POJavHbmcfFcFCjoymFE2pEOIGv1ryVICNhzfYSeZkXp2y5cB7xGgnZGrW41eDcV9DXYAfTY01DpNQOwqXvEQOK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JC41BlZ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JC41BlZ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01BBC19422
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769408633;
	bh=/eA8Ang7NtokSrT/k+6aH/LhzFV8TyQfetZWhAWjWH0=;
	h=To:Subject:From:Date:From;
	b=JC41BlZ+3sG+LTuAvdMGAQxrqPAPLUfwQaRixEa1Z+bmnKTnzRae1pDHCeRuxKwju
	 6WSP9RK17kfXqHN4e1a1AdbhzuMBRx1U588/2nnjdVSbfzZjlVr6cqzzLxdjFrWgdX
	 803tRqi0sSTCn2jjeTuQRqq6TD0zuVNGWoRwdDHMjS+yFNu2zcDIpVRvuGWkNuEVtO
	 zSnNKRN7dDruxJNIONpcgr1tECfm6mkjorpfnvMltrKFqnfwtrroK4jpleqL2LIVzf
	 rwUJTCeeZoIdr4i4jSkZoqcGHfcgnajPs5UUcSzwmdMituayKsVi+WMOL2eWpUy8Xd
	 p8aHNPvA07OBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9245CC88E57
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176940863357.26962.2742119498310024394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c930bbf4d495fb9303b752ac39829fb12f372df8dc59330fbccf717a36eb7a4e
Date: Mon, 26 Jan 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769408633
