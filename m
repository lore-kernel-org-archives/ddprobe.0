Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9422EB87B
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768034034; cv=none; b=J6vjCK6ic4YNlyJVrxcjNFhvhRh5HbhzNcz+NuqTPqmo6Fv63M0kTiV5I0icp3G9TAKNr/1aHoNQD5Mm++qFMG5/lrnf+xUEjcGI4DFSA5Bs0GMkSVEvKDPYGC/hBboX82gcvSMPHXpbLPLfJ53XG2+cDBOmwQv40nXXH8GPRsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768034034; c=relaxed/simple;
	bh=uYjkEeHGufYfpLypsHqGC3ZJo5G1sFzEQigibxpY2l8=;
	h=To:Subject:From:Message-Id:Date; b=sTqjf4g//rkdkCn5sYNp+EMMFL93N1C67g1THNqmrkrevn4Zc1YONEIqH2rzWPPZjujxZv0i2g8stWnrGDy+rAhP3rmpBS26hck9MYG/9k+CwZFd9g0dQwb/opWKplg0EwvLgSuiaUPg3Rpi2FUiRO3OKBIjqr5bQL74PmZISsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+oz3zJm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+oz3zJm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A68C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768034033;
	bh=uYjkEeHGufYfpLypsHqGC3ZJo5G1sFzEQigibxpY2l8=;
	h=To:Subject:From:Date:From;
	b=r+oz3zJmVAgDxbnPb6JhlKpUXjkgGiDjRHjdHBQiECL/rBI+nJlozgi6rLWc9EXWG
	 GS7b3h01A//owfR20F1oeYVtYNfDn2OJ36y1P0wfvr/AD4UQCffgM6UWmgMs84YNPW
	 6uFAW6nNgS47BF3eRK3NZZGjK5kmorEjxPvpHituUWkJWljeQ5CfAGjN5PTDXg5Y7c
	 8oZOT6X74qjp5lLtb8nuspQytA5eOD+LZrtnhiGzd7ZHfFWrZoNp0d2lxt7+N5ccfD
	 ltkF1YuDdU+HLaqU7180Ycm9DB0W0sE+eto0F+H7OlaJkpS9WRH9nQ4o5hspVUic0H
	 ENZFF7xZh+y0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9206FD277D8
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176803403357.12293.17122864947872783205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21fdef004929ac432eaebf7fc36d4b3eee17c2806a2770dfa4774269e2afd847
Date: Sat, 10 Jan 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768034033
