Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF7A21B192
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 02:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790650234; cv=none; b=EX8sInPkNBc8as8/3+Fh4PT0BvErTRquJqjtWtofUQIxJynAwI3bO4fy5sUjVBUW5xTbnHzs6xugVhMM3LB5oCTgjYxm6aye9nHADPgsJ1nhY2SgHHNlaVrP5NiAzGcCTycKejjydT7qUJkNaELmhxCvbJjRUQNSZWk0yIW27mI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790650234; c=relaxed/simple;
	bh=TWeiGLJck4PK6cceIOjB/hRRHv0OVXUgAqtvgVPTiLQ=;
	h=To:Subject:From:Message-Id:Date; b=kjUcaazm0k210pIiNnhbD57xNG1aNShr+kPC+NSA3/9/LtWq6H21g2ycVRo1ximM2KWVMr58oESa9FiULWn5OvFexYqtoUdY+idLOe07qBQciVZtR8q3rXsDDQ9BVz2wQextmHaRZ8Q6juzjjmvGujHXk96RSaHSN5PuVA8gmQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bnpz8MQm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bnpz8MQm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDA24C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790650233;
	bh=TWeiGLJck4PK6cceIOjB/hRRHv0OVXUgAqtvgVPTiLQ=;
	h=To:Subject:From:Date:From;
	b=bnpz8MQmdNfhrSwpMT14obwRc6ML6GbJ60fp7bxkGjZsOhX1AABbs97gcBAI1SmMc
	 iEM+6BXuu1pxWfbtnc8al5xH/w3B00H4YjxJuvGOAd3t7PBDeyatX5XdJOxNV7rtvB
	 RSopoJoTdC1jgu2xF2gj5az4bMPJlkwIO3fDumUTUGoLF+K9UINDgmjnZL8ZUSgorD
	 +s5L0G77MOFrj2ZQgva1JtGwX+n0cT8j9v2ZIqAWnaiNsfFMaGBCZMOB0c685V+Qqh
	 6vNcOL4wJZeRrKhR/R1hWhhLS1IIHWyMITyVGPogliU92nPeD6i/kW+lUP8hVcLB2b
	 ftLZHSj1kjR+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EC5CA5FA5
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179065023368.24277.14810162833575568886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8588830e0fe582038d2422cc85cb36bb9cb592a39a5e67802b14d17475510f8c
Date: Tue, 29 Sep 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790650233
