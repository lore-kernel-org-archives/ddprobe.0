Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9F0248F64
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760032794; cv=none; b=ruJAOk+vdMMzU6JRArf9GFaYBax5hCbrkpsnO0sMCrXmirE7QXsY5loywzUSv20IDG0nrUyZZSktRu7B1iOew1tqDfPgjWTMgQr1HFO0IsmHZhWccGrBRhzY1ONVvxFmmorKXcG0mhYIxNUI5Iw3dqd+F6v0szkw5rrP83HpoFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760032794; c=relaxed/simple;
	bh=hRnqU7awEDKEvP4U/N0pQTEQce78WrE2KrTw5EpCRXA=;
	h=To:Subject:From:Message-Id:Date; b=R+sojHiQLZRh+WRdDM1fRCCa0Idg9oCQOiHjtUws4Q1qubUNeAWWGu+zRNX+bTb0qhWYhZ5oaEnM+NrXzep0VMAqvCRu5idZA5zpWIGGb16lM6VDLhE5nvQ78pLy41uQABHHMzXgNmSdi7G/biqxQJalb3wx34wqD0Nzd7FmWsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQHu0sz9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQHu0sz9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFD3C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760032793;
	bh=hRnqU7awEDKEvP4U/N0pQTEQce78WrE2KrTw5EpCRXA=;
	h=To:Subject:From:Date:From;
	b=JQHu0sz9+so1XCHY+AKR9Ib4/4QqqB4Dtn4WmbVds2AvpsJpQJWe2JoIu5O65y/jl
	 Yi2w3hkIduxrOQ3xSS0wLuIeNBbRDl31jbRtFtttTY0tMqyJJuXfJw82r8v54lqd1k
	 s+HDmbPbedm3WvIU1RUCDyYtJ74fUnk8eTu9Sht5F0erXoRRVDUJEDVyufYUej/sI5
	 tF5jZrFKNnHfsEdufky/dA+g3OVOtOCl3h3kWLOOHDGIntgB7BupahRbnCR+y1jUII
	 7gayn/TqN6UxBtyQDyZbjw57L32b/TP8zEAD1ZuraOTrbJYQC5TJvpycPvkeT81VN8
	 4zT+rLHZCJmYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F364CCD18A
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176003279357.9398.8769128397112322754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94bc381f08ad7a921cb27b1d4f8592257f77825dfe21e45d571a955f876e0d2f
Date: Thu, 09 Oct 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760032793
