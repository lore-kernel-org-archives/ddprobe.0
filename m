Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4841DF26E
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747196994; cv=none; b=a1iSCfviAk6pbYu7DlEUtCdY0p8Px4ZXwsVmphsUU+VJe3U5JVTS35LZvijrtGA8Rr6lDBjF7tPRcyCxHVsZC+MSbU6sDM3mgZ5uiebIxHTizIiTGgmXYrGIU0IGfjFPlh9Kj8MD4QbrP374doIua2YU86DjM2wLRg3+2GJdU5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747196994; c=relaxed/simple;
	bh=w4ONRU+SePAO+rxI316Je6Q5kiilwbkNgvRanRPwSDM=;
	h=To:Subject:From:Message-Id:Date; b=er8hoHqqK6Gt95uGCSkaWhZuQunKHu5/Q9/0xd6fyCnq/5XCeagWV8fg/yBrdcDuHetz62RCpV2tgy0zZgDiScgfcE2YGzsBiKvJa6GRENEEYXWDZoMOr62wkq4b2Fp3ziFbqP8G/meZeaB527TUDlvQkGO/6mvgA4HH9++FYns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=diFxVRSe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="diFxVRSe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05EAC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747196993;
	bh=w4ONRU+SePAO+rxI316Je6Q5kiilwbkNgvRanRPwSDM=;
	h=To:Subject:From:Date:From;
	b=diFxVRSeZuScNfa6DYzFcXLIlwXPxftTk93XYa0UgbBTFg5DTLU14dThUGbSU/jAa
	 XNpDKtkPq4D9oSon43dn445y1KHBk2GDC/eJbe+AK+aRPgon9tHQp3bqOxkHZq4hjo
	 aItpIcR/6Gx/x36/PWC+DrM4kiJd3aoE+kggK2Gej9myv+/CAzuisCJsjQo7acDv6N
	 ebgS7SMLjcHPWYrf4cBsilYweYscPxPjZTsUdPcnf37WbQ2UZs00IvH/w47+l40xwV
	 S9VyPHzdAut/Ct/HxvaiLvfR7BXpjqmRoioLoMj6NCZ+2/i/wwkl2jrZyVoN/FABEV
	 CAoKPcZ17V8Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE60C3ABCB
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174719699357.1282.1322601970849032635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28ad9a2240811b1408a48f3b983bbcb2cc744d803614e167c35ea7a43f38d82c
Date: Wed, 14 May 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747196993
