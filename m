Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19157227B9F
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762709994; cv=none; b=ZAxaXH3URfs31JUbtaUEVx5y8x3lPwEtGOpDFqdSq3KyGesqMDlU0O1s3Su6lomqd9Qf5pmOEkiBO1xZ2hkl91AfG+5qTESNVpOANPQesVmOETMQDWywjGwpJEdDezGY3Zzk1Nd4JITl2ZLePukXcwRHVeBnZNAEbXhmxZw7jzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762709994; c=relaxed/simple;
	bh=1C+AfM/ChVvmQvmyjHKFh9O3yTw6bIFIFZm9LrvVto4=;
	h=To:Subject:From:Message-Id:Date; b=QTi5wLTrfGn/hPewVJidIgjXMCDGf4fRJmZqWCTvGUh0Rtcl9gS7sUjtdhK+AtRhQwi6c3EhqI7IS8Z7Y4elPcazJLqRUO8pjTPzs6L8/DmTHhpBvlNVz7Upi9SkzqlJmxLR2INRjW46P1jyA/x8ODScrA7CnLq2FXpX6SIpI4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BSgAV8r1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BSgAV8r1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA20C16AAE
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762709993;
	bh=1C+AfM/ChVvmQvmyjHKFh9O3yTw6bIFIFZm9LrvVto4=;
	h=To:Subject:From:Date:From;
	b=BSgAV8r1oLW/3sbY9S95Ko8ocw7bYd0cLR6I3yfH2agmhjQscglqWvxnVcD97CpOF
	 Rjf1j/MiW36BetQYspHJ69rD2Ss63TEN6mA4htHKgcyQDGm+ouO4pv3Chw88vzMEHY
	 zLl2jV0pq9U7X020SpBalCdBNo5/zPIzZCljJf+OFCxasBldSJJlWnPfhN/B7kFWhM
	 6/xf/Lpr5igQvFS8aI0E6DtZJZ+D0tc2Yuif9l30nvLjG0yuu9xmc+Eghcdw9vh5Sx
	 sMcUzHmu+syepX2SrmOE2oa4bWmv+PLQIjKfZCQ4pa/RRCFSkkCWQDbZ41u/nSxNp/
	 V7j6yrvJ1UjFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB21CCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176270999357.30445.4510760959750796014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7b41cbb9fccb72e90622f0047e9530c1921588543d6bdf66adc2e4d8793a8c3
Date: Sun, 09 Nov 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762709993
