Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C1134545
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745980795; cv=none; b=E5Ov43A3NFkx1rDlVmE+AdoKy0vLYdAe7C5DqRZvSBuwZc8Vcivuq3v/lP8aFWPgwbFSqerPvHyl3SVuLMk0wMk0gx+5M+BgRv2onueb8MQ1UJosZuOKRupSW5BKEesMHQuGthOCE4WzPp1WG7MpgzLKGqvRZR7JKaxqdv3/KrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745980795; c=relaxed/simple;
	bh=8H1qzCtGN0EHEwbbcdN90rSdeyw4NlRPo6j9xIHG3OQ=;
	h=To:Subject:From:Message-Id:Date; b=ZjZQBuaZ0BTF5aZFpivyS6aV3RkExjHn4ENrMF7LyPxRPS0p2SRhn/Ea40SX2eQyM2PYxsqAHmxGJKSsVDNuE460vbEEXF3GdiLFJBkycONcWhKgaC+w44QHFDxGBU02YEt3raXe0JD5SHpy5QYSGCt253iA1CT5R36lEXlAwng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jcm4mYkl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jcm4mYkl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F10FC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745980793;
	bh=8H1qzCtGN0EHEwbbcdN90rSdeyw4NlRPo6j9xIHG3OQ=;
	h=To:Subject:From:Date:From;
	b=Jcm4mYklXSDM23qxsAsTvsLl3Kt8HdIdc6kCq/eSe4o9vtwz4gSDjYeEkzUaDcyk/
	 7HbOIfWnrTPbF+HBgz+3shcUbVyACy88VC/IZ2uzQ+h9JgYg/+yvvnhBUH/35ri8Dp
	 DYfvDUoYnv/b6uNf4Uo6K+BqDaO6M5nIpKKqomJ+xqcqU7pDE8bXOvAJNm+dxP3dGd
	 eBPOopR8607CHvv390khDX75vnaYO4mhhN4PDjntpXVvMPJz+uy/nYYHviWdwvU6Kn
	 syX4X3IABTwhqK51p1t9IFXIkYDxxHN1IT9GFmJy0Gn3ZkD53+Q8euRGlHWrrfgX7l
	 dSpRT6zNIv1MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E62FC369DC
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174598079357.23138.8519924548371382053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 943ba6579da4a30281de3ea87ff0e280a09b89e19063c2610c19ddcbe90f0dae
Date: Wed, 30 Apr 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745980793
