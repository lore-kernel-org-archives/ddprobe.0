Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C542D9EDC
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 16:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777567054; cv=none; b=IE27HxRh8aG0sjLRzZSYduzqAqWgj+eokojivvsiswZY1ES1gdIBsqRGpWtaXDNXtlheAOQjggIkyNGCExYIuMrQ5NmsZmDHgRIxV69OlSPSU6YHS2Ij9Hw640rCogaTUSdiCrgWIvDQQrWDaj6Z95zrbDrNoCy89z0P5WylsjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777567054; c=relaxed/simple;
	bh=Yva2QKVTtXX1fQhakaHPkarJ2/alZNiQZY62JeeVp8Y=;
	h=To:Subject:From:Message-Id:Date; b=hf1xCDKgFxf1XXU+oQJUOVmKppH1qqXwmT/rb0/XCVHjq+uoEm8Qf9iTKX0AJ4Xm3bpQQm10VFDN8m29WtYzFFFgkJMltZtxYSLTJ5SHcLqg4MeGnTOgWHM9lnqzWMgL4lR9YYU/smE8kNG90zzFvBs1+lZqARw8pASRJ8pWxOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iliz1rMe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iliz1rMe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7FDBC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 16:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777567053;
	bh=Yva2QKVTtXX1fQhakaHPkarJ2/alZNiQZY62JeeVp8Y=;
	h=To:Subject:From:Date:From;
	b=Iliz1rMergkppQULIej/P6qn0Uw1OtSJovWAp0h5IJGvBqUru2shmjIud8cDFX7vj
	 iUHPFczoFr6SggmMZgTFvoiwjPpf2kkU7cElYhRlzxLPSgZ2ksd6pzPzFdhjpa6SXT
	 ru/13Gn3/YVjCK2ITV/mbijsWiiaGKiX+VmB7AlB5qbAhjko9OsPwR2WRRXdZjJKlU
	 KdiUBujixEOo1adFYrNZ+b1OZlUgdH6wyk9WmawnyWpiahU0qHgHrLZfjzWm3NR5S8
	 0VnBPMaHUiFwjWZ1H6FDGK7+YdK7CCdo3kHeMINPaGHtORvgFW01LcHd58Zef5Z3EK
	 IMoHggFHUiCDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F54CD13D3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 16:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177756705368.22916.9944935586060389094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b98be310027fa6df2f2479f939c8adfc364045eff95ecd0461c6bd61d59b7e8
Date: Thu, 30 Apr 2026 16:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777567053
