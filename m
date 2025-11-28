Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B63B2AD37
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 11:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764327774; cv=none; b=qO7vSVrVGiuurmdYjH/JC0gRHKoNgmNw/h6bgzHs97BcxvBuPFJ4nWN21Wq6x+/iqla+KonRT9VDPqL8V3Ui38O7z773JCRj1ga+O13XpXAyzfvaGCkdhtnWGe73Rig1JOmYAOS8/Vc9+cZzqf4DOMdIs3vVQXj3gWpQezWun6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764327774; c=relaxed/simple;
	bh=t/7w1TQWRqARUqibNGjRZQF2+qM+Jz08jQ0x3emeJ40=;
	h=To:Subject:From:Message-Id:Date; b=ipgvQ+W3/MGp4mSGBuZaTdfXTBicgAkXytSYUni/MWSOtSUlQg5jZ3T0nYigwCq/s+mJ//RVu+0nJGtisrgEBgcCTHmQA0ZDznOP2wKjs7kO0g6SsRVx208OqymgrkHsDuxAfmPoYS/CYwbDSAtxIgGrFNkEWt5KHT+zUplQCh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5Z0iDix; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5Z0iDix"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DCDC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 11:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764327773;
	bh=t/7w1TQWRqARUqibNGjRZQF2+qM+Jz08jQ0x3emeJ40=;
	h=To:Subject:From:Date:From;
	b=u5Z0iDixIjdX2Gp4MX4sjyrsisAuZ0PTmeSCxLbP7D8mEtEXsFMnnKC5YfwemxUAq
	 bkNumvHkjGHjxLq/6y5Zh2iO8nhW/9nSLG/MKAuRcsOcb8I9y/m7096kwQnhJTfM/O
	 yEPlZGU3WaQt102x5zVvjbLyceJ+nJOBlxQbjDCDSEVdWM8x6N4lRZ2HbNLGDC0y/u
	 q58GlL4HLgM7fivmDZ2gZePM7ElmWno31B6txvmUYY3AMe2ucAyZfFRAe3HgMFeKbL
	 vuRid0VLJpB8dFYwCMODJ2dSLTrInxLKLIEfMEF/HoHMiOo6/lkK9UOBOPMxXCQUIR
	 OoKBquEsmLayA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9484AD116E2
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 11:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176432777359.19839.7396076195699533000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a41142dbbc6b64a6ae55816ce55a3cc2352207a6ff91ceedc61ae8736f7b22b
Date: Fri, 28 Nov 2025 11:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764327773
