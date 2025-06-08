Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AEF31C6FFA
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749386994; cv=none; b=FPLEESmzOH885R+kWdWRoPQxU9ra1j8P/BYIoqifq6VOrdtdGggI0BH9IOsJllDy1L6NAiihDR0DSSD1g94O+FveZrw76MzG779k2U6/UXFF4S5m+fCGKKShisrIXHU9pNYzvSX1MmhX+Ns67/2+fRzzgUVDlAwOvseJRwThK6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749386994; c=relaxed/simple;
	bh=I7Z8qobq9UKAmX9vaStvZ//y1vtP+aNV5mEyz3Xtmqg=;
	h=To:Subject:From:Message-Id:Date; b=N4v+mLbu+OgbXxdLHB6/g1C/rFmo7hpboUCkSn+uCHluQm9fK9r0AWLKdkqGVkwIGFp349cjOXLB0+bKGT8QNTd+B63tUnAgw04Na4mGntfUFdaXXdqDKo5ZSxHw7fVPx5SWNx8tnsVKYWJxY8M6mK33GxTkLFpxHTK82f0K7oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PRQzn/Wr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PRQzn/Wr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30E7C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749386993;
	bh=I7Z8qobq9UKAmX9vaStvZ//y1vtP+aNV5mEyz3Xtmqg=;
	h=To:Subject:From:Date:From;
	b=PRQzn/Wrmhpr/t/XnFkDTVWfq+lr1gyF8oPcAcbcdWHBD+bZ1H6HFo0MBFxql51vT
	 CZefhsq7Gfez9vXKPINry2T2sfzzDETgtvGgjGIhmtmPyo1v4WA1T8nk+jLzAz06O0
	 X77DD5Qp2vA7HGpUJFtsNbZrOjoWTY3JA0HELcb8A6ItnUm60NZmdVj3iasKj99waz
	 kIL9zBSHKVQgK6QdFybr6p1mivHUcsZd51+/OZPBMEHcUgxjeOy42YONJ9HmUC03I0
	 94mOxmUB2/LvQpbqhglPLqg8OH4SOfNurny/eLR7IqLlIVVGXJw80lmATehNtSmKcj
	 Cu8OEVu9kOBdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C43C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174938699357.11886.1586358638764719842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fab515be60f2192d25aecdbbd65b0589cbae0838e005e0c16c9c6a9d7e6e5801
Date: Sun, 08 Jun 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749386993
