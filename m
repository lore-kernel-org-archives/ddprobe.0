Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D79A524F
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749265794; cv=none; b=kHQ2wZr+TeHes2cVvaOXOliMFZa5tZLVMBCuso/rWjzloTmTtci5cLo3xShLA5hSFmuJuy1asG1BwMxYXGqURu2KA1nSyxTVmgwv1AsJb6zawOjP9TFHAGo4VF39xQNZI/nmcVbf54pq2nL5nNRsghk9mu2ASGlwy1o7qY9Ja+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749265794; c=relaxed/simple;
	bh=LwZNo+0EGhCvRys2CDIC4lteXthZQyVRJwmt6A3O198=;
	h=To:Subject:From:Message-Id:Date; b=QOn1LWsRve5Su7WMnJeQewHbLsuQBfv2ZLsQyvKD9X3S0zfyAL7jd6FwYFFh4/a2oBPyOXGnPLHJ1+FrHXusiL3HKKRRRHcaVGNdIwInpyo6uwqe1MAYHnkURAhZbzdkdkm7FCqvrb/SwHCo+s/bVAjudV1TDeUmWD1QxKzBR/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OK2oh0D+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OK2oh0D+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA69BC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749265793;
	bh=LwZNo+0EGhCvRys2CDIC4lteXthZQyVRJwmt6A3O198=;
	h=To:Subject:From:Date:From;
	b=OK2oh0D+lUt8JdYHtnfdH3fyI+uStHSxxdi/Ax12yNBDQwZIv85Cp0q7WTutDn/ny
	 VwuXZyZ5nuCGW+5Gq8ptOsGtI6Uan3COkmVMFzbCzlnIZWtcqSIWTu+HwrprFTHI+O
	 R8qPfYh6tpAyE4JaflL8U/0uICSfemUltIgGC0MMuhkQ4gRtJRYc9YHW+icacB5DlO
	 DKEohRRv8RoNMteR9XT848pr9DqPKB7MAEsVcTScwtNUuOISv6T3mhN9Q+iJBqEFsl
	 eoWUbjzC8Cx8Vf0ew7+sz5KENLocWbQ2T6ZPbo+lXZjIIijBIhXU3rvSceSD6m3EBo
	 AOp+0rdFok46A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D83C5AD49
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174926579358.25379.728408608017403889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daa6ef6ee685709795405d39ee8c598f5728b382de55ea79bfe08839e9940854
Date: Sat, 07 Jun 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749265793
