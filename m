Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CCA740B6F9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 12:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782823114; cv=none; b=To9XpCvst1DXeQYJnb0LMjJMJspCcULFdwrZtn4d81Eyt8X5efFqI5Zd4hrBoBw+N4fHJ7xnKawumHTgmZqYEQDJCpnxeVVHrZ0jCrVeO7AAPxZan+5w2RgssMNk2Wky/FQaOSsOpMGC4+VPha99NVaPwoSWUgq/KKPRk9QOnLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782823114; c=relaxed/simple;
	bh=du3byA1jvR3ufQv4G0hk1vy+tDh2BIhmsyQhIA16IZM=;
	h=To:Subject:From:Message-Id:Date; b=DZ0pPPX60XnXeRs9gxX7wt8qd7XRqF9KJEQ1lsspUHwsW3f8JNG/aTwgKg6QEsa9losPcVPq/aI5CQU8PYf8n+aBzmyziwNySypWz1b/kM+MFpXGA9Zmh8MUWsheC/E5JrH4497ZOUrVADiS83r+/8wm8HsfNUDPMUfiBqi+TWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJZgXTb5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJZgXTb5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E65C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 12:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782823113;
	bh=du3byA1jvR3ufQv4G0hk1vy+tDh2BIhmsyQhIA16IZM=;
	h=To:Subject:From:Date:From;
	b=gJZgXTb5SBkwl9r2/xoU/SSI/LObQLJD7zE5vwf506Dqe7F1IoqqPYTs4+rn66vUn
	 1tlPOTWQULJF5GIrOEjbVYJCcXL+TRbIk8AV09QWpKOM5e7yYhZawFf/5XvcNOWkv4
	 oeLNoCUDWRrX+rkATzyYNYqiz/KAaup9OnbPH/VwvwT9v/OGwVif2f5G4BY5X1uS70
	 Yec5f0CMQoIwW+FnXNY0Y2hIWzqo76mhNsQBSs3rlJA1Ec6fq6vDecQS/94AcuzPgR
	 z0pACaBWw1YWbiTy+C75gZplTI0ZITio3I5sbQjfvI+/OuyoJoZHbc+UNFqs+Pv1/F
	 SdSTf7ZLFAxzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97C5C43327
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 12:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178282311368.31837.12250879707020349995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a6ea826eb3eff146fb9ca1aac2357cd68c2e7b01f16d12018288778d18f5a34
Date: Tue, 30 Jun 2026 12:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782823113
