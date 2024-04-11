Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 658053D3B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 21:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712872163; cv=none; b=KUBl05+p2y00ng7iwQOEQoISWZ4Ag7lnx5D/ZysKoYfPZopwrvufRS5tbKrOVSK9z2nUAcU60vTuzT2M/0KyS+aanMkHLJtwVhyjHoz7x2h6VV7q5x862bjVLhAhad8Ppjeyj77JMAe9SqkqD4WsIKJDGcqp5LRGo+hdd2ExvLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712872163; c=relaxed/simple;
	bh=kILldU69mHVR7ZTCmR3g2dxNIvZOiwScqnxkbsr5FOE=;
	h=To:Subject:From:Message-Id:Date; b=trb40toHWJZDrdrRwY8SzdYXs2QdvcaZYkuhjtA9z5jPSu91TsLWoTDksJSCfxszVB5MTvmKCmoA7qm6UX4eMaeqjbPzdfc7aPNxf/Ib6dgjYXPc7/rtcAv43aFPRwP/0TdIrvfjp1zFenBioios3fTIqCiaKSNuwjkFFwaBZ4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H31fpFYJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H31fpFYJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB436C113CC
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 21:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712872162;
	bh=kILldU69mHVR7ZTCmR3g2dxNIvZOiwScqnxkbsr5FOE=;
	h=To:Subject:From:Date:From;
	b=H31fpFYJv8l4HgRJ2nXRUg908fTuZfH9xbt6cB9hoZEuGKL3dzm5/g7cR/sE7Zftw
	 nii+SdT0/TPDnJf5rgfupbLWBy+BHXPGxzXy+6yqrrxspxGjK6bAgHDLZJWggQZLg6
	 m2FES9U1d+EHYEmrkDIyYYsXNyhhMG/I3Rb55H53G6rJGDNJitYalSjP5HYL/PGlBL
	 sEOO+bl4gtNqCy5D0UNwMB4BJlv6FuFzpcKzuIi99D2DyeM8etnOKiURyKxXHZ6doo
	 HiRswdz5pm84ft70kWtGIK7wuOLmfr7WM7m7Ubt8t/jFDoblZEsMe2CyqzPAD8wApP
	 IES7OMLKlAv/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4DE9C001CC
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 21:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171287216279.30611.4059970940969967858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15f80d91a4fff7d58140c168c8cf52cc8aaabb5c21663777e83c39fa5a95f52b
Date: Thu, 11 Apr 2024 21:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712872162
