Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04E7D24887E
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769745234; cv=none; b=C4vkkK8weBpj9nWtZr0SX2Wr2TwfsbtwciKObRdIaygJD+HwRMqRipuFA5pvLWWwyl6qZ/46fMtX9u2AHA2WvpsQX6bDC1U1STCjFbXQYRFKHkj+EvOIFczkokM/yaXcor8YC2MSieEKwEJxzBY0af4hTt/8ZA3zExrRb7Kownw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769745234; c=relaxed/simple;
	bh=M3viQDV5KV8cEVP6gdVg2dPkZiyR9iAHb6mgTZDfhSE=;
	h=To:Subject:From:Message-Id:Date; b=Olj3y2bVEK6KpjOWafJp+KJJmfQ00Zg6wjDS+FroUOOnl9BJr3rK3cFBWXCWQHIVgfjHB4fJ3bscC+Wk4HPqExfJoIAt804UMasSdO//iaQa8TIGe1wBp2YCrZjMV5Vxvweh2KqiWBtkipa2NYmSPIPwiLCYV4zW4znVS6X6bLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ys8h0UGV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ys8h0UGV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE91EC19421
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769745233;
	bh=M3viQDV5KV8cEVP6gdVg2dPkZiyR9iAHb6mgTZDfhSE=;
	h=To:Subject:From:Date:From;
	b=Ys8h0UGVFsvTm7KqtMIAqqiSODc090mzfZwFiQg38o4iTiHdeXp8PjWHhCuHooFDY
	 FQcQrD8mykHYKvoWJ7h8sQOiBZEIrAMyk4sy4xmaNJ8Jj8IzQeNMrIMQU5P7K0+KG9
	 2kPmqaS01i+mjL5un6wN/RTmuOIs9+7p2byhPfR+7UaAyLeGjNs9/njQcpVOgIxVGh
	 O2VnIaKaSPH59CISXxHlnwWkFTo7xk17yIO7nl2n96+xHNoytwqyfmoducoMvYwQw5
	 UO72+p6tKDBhOd7EXBdAnsgbAYrxqootZO+BEQYGl3+Ro064gboRQht8iZCB2dpU5H
	 7bR2sLk8ThjAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A615D73EB8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176974523362.31995.4816500714934573492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46c5a5ee2d5e4e3b9aea153605e466005a51603155b4560a7df4424ad95c3c1d
Date: Fri, 30 Jan 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769745233
