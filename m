Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4FB288C2F
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760872794; cv=none; b=WvVMJ151UFSrUKqA+pgFo/lZpwDgqLcu4s1yup+mTF0uVT9sunR/VcOjQgrv7XqGoRY7EvBqOaw7jkCYoqc/0UUTxDeOmeKDnXwyAtDCVP9Ci7cWUqB90sz+65ez+svAkO311l3BHj80VN8nXw5nuJdHVM1Cae6J8cNxBQNVkU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760872794; c=relaxed/simple;
	bh=m8RZuvSo7CI9o4tpM6T9M2/18YoupKvaHJFzm+baZ40=;
	h=To:Subject:From:Message-Id:Date; b=T7msG1kZNtR/UYuPnxHSWccGihWS4HYGMoCGZ4/1CpmwdJnJfUYahFXmjywkx4B0NvyArXI8ORxZ7/puKi575NWWOMYLHZNZjqcH2IdtfteEs6EfZHI6s/R+4A590jEQq2eBjEYuickcK0ec+6guhh5SWkcUHK9P/coVNsZj0WA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mzxMDlMm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mzxMDlMm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADADFC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760872793;
	bh=m8RZuvSo7CI9o4tpM6T9M2/18YoupKvaHJFzm+baZ40=;
	h=To:Subject:From:Date:From;
	b=mzxMDlMmltqizB5bl7ozlPKJfCMFEaTOL3jemjODlAh+me0gZm2ql/802/ubwJZNI
	 gD+iiuFRMbn+0Fzbp6tzD1Gtu9ODe2aoZ6hFpXJciBtut2pLJDIckDRpBnSGpcwKTp
	 kOEZ1cLkVdJsVZfPAbc2w1DwaIxmzoIJZw8i/8VlVpFyH4j6dxwUeiMKJhrCezDU8t
	 JWHPnyYH/6IWHkL9+B54zC2BuT3HGdKZioBV7noODLctUgyFOzYmvuoxV1BJ886C0m
	 hSIr+k2zeG7U0nAhAr2hXMCLOsj8RHz2ojb5o+pjJ9cY6cMpRi5BC74y16MyjQgmb5
	 goYmnq+u7t3Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957B4CCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176087279358.18208.5697469735424370942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8023907e024229f36c794d2992aec8793a7a81e21cc7683f4bf2927bbdf305c6
Date: Sun, 19 Oct 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760872793
