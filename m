Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BADA40DFB7
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 00:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777681054; cv=none; b=E14BtXGOBKJsyh5cdlDHC9xmZJpqjn6sR1enn1fxlWXltgWYXKzMWKyj1HeKbnMTanqcMBpIEx1+dphnBP35djfftVkP5kp0OO2K5BPzx3t5nfZAUYCDegThK0qkzi2DE6ZhHt7+vBy5mL7Pe72Hn3A/56tonvRnAcUp9EqJ0Vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777681054; c=relaxed/simple;
	bh=DQ1SXDNHLVAmnFKGRS2l2EAY+UrZHRjQyuGqRbdG6Uo=;
	h=To:Subject:From:Message-Id:Date; b=umCaWjoG/e0YVrHVmweYdbNfhmqCa0+FPt6wuRofP3J9Z3PH6ai3zJ0x8Q46HYChHn6pbxzTd03hD+b38WhjDnaMEpILRgYHyiTRHn4xscROKtlkA6s6UphNTHSvswqRHHE9Cpah8FpRCRZTC5f0TOSN7uG4NcO88G74tgIy3Xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+ZsGddR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+ZsGddR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2251C2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 00:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777681053;
	bh=DQ1SXDNHLVAmnFKGRS2l2EAY+UrZHRjQyuGqRbdG6Uo=;
	h=To:Subject:From:Date:From;
	b=W+ZsGddRwXlWL+3f4PXhdFXYzTuGZwpxMNrTtYXTICqtbvSB+OaAcbKWNP5E/AK2G
	 d7fB8bGjah0GeqvyGdayeSwhIcdAW71DTFA97QrFHWULEBLtK3R4GcQ/IEKvhzLPFX
	 +eGX6l9fMF/5tCE3IJwkYkQkQkD7gXxXoV0f8q4kf7a4bpn98sF5om0w/4ICa0qUoq
	 irfSTlgqRwXHGTcGgfuozOi2x0hkUkpywtg2+kPHn6XXk0WKSM4E0Flyd1dnE4eiD0
	 z3mBr6qw6kpv7fNyE3A5wQ4gCdq0oSSph5UJXsxFqZhKHocKVlH5etFc2/NsrzMRgW
	 xo0j94CUjf6zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A85CD3427
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 00:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177768105368.1150.11704501432546576218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 916cecc094ef103fa4435da2b87f5a3da0faa6783eeab9ab09a95bd1159efcb1
Date: Sat, 02 May 2026 00:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777681053
