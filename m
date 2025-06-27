Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CADB1E572F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751067594; cv=none; b=KfdbHAwMB1sKHtxjRt78Y/ecww/cBPyvQ+PWtc8iQku0PIfYuDewpH8ePS5D374YSTa2OrW9Thpyn2owB4ZfiQeahY3Alrl66YSzdiZ0DWgtHwQPHt7sTkLtrzN+qgbclJFBT6yx3cTi5RlIqD3OvF9hRbw9cPbW5AyaA/ZbTq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751067594; c=relaxed/simple;
	bh=cfOeKLE7aqoH0g102d0xDfwtGLDIqD9CLaB+axPmHBU=;
	h=To:Subject:From:Message-Id:Date; b=OGHuS/UK3BKPTmT/M36TCOnaQyWEs/OOmmwktJnnphyiBJ1fzekkAv33KYQS/gNNB7Pq1lkZ7tDJJuQUMRWmdfbWGui50JyirRdWgBBH9aNVO5rdzg0cSBoQ1OD4FA5+T1giB9f4q0f3aCYU2xvHQGJe3018ClrkjnhJr1B1pgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hPG/7MYh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hPG/7MYh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB33C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751067593;
	bh=cfOeKLE7aqoH0g102d0xDfwtGLDIqD9CLaB+axPmHBU=;
	h=To:Subject:From:Date:From;
	b=hPG/7MYhBqZ2ao1m5cBHOa7Wx8S0vY6CZ7d3NWTQFRdSa5ZT6LHm83ZQADGDwCDJL
	 63FQoi9lBgv47mLj8gliZqC/hCAMAFeArnj9gsLBaF/Ls/kba6pn7Dp0SyMsT8LFS+
	 h9Df6YiiE/u6bFm7gyGQV1qgoz8rBKXFHkeETZNIJ7/N3r31j8U7g1nQd1YOqzdeYa
	 GjKHVT1AGfWkhu+BDCjX52KDS9Y2awq3Vr7bbHYAC5MotmDi+F/+ShD8GXLQRMqWqZ
	 I82iXiD0XZrZKpGqnjSA+Ii71OHuo48l28LKmFgNGjfo/8a3jjx5QYk/AMdfMPGfC9
	 A+fLNl6kza1Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C3CDC77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175106759360.15612.2384037207734727219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fad840f25a33a81b344aab1b47645c47f62d9a9d975ac24a040ff85a37d1e12f
Date: Fri, 27 Jun 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751067593
