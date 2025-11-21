Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B77C2848AA
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 19:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763753514; cv=none; b=N2CpKmGdri3CqZukJv8CHX50aSJfw1nXFod8tnh9La469+exW7m+QTp7al2aFf5lM/kkSttz5G90HVWI+VY7KCqbhKwk6xTDW9/5kwYeHV/7voSTG8SmmANDvxTobi/BzZUVAn3xerzjJ0jt0Qb8+7eRL3YXt08j7ODWosOGYNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763753514; c=relaxed/simple;
	bh=0IaDGwRiw9eh0FAnNa1X4yDX8W0fBP1csSppNtJZ54Q=;
	h=To:Subject:From:Message-Id:Date; b=o4nUbRmUeIU1pwHR+XPntoGchDH9y70nsLJsY8wAaSAiB3ZbvBSGPFnb6bSCb6kmwJZJih4AkxbiGZmoNT1PyfpeImNgnU4FdlBPTP5rEvo7xRHsaLKyhFS73l7//gxN7VMHqKHyWW8m6rVsExzyXL7q5x5cMh7+hz4pWwYktSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ci38BN+D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ci38BN+D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2A5C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 19:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763753513;
	bh=0IaDGwRiw9eh0FAnNa1X4yDX8W0fBP1csSppNtJZ54Q=;
	h=To:Subject:From:Date:From;
	b=ci38BN+DIbuoHhCPlNLleCPNd0wACzIh3fLCGb23+Zwf8GktJqQT4K8uvbFhRBnRX
	 HlPj9Jncr5J3TWr/xNx+BQXq+tVHSfWV9kvf6k2DAw0Xhb5jJvzZnA23MOT2+gsaVf
	 Xo/OlxttXPtA3knalH/n7NnrA3FJicVNjYuxqSkbLIqHjUW0UtU21s3jbRSdQn42N7
	 L5IJCZlRRtdkkmai89c+s29e5YSQXGV3X6RNKjhSjU217ygPL7zKlyyJ6ypVEvJMez
	 KRwy4dBijn1xNcPbCih01QAzZrvfs5DK/PmWoiDeOX2qqVOdnRWy3+21fR1PalYWtg
	 O/4CfcqEdyT3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98877CFC29A
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 19:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176375351361.13357.5731958755523793258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c422a02d0fc8dd45e826d61e09a454d1d2e40960afd9e20a9362f5a18e7611dd
Date: Fri, 21 Nov 2025 19:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763753513
