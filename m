Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21245944F
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766627034; cv=none; b=q5/jWuG8v5mn1aQtU71VmdCg/tfSIu70HPbbU9g90hLljA9WvnX5xUqg3WVl7bxfHV1h4T+xzL/X6I2oJVttRmzWtO2zgQaxPW2IN3U5WK+CnArx7f6rolRQD5U9CY0kB7aaFSww3cPB6BLvd0ZulLgYw4NkVUAxlUfTRjjcMXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766627034; c=relaxed/simple;
	bh=OqsNnlsa27CGK0df44e4ekFlCuZBhFrIQUZ9iqrYhHw=;
	h=To:Subject:From:Message-Id:Date; b=ZQ0BCmpVeh+9QZb3uSZQ1If50dADfmscoD4y4mRrpIfAx4cg652wROXzzNDQveFdBD/h9sxMVc81Apa6U5NxMWRwsiUlg08VO3EC4BqDbIUY4g+QbvVq4qDCR5lbeLJxgoL1dkB5LE0joGL+Xp6lHBG/DM/5nNVSsToYR6srBR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bwaIGlzY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bwaIGlzY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D21C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766627033;
	bh=OqsNnlsa27CGK0df44e4ekFlCuZBhFrIQUZ9iqrYhHw=;
	h=To:Subject:From:Date:From;
	b=bwaIGlzYHBvmZLHvtD4l76lWzFMEn63E/rp6aY+eTtYwM4HL2NhLV7yTSJB0WQn2D
	 vJJaLQG3/ZeOqZDj6fdozWyBx4g51C7gRpJYDDLZSIOULxR1rfZTuu4vd9PWQveiSF
	 v3uR57SaEnS147J2apS7Z2lgaP1P2lIqN93QSAnUNQMuPI+SbPSXicylht+INXRAGf
	 fy+AbpPM2ggNNZnl8/oZZF3YTN+bhVGSFqqi2CAkqez0fQcg6SOVFoZg8sxK4C3x5Y
	 Ux7wwppBh9cFzSp0OQCQuW4Hn2fSXPtpdL5BUCXxAWYB+QhF0coBCcRXv7Lq8aDHWn
	 JizYIeZR4AV2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DE3E784AD
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176662703357.13957.450736908596926637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7faa03600cc64a00952f000f310f8c61136d9b999c9c4cd965839a3b15d662e
Date: Thu, 25 Dec 2025 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766627033
