Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221FC13C3CD
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762648794; cv=none; b=k4WMt6r/DwKCmP31XgM15mGfqDkSPZn8BI1BbsHidJaiRqNDWDPyBuxTnRmmbQoJGHUwjECD8tEIjLb0A+UamzqB3x6bsk+Tc0047ZYVs2Huf8RaU4q2Kh6uSeK1/tm8Oc//sMNJB+ppgsYR5HefxZuMUBil+hsgRMHtEOIDXBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762648794; c=relaxed/simple;
	bh=1OorzrV4/+j+CPqyI08pvTHqDtOlEdfDVS8XVgYOfv8=;
	h=To:Subject:From:Message-Id:Date; b=sFzcUYBBBm2WsORxDdA9mDItdlf21SVw+x4SE/PnrodVHucWnR8LwlrCw9duGlA3a6Kcx4HgGMueHgmlyAWoabUr4bsQgCYeOozcQqHLb75Sdp2ILTQyQcvRTVrH82LrG80a9Qtub3hpsg1YGhgiHGWm1EUSGIUJoazJAFgtIwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kfDXSqBT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kfDXSqBT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A454EC113D0
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762648793;
	bh=1OorzrV4/+j+CPqyI08pvTHqDtOlEdfDVS8XVgYOfv8=;
	h=To:Subject:From:Date:From;
	b=kfDXSqBTrwDgRsotGocE3o62WhI0KCTpEsTGmEXnTJ3Ty14BUCtpaLFGz4BCLHBll
	 IvUImzV8dhFAS46zuFhj/Z/v6Sj1aXnnylBZ+WRdP26M/d0KcIO1nzJzJ4zKs8XNf6
	 A6duol+oegCBFgQ7c4h63IQ6q1Fe3l18QPYtdE81UToZUf1yvlvvpoi121MwIfXO7c
	 BZIKdgZRb43f4rGs86xzpdLSG+pkjMiyfNyP4lG3NcZbIdMyafGnl7dvxz6+TS9CUf
	 zPcUp2ncSFKOWWzwimzJhgz7BFtQVBZYShAw3jhNFAKqbuTuLLXwFEggHMDjodp1qt
	 3HBptqpvYsX7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94505CCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176264879358.4412.6235825993917465385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6d2281348daf5092b2b8b5f4819eb696be2920b6504560049a5321df53f48c7
Date: Sun, 09 Nov 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762648793
