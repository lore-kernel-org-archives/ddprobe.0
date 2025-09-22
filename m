Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BB54315A
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758566994; cv=none; b=YLrVY9+dEYxQJSP5Qu7cAN/d6sKIt6AiHUNsjdYQgALZOnWcxGWTlWtIJCgImAzCvJ13QuhMrtzjgSmUWILyNFMn08Kd5dUKt4zXBcSdka5XjBqx8l5yc/Sjip/kgU40nkDVQK8+1NJQnALpOgP7Rigf5crqgh+0mXXdZ5VTHjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758566994; c=relaxed/simple;
	bh=Svi+ufzk56K5VenYgFT1S4F3O9vSnWuy1WdKRlpxyQM=;
	h=To:Subject:From:Message-Id:Date; b=jWnk3Yrxp9f72Zmizq7Hr25TbSlE8yh8sw0XV41ko525FUH27Plqqd+efXfa2FA0Qxg7/B8TwDInXI6SyWa46XVHyRA7ISQDG1M8sLTwyz4LR5xInWXVPUQsDmzjbK80G4bAv+/I+oJZByb9UsnKK7SyAVR+y5XVdswraGsl3IU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CJrAGsrU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CJrAGsrU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F6EC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758566993;
	bh=Svi+ufzk56K5VenYgFT1S4F3O9vSnWuy1WdKRlpxyQM=;
	h=To:Subject:From:Date:From;
	b=CJrAGsrUPiMYicOnmMKx2KIbpk6FwZdCuue8bx+4DQ0MyVnmmfF5fn7Z+JS09hYpT
	 ZCWz0vO3fDjDklIBNrZCvpT8vschWAI9br+EeR94cIkKgTUfUGN+lytV9nnWHa8MJg
	 gfZDdzm9CsGRYWGSLCaYz9Rph5hkghDgt4iZPON5VAUehI70xSQ+yM5nUGi7yr9xce
	 24f8HaQZMSr5R4PZWVOB4ZXcqKX3s9j+rjrAYDFXXBW/2P6iGMXW/nZdxWhHB3JFPZ
	 fGkta55m53NfBOmmyFmLPhYwsrS6HOVsVo6nbQ1U2TFDZt1w6zgteeMaSPswOhumew
	 M7ahapvlta6qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BD0CA100F
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175856699359.32436.8716872384502079345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 888070d4e6c72b7e500279f39f6d5ab6e06c5da2b929669a484f1b93b184ffa2
Date: Mon, 22 Sep 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758566993
