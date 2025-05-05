Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382CF219FC
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746414594; cv=none; b=NDE9cDrHPDbEVaUDb9CxvFuVR3BRuFHLGFI4qAIpl5xNkTeGPzWPE1z52+ajQ/jRH/FWOgteeaDUeAhdMYAnKq6dveX3dYN/LF25B8FQWXyOVtcv0JuA++FAU2vwWhPkLvJbei8TR3WRNsJp1UC1MPImnivt1a6o007jnd6GZhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746414594; c=relaxed/simple;
	bh=YT1dtT9E75w/riP8668IrqqJWW7yp6XQ0PVUB5Rz9eQ=;
	h=To:Subject:From:Message-Id:Date; b=r+U7K8DOWfiZw1IAf3+BiO8o8Peloolyq5qQWKyGpzu4xyD5L/4pDiZjDvJdGRYDG6bgkj5zM4Qe/IgQrKbhvurLM1WwdZTDEqyg2PccjcMyTaTvpDNbJWbjqSa06IND8LaA4b6YVjU6VtgtAaCnirwp/O1qp0TJBkRifWCMjns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PTADTOnY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PTADTOnY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74FFC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746414593;
	bh=YT1dtT9E75w/riP8668IrqqJWW7yp6XQ0PVUB5Rz9eQ=;
	h=To:Subject:From:Date:From;
	b=PTADTOnYWsfFwAsMqrAQYV7ZV5KRySZW1p7U7mNRL9gB359ABPJFYkfGU4tAdq2F6
	 dVmhkdw8NqpRlXcfIuUdljwm8G4AyISKqyEoJnRQ89tm3Cd7cUJhk3p43yIBy1SQCN
	 oqtW6Ik/tt8JeUN55Igr5kraDYvlslXF1Xk1vWPJLRlE6oULHL/Qyeloo5zjpjt2Su
	 z0eS6XoHj6u6NLj0CVd2vPKjgQnQmD6jNvHL6OWmG46r6csoZerNHylfvg/orSU4/B
	 DP5+hpAbrcVCJd6jYU50b5qogMh2JOmwpSrns4aSWKWYXGj5FSvOfCvGhDP6ANars4
	 aHrfSzLMu63kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95362C369DC
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174641459358.20638.13255705624104597874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6815d5f4a8340c5a6f5b86f16c5c115a814358e13df0555c6fa7b593de04fa8
Date: Mon, 05 May 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746414593
