Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B99C3939BD
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788097234; cv=none; b=N4vO2J/jQpaaEC72NRSL9x3+blqTjdbGii3HIg7rot0APDR2xrh0aBgiLXRKTiXZxL89OoaeTzDBIsIrxWYDG3n8LIK5l2J62QYiqbDpF1fUvACFU/vnhPMIfxV9nfAC+vYSKHmSCa97TGumuyEFly7P7RscVeJRhx/dVA9P6ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788097234; c=relaxed/simple;
	bh=fEsSHyaKTYk4H/PFTRdXezVml8ysA1m2x+pb80/uRQM=;
	h=To:Subject:From:Message-Id:Date; b=L3/QKwYB3tZXK3+kqZpjPRFuolkShEeZic35DXzWcC66OR8t5WQCNZTZSgUZm9F7Sek9C0yAz6V+hrONhZi/YDYD4E0F8RId1DFIfByW55jL06SAUtsN6ue54u3PMLJmhfeIMF5bkxjW7rHtAFbgbB6KHFA0rfTMn7eCtjhIxjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBGYR5pS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBGYR5pS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3234C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788097233;
	bh=fEsSHyaKTYk4H/PFTRdXezVml8ysA1m2x+pb80/uRQM=;
	h=To:Subject:From:Date:From;
	b=eBGYR5pSPZgFYhRZhuT/t8HwXluPj18Rt8aWvGcDsnuFjSdwBahJKJ9jJ4XBQz2LY
	 fs4Zk5Uup0MpBjOwrtEymSapoFz9p8gAYyU2Wo1H+gQ2aJkJ1Rfu9oytGSGLAphxL/
	 ip+qtysNcD+ZtdiYxunngbyK70s6AufAq8eMQtEJRK1okyJR1R0KGMl2gRkyRBcR0S
	 iBFivD2c+Bo/sNlNCLkB7eYjAwyazOdjcHhRSb/bx+mYOYwyUllJBHb0rk7lNOtqVu
	 EyOEYRvdqY2oJBD6ElOzqd0I820D6TUY37g4oUdW6dRSPNhkCK30Hv4fBAoxKwgnyH
	 fDPmdXC/HnZ0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCA3C61DDE
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178809723368.17470.12276645959024180623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bc23f9766e8e2021fc802888f6325ba409b5ac63aa3c23926d06d6ba0546ce1
Date: Sun, 30 Aug 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788097233
