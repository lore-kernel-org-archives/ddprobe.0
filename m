Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEBFD17BED0
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760811593; cv=none; b=F0aBZhIECEIEmuv6uTNFq1TDB8i+WYhQuCWyjuYvIediUeF1iYncN/ixskpa05buknmw3a6PCxn99MqvOQAzE0eThO4oj48CfgWADGG2ocRxpryp44vlAwy8S6qp6IYvgbT8vXayoJouQgCUdsB64N3D8nSoqk5glIZosvagojQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760811593; c=relaxed/simple;
	bh=qD4X+2dz7WUFICRPWg/YHWxsiU8kBZsRZ1cXYR77uv0=;
	h=To:Subject:From:Message-Id:Date; b=epgYq75r0LyFXcYvRlrbiQtla+Kv4a6MX+p6BpPiPXAnNwT1jh10bvVPHkCb9H59Vj823OyWZ22bgxZUjgEyaurs++XJL/R4M55Yv6av1n2WtnjId7hZSgkFHiXfXzVNpAbAgAVTkHv5wb6q4UYq67ow3X6RA1ru0yPB4lQcqCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lE7B0PpI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lE7B0PpI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB29C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760811593;
	bh=qD4X+2dz7WUFICRPWg/YHWxsiU8kBZsRZ1cXYR77uv0=;
	h=To:Subject:From:Date:From;
	b=lE7B0PpIoRJ21EsMrv5EcFa4TVBE1hrWNXSDM6Rwhht8MyMYBwLzoZ0ksU8ieYLw6
	 PA9U60gpiBFxFZthpbIk6OX4C4WGjM0S4SuslzO/LKj5TGbNUT+4Ps9VpxVyhASgCV
	 taaFtQ4BWRDZG2HsY6Ccc5f6qakqH4m64i21D4KasPOr/6rQGgqAssOQ4EGZy1dPQb
	 qOohTq+Wm5du2z7fdIIAml08BxcNam0GdcBfKLTKC46wNHL4DK/BI4DdvsbS+SeQYf
	 8rrEkek1jc8hibzmjQAx057r7XCKadxbXyziE7vyv7MJzdESbGjkTBjtmfXrjh7qy3
	 mLmcAcr9cbeFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F714CCD195
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176081159358.19443.15027040150957074195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65089bb8738b0da27b5e89525a4b36fd3426fdcfe6b149d5a773cdb7ce83bec1
Date: Sat, 18 Oct 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760811593
