Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315B52BD024
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 17:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765645974; cv=none; b=nN2cFH/AqgGjqWWowHeLRwQwek2HMpCHI6cPubgMxNo9yWyU6sfLJp8kFRGx8UXmuqtylOjbiMHDufxA7GEVqreR+u6FabV5tDCzINV1JdBczVYiyUueDtT5gerM73fi46RKP/6Bqr4C1WMS785oVfe5puh4J/M8WpTBqKYQoUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765645974; c=relaxed/simple;
	bh=G/0FiMDnehWzbKjZeePdGAizP287tpKAjhoeJ9pMvrA=;
	h=To:Subject:From:Message-Id:Date; b=BeTVzpiivdUFKQ/11iy00ahY057sK3CIwmzvYadkEpUYTE61sXYzk5LuBfLL0F1ETPYeb0Y8SoJNryrwijaYAZBHobjcuFxy8MmJJ069YaqGnjeiy+hv1WVg6O1UVt1wCDMKsYYUI/whe7zSW/UPWwXlw1kFt2wXHLL6c3zfoYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h7/8w4Gv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h7/8w4Gv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B766EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 17:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765645973;
	bh=G/0FiMDnehWzbKjZeePdGAizP287tpKAjhoeJ9pMvrA=;
	h=To:Subject:From:Date:From;
	b=h7/8w4Gvpt6HyR0N2wNlufPqeAIYXPmSBhwyCdfsUnqyIp47gm0LpmLm1O7YaZ6CT
	 cCQ0sjj1Ynk5icwuJPYGQGtvubP30+3KxY8SfdK3n9wpv+Goe3gaxfbCqGN5tZCId9
	 UYu85iw2nOadIHS9oayd41lPNd+9g8vojCt/A9g1AY+EQ/COhIeRWAkljOuTMLrnM5
	 KwtstBjNsdzBgpihiQ4FBHJUU36vYpvsG//2A1MJHAz9vBl6sX1Siu2PUKgG3+stfG
	 cR6cITWGk44smA/9bsJkSmDaXi1uZCXnqJp/pc+jAf6HM0JQmeEsGefHCW5LQKKiFA
	 uY0SQWFzm55Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2623D5B15D
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 17:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176564597362.16306.9589741753985882243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ea88a38871b540fb07d8c247b839421bd72c3f66d59e3a69069080b1d19dc7d
Date: Sat, 13 Dec 2025 17:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765645973
