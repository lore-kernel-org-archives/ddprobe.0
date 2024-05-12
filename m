Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59A2318E2A
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 16:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715531543; cv=none; b=OmgTbF/9NJxpwThKLFgMyQOHRctiQzeaRCmHx+b+AAPqVunX1lDmjFIpdtUz+hPt/jM0/t2f0kVULpz9ZBm5dYMzB5Ar9urb/6HCIpHCRSSoy7DNfoG6DjMCdCEbT9cSsqJ48iwMSZ3+7iaenycDtbmm6namvOIAduSQkB6u1Z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715531543; c=relaxed/simple;
	bh=bCHNy+kmgq7+yFy4cw4b4eMQCgO+PnWve/ZSpDeYlSI=;
	h=To:Subject:From:Message-Id:Date; b=CfCsAi/O/kjAPLAx7BjYspqv205UJmWumbjxbiIO+brUauwVDL56GQ2ivgPlvMCRsaUkZPS7M3JcTElhkUrPS7pQWbbrTf/SyMxAkEROGtZ6+dtaePLVhwZV99HK4a4WR2qyU9wXHQxRENxtpqBffuGcPK8AMPKkFGaF0JbPSfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sbBV4pZ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sbBV4pZ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B46C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 16:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715531542;
	bh=bCHNy+kmgq7+yFy4cw4b4eMQCgO+PnWve/ZSpDeYlSI=;
	h=To:Subject:From:Date:From;
	b=sbBV4pZ7a0jjbXAyndCTGMdAbRug9CFR/araegM3RA4KzSI4ePxijHsRrtEEQFbQo
	 TzFSjoKbE55oU40/Xg5Dd9jX5Dy6fj0hsyW7651f+1sUgS75dPEh8/UtAZ/Z5DOctt
	 1Its1kwGX+TDtToEf7iDIIJ5yD7Uw4D3q8jDZgUDvTlUxg2kKz0lGUKTo1JAer2E3L
	 0SJEN6c1T4EwSwpMnPjaLyNtLOyIoswwXhbOTdYMKsSqIPGLkDE5Aa2D9yf79P4dH9
	 lzN5FruhiHK+upyRYRzlcnRFmtWm+No6+NGJWDBEk6TCm6DDsiK1qY/S0z6JSqzK88
	 MXgs8A16bqKxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2FD0C25B75
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 16:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171553154279.16675.1597440444212271631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b663aa0e3846c7a323313c76514a845a2310df170654dee1295c5b1dd1d0c27d
Date: Sun, 12 May 2024 16:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715531542
