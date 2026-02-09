Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1A625A2DE
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770630834; cv=none; b=oRH1Jo0vVdwqgCECYUjW+B5qgHttDVuJrJFZBu+XyOo5XxjFrSCd5jOqPXupjH2KIqZCjI59s5Kw2DRO+YDNzVTgu8OqDYdgoM6WL/+ldPgLgLcBaXg0uiYURP3Bam6832Z2ycS0FheEXYNgy0p0wzAKD75TTnoU/D2Ny1fr2FM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770630834; c=relaxed/simple;
	bh=k4tjdwXIlVAtyCvGTx2cPn1gLINd2FQgALfFilKE+0k=;
	h=To:Subject:From:Message-Id:Date; b=ruguXJ7qyQNbEVhvoV/5uR9Kho+viMU6OVHrNKvavQIU1t1aDNSWEcua3lCy0EkuuqogkWPj6KWHWjn7VjjqTEBDbTN61Xiq+By8pce+I2V9eRn1V5MHDE+y9NMAtC5OPxZJoT7S1rbiEDuFdEsf99nEYMm7MWNmhGoLnx0OZ1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jrRkey/7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jrRkey/7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8051C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770630833;
	bh=k4tjdwXIlVAtyCvGTx2cPn1gLINd2FQgALfFilKE+0k=;
	h=To:Subject:From:Date:From;
	b=jrRkey/7RwRUHbD5icr6KzS1TGx6Dtiv45Bx2n4SkKWmxEMCQnx2TsTtPJVWENNdv
	 X8S41YMO2Z9G4iWJM7gBgylvr8+SlXeAcr3FEP9JTcPtWl9RM1d65pKIryhKWtMPFa
	 TjwYCXXHZOUc6i7JTVsZhb3kYw5i1T0o+qWGlGWxfqS1GxExnX1KcIgyt5zHbwRk6z
	 ii+8Z0xQ6Ffr9lio4GCBtuyeAPSzsrCo06lxbHzr5PGCgAOEAZ5oJsl3f0rFZIthvm
	 1UPySG28xXAPCC7q5sHC51qTK7yxHu6Si9vLNBQrm9usELrzqIBcJE+fTEz+oKntoY
	 evNy+h7ns4dgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C50CE7E0B9
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177063083362.21605.10251672062505316484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e83b4c37e5f4a855528b463c891693519c228ab29be344bc04a3c6cc0db11447
Date: Mon, 09 Feb 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770630833
