Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5C845C14
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754406594; cv=none; b=kfkXVA0qaR11/oKmqB98r+DCCLI/f3ySa1O0iLjdXgw9hz+1pH2vAxoXunCtPc0l+c6fdUJcuqtgBMEDdHjaLAZQVGKzGxUgUbU3eWN+La6GC/i0Ot5DBEgOdrtQl+wVF4Q3w1r0rtjPNSDvE2Q07QMM11SLNfgjil4yO6WCPyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754406594; c=relaxed/simple;
	bh=oz9eZAeBKqtgdfK2SNKitNnbbtm7E4514GzKjt+/XUI=;
	h=To:Subject:From:Message-Id:Date; b=YwJpUilJutCA5YLpte1r+aDKUqBG+UhtnU6dDbO+9jeV9zp/yQF9D+21yHG1H/CgW8YTQzIx+EBTmUQP8ivXQQnGwVrJrxb9uRJVa0g+D35DRsWKfoHgiDVAH+MhKYq9bef2dQSvAUL95xkCrf0FaiTTwDefN58D/9SdvGDpMiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YBf/mrDi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YBf/mrDi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0228C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754406593;
	bh=oz9eZAeBKqtgdfK2SNKitNnbbtm7E4514GzKjt+/XUI=;
	h=To:Subject:From:Date:From;
	b=YBf/mrDiOoTD88pLmHFm6JHQM8nDE2SJvMwwb7AOy8ubKQiVqSQUeuAlJmi2ktltz
	 rH+sPjxZTvdidMmGMoXA20s0mTlWXlXxW1GonoxllQkLmEZpNQnIALtOqKepn6QLY1
	 XpLTzh5lHhqe/eb8YQBmLLWzLjg8YDHynKBUSk5tQzZkTsJorIEAdghQrPFNvjdAvw
	 Kod5N1f2Kh8xKZ53ljvhiFewCQLX0ZC6sKeLwkierLZWc0EH/elq5Ivz9L2AEnGkEz
	 jOS6znZ097pWn/LknI1TlH9Hr7mCfTTSI7cPy+zfAaSvQpBmEWGpR2db6osrO58gU/
	 z0zymfKfPeKUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBFCC87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175440659357.4003.746666094627917522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0134f95ec4ab7b557370bda044497d8f301915e0c93a64572f6c85c142707c4
Date: Tue, 05 Aug 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754406593
