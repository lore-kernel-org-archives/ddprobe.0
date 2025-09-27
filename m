Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29458202F65
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758938394; cv=none; b=K9pzaQdL/rDYU0un8+AMFiMkuCLsxKM8/NX8Na9StmGu/c7eqNEmgijf9aSPOdIkXPwu8WNn3i26Z/+ma+uQKgvZhsivNYVjso0IC4ZU3m3ocyOJ7kLFIXWO8mzpr0T2NMB9TWQLYykvWq3F57aBDfnKg7kHGKYIq9P9fpf3eT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758938394; c=relaxed/simple;
	bh=5VvrS6BGtX5gs3615HGaE0xSzZoTlr5MF2ci8l5F+Fs=;
	h=To:Subject:From:Message-Id:Date; b=Lvti4xYfmoBjVIG8j0TvGaI+TmkBti8TB2D1mYWcMBc9T5nedu/ZcKyyDEnKMdOf+fBg/iMJGHoYIe86PzRUM1xHyLrH7d4bnIKL1s3bPvi1sZ0BW8SCV7KIqKRQrH29ZbYhocezOWkk6MgZ7zsTCZhS8tnvC4GcM1vH48wNGQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g07212lt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g07212lt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A851CC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758938393;
	bh=5VvrS6BGtX5gs3615HGaE0xSzZoTlr5MF2ci8l5F+Fs=;
	h=To:Subject:From:Date:From;
	b=g07212ltPMSyeSLxKamt21MXcpmAiSuR95PSp8UOxKNYAYcyyUd2xlLfnweH1a8QU
	 KsDMtwu1ZFo1Un70Ym3buACKRhUY0jCS2SyZKrnZevkuiwipv7mKbYn0FvUntO4zbP
	 XEZTIkmxRSM2PVqUCVOIgnbqKmj+jgtrfMUQyglWNOxO840MojjAWAa5zhWRvP4UH4
	 KcphTTHNn+K9ymnVo+KpiX98RYB2WeOQRhs7nqtAePzdTb2HvbR0vycpvooqRhYR0P
	 gzMl4gzgbHqKGAx0gYfz9AwseYDUU+gIzrOc3EVw88EqfIYn2R8VDYd1Vg4Mwt2UHV
	 KNt/r3ixkulsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94104CAC5BB
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175893839357.11809.259863193506801880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 501ededbfe10699a2fa127b5a33ba5a4f181943b7f520b2fbdb1cee3b0db5f4d
Date: Sat, 27 Sep 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758938393
