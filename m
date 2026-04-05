Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2796331ED93
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 01:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775353534; cv=none; b=oaemp7IuwpiY7GQn0O1cMPs0omu4CbEHJTKSRID7zW/u9InGpSZXQ0U4iyWQrVtxB/N6rphgL/mgx02fxusZjOVTbPTrD0D4HUmJBLZ4eBbh/krZ8YnPg9rq9/qS2J4n2QpZnORaUMKB8TNLyGjWBycaxoqyMX4MYYMpXGUnUTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775353534; c=relaxed/simple;
	bh=tb2KAIbjsQCndTHDeceuceIOuvknYymMoLV3tE4P6as=;
	h=To:Subject:From:Message-Id:Date; b=Filf0iW4lka+nNW+81HtT+Rr3FhNvu0rdHGpTICUjhHVqvEEmZxrg4ILTe5a/vJxcLS6JRjOKKnTTtwjjUbCK56b/hs2xLaugU/9JlF1kp9eH5vu1QdcAE1vCWmSiRW6LoTluKSrXtsLMXcEhMyzlRq8XGeFQthr3yDX4bUiO18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nRcRMc3/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nRcRMc3/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3101C19421
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 01:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775353533;
	bh=tb2KAIbjsQCndTHDeceuceIOuvknYymMoLV3tE4P6as=;
	h=To:Subject:From:Date:From;
	b=nRcRMc3/K8L8kLUTzgNEHu/U6j2gZDEtcrrVvRCnGQ9LxM9H2DQwhpP/1DTNEWFI7
	 U1AeXHVd1s1k7JidWhpr80nuCvVS/4j8ox8tb6zOaEOAs8v4eu/ByYBpWRjR8o8umL
	 CWTG4/M2TIjXyLSU/j8DP6WuooNn6Yc8tP69BlZRq692Y4RaF2Z1yUfcFKBtdYo9SA
	 Y5VvHoSs8VPI/b3kyoGhDSqtV63w/Ec88gYIWOuJKYaSHPXgcKxqSSdJg1a25Z2m53
	 J8eZ7tHCt/9OStFC/CAVc28ta7jQIsnJy0cArA1D/cWP3hRmYD+5TC2y+CPDPzGZAz
	 INktY2Bn/60eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0ACBE63FF9
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 01:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177535353368.5992.856729149618948777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 586441bce6ff6cb3a5950a32d964a642fcd45b6855121dc18032d51dad83c600
Date: Sun, 05 Apr 2026 01:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775353533
