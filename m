Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474593290C7
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785988234; cv=none; b=dakA+v+6ft/FbMgOVfx3lGpeKWjosqQRWxE+o5p60v0J4Zz6pJoIPgS+OgdEf5I7QXDvdUYG2PV5shai1L0lR/N+gjZMe44S2GNC4y0dxg5mcihwGoJSvLTchADVR5B3C52jOQTysFx1NuTdkitAt6/zcjZmazSr6HqYNRr8bIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785988234; c=relaxed/simple;
	bh=YC/wM9yrfxJ+0D7bax8GOGqjTVjAEDZQcFsJstcLKcw=;
	h=To:Subject:From:Message-Id:Date; b=BONpL1bm8iw0orz1dSte3P8EKXZavfrYaE2Usr7Hrzs6nVeCF91IxyXMkjlnArj0RAPlBD2fBnOP46WazEi9VVIudvj0gi8Ocs1vlaUsQ4s4WC7HDUQtzVi4z03F9+/WOQwKEIQREZFt+K6SHGIHUXFBZpVexT1nByR5Nz8llh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BQQv2qAd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BQQv2qAd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A4CC2BCF4
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785988233;
	bh=YC/wM9yrfxJ+0D7bax8GOGqjTVjAEDZQcFsJstcLKcw=;
	h=To:Subject:From:Date:From;
	b=BQQv2qAdA9oxaj+atJpnIErtR4QSgnj0zIpfqdFKWg+UvnOzHSqkcqBLK9YMSmg8j
	 3kCQzwZSMnkEWHGzLplzxfXjaFVEMbo2s0qlgWB3cEBVC1v618NFAM4+Ptr5MDgyGa
	 9XeEaMRc52y8+tThsAm+nc81P38mWn/4PQvgMPImtBhh4TR0QDmKNF2jjLomUO3d60
	 Uqdy57f8ZLtEGYPghd7hW3WVSWXaW0LWR2spiXsnJTK2U6PGhrrs1WcDcsz/scBuGS
	 Nnjc/yTwhWXXsodyUETjxu4PLyUHOglcUWTtYGy4/iHt0+wjuQhZwBAYTTV1ZKvDdk
	 Q8lnehmMOMOpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD485C55838
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178598823368.18915.4849645036055275506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41f12492ee09818c6e0614db917f70946ea778a2b1779619ba463bab0e6fb2d4
Date: Thu, 06 Aug 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785988233
