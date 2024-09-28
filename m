Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3046D19DF81
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727511954; cv=none; b=CvGnLDsnzWYJRMMG0fde5yO0craxdxf5rNwq5qCsf6TA/X7vpn3rTjPnUwaA8AxAPJ3AD+gkT+5yFG6UWKZK2ozeiEGV/QiNoSMb1uVya29b7xg7JdnEqjyva2JFS8PoT1iXDdXoKSBCCp91OQfErsM4nINhM4vQ+mSNdFcpkGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727511954; c=relaxed/simple;
	bh=5ijji1TilbTx3xW1dlf5LAgGXOvYiOtRdEwJCOlI7ag=;
	h=To:Subject:From:Message-Id:Date; b=gsPXgVwe9ZPY5C64EnlC3RT+ai4nvk9YeP5iDDd8q0Y02penCCERnEuOHHHbWj4Ah4ZXqev8ID3jbQgYUvh4vw+nS36p1GZrXw/axBuVV9FgW9BX4794pGnUDp3vMoPfazEZAPPdZjQFhM+gj0G0EX9NwzlDSwQBvGBvIOOraqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJeRlj9Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJeRlj9Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68D4C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727511953;
	bh=5ijji1TilbTx3xW1dlf5LAgGXOvYiOtRdEwJCOlI7ag=;
	h=To:Subject:From:Date:From;
	b=GJeRlj9YB+jrbtrpG7XT/Ko0OUbMua7es9xVyEUQBVx3HW3khZfAIk2LBpbPybeVV
	 lkSbBWFXLlwcPowp4fXwTnubu7l4+BLt16KtBqnYi8qNoMRt38Ct5xNRwdusscbNjl
	 krEFciXNf1l/YbgKi01d2f6tJEGBrnYrSIYaGl1JQLxMJCOT2Vf4F2ezA3FnTEaKkF
	 62vh9tuSRxgKf+oEwYx98m2k5KDXcEain0K9Go3R6n64mAfEX3ckrg46NghxPWrRMF
	 RXhQ58V6URB+bC/hLkpZyyKDVSqx5mRilOWFmZJa3r9QU1UOPiXCyI6WL0AK1ZYm5H
	 koy+roB3SnNGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9597ECF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172751195360.23886.6057349530233827081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fee93aa8f8689650423e5832723b9f388702f219f38fd6c53a4ce5211078d8d5
Date: Sat, 28 Sep 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727511953
