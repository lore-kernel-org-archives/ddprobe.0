Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EF5137750
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787623234; cv=none; b=RCNUwWT3vh8xroq6Y4Eea1DRrdUCeW0S6VEI0nygODIR3i0nSsbGRrEEAiULgpNxUCYvsLvZJTU64GZXjVltrG0AYWk9GinbuyJ6lwiWsIUO0DWwvAteMVnouw+q0329eQ0W7CkXyML4MRGXqTtmOh4/LzLY/SZQR08M5bOmmnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787623234; c=relaxed/simple;
	bh=M0uvyUdDPAAENQloBwvceU5luUBIeW6h0pUuT/8Tgt4=;
	h=To:Subject:From:Message-Id:Date; b=WtHdN/59klhXlkCgqjrobqzbJmWAMoALEDmebW0oCll1VsnIN9G7fpCTW0IU0l4230+pVPWwm/9FfkayAkroTefkFa7f0Wo0EJZ4KpXq9FSIdrXqmjVNW+PU0dBQy0lnfBhqEbMc5o2Vr38Zp5LHulkCv4k3xXR/Zj9hCCVvPNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MBYl1YCj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MBYl1YCj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE6EEC19425
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787623233;
	bh=M0uvyUdDPAAENQloBwvceU5luUBIeW6h0pUuT/8Tgt4=;
	h=To:Subject:From:Date:From;
	b=MBYl1YCjhTHrF6JLiDNJsR37Oh/Yi/A+tPwuZJ6wPH+Gixl/pbnbAQa4yyIhAUlMG
	 wy6/VIW9GVEFhcPqqlo092wMbMD+N3gG8+72MZQ8nu29qOnSya7embBG6TY2zXGKv7
	 DPoRTD96ePWLZ32uZFQQoBz3t3QUiQG1kBLiZvxFKnsdbf/C/qxVakl8pLc3u3nu5A
	 5m/98bM18Pd/qKdeuJkSNrGnSNTqs+BjitAcmIhkuyJE4upXdZnVof1TLTVV4o8Elg
	 M1usdyoWc8GkjahY9/dSguS90Z9OLIQ/oY2ud8bxDq9Jsbb2AMRBfqywBWTxtAIPEQ
	 KtWGMRtUJfb7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0DFC5DF81
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178762323368.4267.7502738417917120827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4acdedc35391d4f0ef3356ece93bf5f6e34f4de3b983000cda5cf7da4d0f999b
Date: Tue, 25 Aug 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787623233
