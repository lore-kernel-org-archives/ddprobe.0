Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D281F5E6
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743126595; cv=none; b=qBDEBjbZH3zdr5cb0TqA35C+8uIZj18N9objr3viRroMxqmqbbgC1eXcHLPEwbATxmM0dYOVpgPlDY5PMWSWdwOf8Y73L2e4gm1wJEUbeMQWdYOq/5c4s8UBRN5H2WxqxJJ1ND29gT87KYKcily+oKpfzH5vx7W4jWnUPJMNeqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743126595; c=relaxed/simple;
	bh=km15W3v6soQg/4etcoeqEPQkcsC7Tqk+XRK815hK/tM=;
	h=To:Subject:From:Message-Id:Date; b=dIXwZRSeNYfU7EkqS2pSlipq+lyrT8WePmiUcjiGtCV/sbVxdXxNiDkst5XKzopA4cgO0thVUngT38Z0R6Gb50iHCf9N2lyFeVUYJetYz76UhzxQDLGjXoMgtqqM+2s8z6k7MpHmw6Ne5sRe7C4375B2XCsNQtAOz0ecHfutRJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJ/29nr6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJ/29nr6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA49C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743126593;
	bh=km15W3v6soQg/4etcoeqEPQkcsC7Tqk+XRK815hK/tM=;
	h=To:Subject:From:Date:From;
	b=GJ/29nr6/6AxbtJi7CGwd8jsCmD95Qf6pKGFiPlTjOWNWR6uH4Q67bfXH5VPNPC0Q
	 NmwAkoYKT8GdeJwITh/l/QonCFZzpA2k1CN2s919zKG0ArwrE9hh5dPwQ86dyV9V3g
	 yBMFjQXX9Rh9YBdui9bTDDOtvXM6pkoa1l0skZEE+iFkoiU5CCpHK4iXDi7JbER/ew
	 0Oq3T6NF2yULZ8SZ55cgF9WVmn+BI4ffzzO+H5PeltdZmi/ZVRaKd+SycdJEnWBFYS
	 Gq2vaMCQdcHqyGYTGUwqU8kx3tikwn+KiCgMmho/xCkVvlf7UqMc4OqqRKnq2254ND
	 mmxQwMiL2tP9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B0CC3600B
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174312659361.16276.6425928827314518420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34196de47d4461ab72bb851f12f61e641158bfa57d93ce1344120f2780c90553
Date: Fri, 28 Mar 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743126593
