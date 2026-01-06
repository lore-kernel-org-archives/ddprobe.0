Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4FE4A33
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767660834; cv=none; b=ON5O0fChrEw5sI63toCTsNzNWCxDsc+dk8qeBz5pMQ0IOysTl17zP1sbpJ3R2WKG+RDKUdnE6f6JKTdirSz594Fj2XX9s6NJKzKbvMmopg5y+kO8ylchepnvD+5ON1KlobXplVItSFZB2odGDxJqKRzIXa0MNm8040LFu4j64uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767660834; c=relaxed/simple;
	bh=0El0sGnRKF8ym4uZ4WlYfcIwkSn8t5argSDHzJRv+eQ=;
	h=To:Subject:From:Message-Id:Date; b=rOxpW92Fuy54UaAHMIjMMB5aCe6QxgUG7gi5ql551aN4ZRTcMcF0d8C2emyKWYwLAOnYtxKqJ/L3x4fTWqH+f4bjdyUPNpDFkw2oecnqSV+myh32zVpegkcwcygAcU9buy8Dl0ForfDo3iQHfGqiksuUyL37hq12w2CGfXp7wkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=as+fv4TY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="as+fv4TY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F264C116D0
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767660833;
	bh=0El0sGnRKF8ym4uZ4WlYfcIwkSn8t5argSDHzJRv+eQ=;
	h=To:Subject:From:Date:From;
	b=as+fv4TYtGFEbhPiabapWvQH3C2hnPe0jQ8rutmVlv2zOO7KAp7wgGcxMv8MZu4Sn
	 FNEcdKwOwPxzWaOigMUs5zKZAJwO+mCzHdfCZgPcsT7AZcRGT1IsiWmuARG42v85xP
	 rEqQf27SbBZqPJMkBNCZIXo5eml8PEYOfYAkses0xktWTtjZ1wz3LU9Jk8LZH7kCvT
	 pIxlXCM3e8XCm+s5qa3JKdj1ZrMm0b+e6uvfpXlOpCY/TmPZtdFWC9AseAk5CUkRVM
	 c3AoU1QMphkXOnroL5yraUxZ+/gJaAqe6XPkG0uxRMbmXbFZ1DTKHN0OJ0lpB40Zru
	 osDvBJ/lVPJsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908BBCD0429
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176766083358.14778.3794165363068342274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f83e15371f49d5847de03dac83daa2967b34fae38f571809ae4b898b880b35d
Date: Tue, 06 Jan 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767660833
