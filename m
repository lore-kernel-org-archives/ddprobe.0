Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C441EF091
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769219634; cv=none; b=HmKNqVBhCvqoOzXCp0GuKHUFemlncZQCMwEWAn2nxDf07967UeRgTQ6ss7S0LWTq6ztqKynEecWiFwgOpsJlN82ykFjbQA/KLIBKTRcoWv5Fy8JDl3zsYOh0lRVggfcQ18x6+rEUfPb3yOq9TCY0uUWrEgCsKW7n5bO6TlcPKGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769219634; c=relaxed/simple;
	bh=u98T/BC+fLiGpZ06yRbdWtNer1VTBvP8CmIR6v9sMR8=;
	h=To:Subject:From:Message-Id:Date; b=o2vcI5UGgZVhHp+K13EIbweH0nHyw91peSUTuyyz02OvKwLfJL4rrCk4zfsUD0q/jZkWyXy0f1qO6U31BLgQiIuytfcMNLaM+pUdOz2Y7iv3DnRZur5dUcoogMFw2s6n1/gBh44ZpV2NS4w/vz8sf13Lqvr0xWuaRHozBWGDr50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KaXCclqc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KaXCclqc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CB9C19421
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769219633;
	bh=u98T/BC+fLiGpZ06yRbdWtNer1VTBvP8CmIR6v9sMR8=;
	h=To:Subject:From:Date:From;
	b=KaXCclqcLbIoVWtMU4mSwmO3HlbAYDr/EOdtS+NPBUgWTSOWTzIrZtYpork22edEM
	 /GMxUpv/XlwbGv2KxTWL6chFFBWFLbQWYYUque3Yb0uRd1IBV3bfmPsuj/28Fb+8mZ
	 CHC8fePmlGcx0VeRF6znIjHasOrrdDMgutW1pHuB3vegccSrWtcbcOJCWBRT3BqV3L
	 VHBBUECn8wQqI7t8mY29j6XiHhqT5tUAFtJrP2edML7QvCq2x9465TBbA2Ql0DsTFK
	 ukooVxQx1qOmmX6v2zkJEAKK90rxgUs/w3L+Sg3RkfLHPKySfdo8hqrA98o/pXca4C
	 m4+PqsP99QyVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956E2D778BF
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176921963357.17723.13616037475747689766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f727f2c3b14dd85f66b7a15f4b21228e40641da66e641ea85a245f38cd6e0d54
Date: Sat, 24 Jan 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769219633
