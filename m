Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355E52594BE
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735514154; cv=none; b=hBO+Ixueo+o49SU/7UKMSOU79r4touWN6vzcMoxQCJlk9ybSQKDP3mtT67XtuLsMcfTGJfJuC+T9OXn14fVbCw0g2gp1n/FtrcTckZ4I7rogsRtgDm8DCO7M8RzV44jO2nNGX80Lc94VT8d7CpUKs8zB3e4VZgva/3fnHiJKaIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735514154; c=relaxed/simple;
	bh=z+w5mOP+Ou/xM0oydQG8qkhsuhw5T+vI5/tAbAOMDto=;
	h=To:Subject:From:Message-Id:Date; b=ZHCrPsGeXR40fhIMQcKZOtSuQztFfEg67eJpVu5RTa2RCPoBFDNAH5VSnV7QkAGZLO3D0SH2cVxqrU0B+wigv7Oc6uTppYDznsQcdwSl+c/sFUe7vh6lgPj96AynJyTRgWNm+RpvgdIejG/nfxSFA/TIvFR6ARY5aM55siTYIlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U5JIQUzh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U5JIQUzh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF47EC4CED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735514153;
	bh=z+w5mOP+Ou/xM0oydQG8qkhsuhw5T+vI5/tAbAOMDto=;
	h=To:Subject:From:Date:From;
	b=U5JIQUzh4d3jybqoM8D1Tz0QopY/ayYTqyaXlXociP9rX00xH0Yr4OLIhXDwtLi4C
	 4jU7Fm00ac0JK5EcI6lP++AD/V+IDwhWJEYdxq+bNnWI1raJjfmOBhs5JTi0icetY1
	 T7Jqip0l44O3t6Yknr97vuGhRHBW9+TO9wKcA85WM4r3mIZc/CkKux/yGtIJi3Rjfs
	 wmHcYXeQotfR6aPC43owY9VHMfAGKCGJoUDRlgHmo2tQFMg8D1ucEzLDih+EWGzFyk
	 TJa1SQ+0IYG6KsHCwXfAJgnFdzenwL7R9ffcEkjYMavNV1i5xXy+t6I6Xf1Sbc2FW4
	 r0NL58M5cYM+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93337E7718B
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173551415359.4414.8838900798763214084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b1e2be24b76b8b019a24f3b14c379e9d337f3dea243bb7008263a2aca7a74ae
Date: Sun, 29 Dec 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735514153
