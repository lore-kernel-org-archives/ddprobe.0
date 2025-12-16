Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6CB3223323
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765879433; cv=none; b=rMDdG/mJdigHR2T1ORV7QM0ixVPGIZPUcEvkCENMpGgvda1yfV6SM4OouGNbhWzsXeTo0r/PZrUuxhNftbJzYbSUoEu35PjV8LyRnsRqRcPa4Rd0HD3Si7VR3HIvYoFqKkDIa+8soabsQH2Eya7OqWyBiFqdGvMf9HaMQYtZ5Fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765879433; c=relaxed/simple;
	bh=NKWcrdcHec7THDCJqDXsD5VC/a91C0/Yi6H6H4GqeBs=;
	h=To:Subject:From:Message-Id:Date; b=hOtOj9e2/Xx53PSU7OLQoqhhFmhPe1leCEEOV0ZGqxJwDNAcMUuRtDpZRpG/rOYyOCBeYSyqvq3F3T/4BfYGpXbx2mrG7Ie8KFUbQl4XZGniRu2Mvm0b5YyWyb/ZxZplWDALZaqqlN3e5m6/wHUmThYhzKP54KjaAWVqzTP2364=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kLT8Wrgd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kLT8Wrgd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50D1C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765879433;
	bh=NKWcrdcHec7THDCJqDXsD5VC/a91C0/Yi6H6H4GqeBs=;
	h=To:Subject:From:Date:From;
	b=kLT8WrgdyGBHgQV4VrTMDl6ePvGaXyyjo2DRhZfXj3E2tTCdlHmbMmcxBmP6XDMBP
	 RBuVxrV3IrGpuBEEuiV+3bv1SkTThglEbZXTIBhvAaUY1yQgPgCLKXczoKpboAzTFm
	 9CtbaeFn/UnyA8u1LzfiA81r+xi0EQEw10j7LWZ9K3GwO7GEWzEswzN5PrPCUYunJn
	 pRQSoecDcu4Fmpd7zWGpwIitbKJ3WxZQ7IC2e/V+ygYW+vr49WctXM2jxYvcU3kTu0
	 7L2pkKzY4KmvfrBxcoQ0JX6QZ0BBWLcfA5db4MxBNX+AnpHLE+B8ORaMQCL0JMCK/d
	 5bVsSLHvfYXAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934F2D5CC9D
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176587943359.29506.8504742252436003405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6ae042347eba31c4853ea493bb288d528e1bf4b501326492dc5f980f43a603a
Date: Tue, 16 Dec 2025 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765879433
