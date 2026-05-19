Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB9B3B19BC
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 21:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779225634; cv=none; b=FH9jSrh38gtCu8xyfHgSIvrXEqVTmZG4vpk865CLWiolBeAwWxqZwIBBmy5ZX0pQS5mA/w3dCIC5VzUAy+jeoyK5k7Xtu8D13GAL3fYiSJzTpKgFbkyznodTrdjAU23ROjxWup3/F/y+zmfeafdgWFPjzqUeEcyja2+8NzcFvZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779225634; c=relaxed/simple;
	bh=GW19HXSil/AYNVVCtdqxrMogKe/65owduhu7Z8flGBs=;
	h=To:Subject:From:Message-Id:Date; b=N20Yih2XkiSGrbFjT2ldkBUD45bAELGY2aQXrXT5BtonHKJIUMdHu0iUCHYp+Wqdj00m/19lCcJskCT3yhHYeWaJpQfTiOIOe0RSjjcOndtqL6b9CHF8nnsnUbn3a4kfubCSLkw5uwRJ+EKMqQJiF8zl26lQHIv2we1jagAqy40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NtSh1CIm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NtSh1CIm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C50FDC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779225633;
	bh=GW19HXSil/AYNVVCtdqxrMogKe/65owduhu7Z8flGBs=;
	h=To:Subject:From:Date:From;
	b=NtSh1CImBKBdpl+t5jUXFH1Qp2F2wPF1kerF7j6kbYfnOayzYiEcbf7kIfD5vHMjp
	 0FIW94K51jNQagW6l9kkYTwCO9vJZCJLGDxJ32WepiaLLJWYFEk9DazeEmo02gnsmm
	 qd4OWmOtGD/CowxVvAbCBlyb43jasd600bHYC4HUjeUrq6G+vKbSYmen6szYSHfVpd
	 wLuzQDKKDGe+salWSM9RYemHFORJokxYhZg//RtRMDGExScxB5Oa8vINfVJQ22kIWN
	 Jrd1ceE1tYo5276INFNs4lEizr1TDs9yN4laYU0Nuslq56xquLQ1Ks5oWOoBSUN1ey
	 g6m3KtJybDAjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB779CD4F54
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177922563369.3665.6577789115577856357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7240f2bea82ef0c33eda30b247dfce69a613f85aa827ecbf4462ae03b6fb953f
Date: Tue, 19 May 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779225633
