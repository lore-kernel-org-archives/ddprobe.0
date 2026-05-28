Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0881A25EF9C
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 06:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779949354; cv=none; b=igrwRKP5vdIRHXViJmKCsFXkhKBsRCnbbZQUgPjtCbzGJF5n66ZZSlDaXIG9PqqjBHEVUPfgQOoZNMWQCwS4m+RqDd07I5ZRyP6nT8x+6rDS6DUVVG9q16VSeXCoo+DslPm5cR54jrkIuz/8whoHv3+O+XTzBtfKK0m2YEYNgoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779949354; c=relaxed/simple;
	bh=7TEMArLwCeyEh42aR+1gR7U6Kr7e5IlR53b3atw0AhY=;
	h=To:Subject:From:Message-Id:Date; b=nVTcZwdFE98FsGrAWg0Sp27h/WTAGHCjBDxI/vPcWgBtFUtdq0Tt82+o2tUigdspw3Hl78xhv81I8Mu/IQFWryOvrujEMLULdF0y/p5GOxXnkq/8ObT+wrokRAmfkaAG3dGRqyYf67nxDln78wWS8XD1Xe+cOJocnfJbjEBTsPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m3DoCM7S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3DoCM7S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E36C2BCC4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 06:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779949353;
	bh=7TEMArLwCeyEh42aR+1gR7U6Kr7e5IlR53b3atw0AhY=;
	h=To:Subject:From:Date:From;
	b=m3DoCM7SDEtxbIUrLAHAFMKBOaYpDGiTAvTyPJxJsPt14ZczjAlvajCmS7quS4rJV
	 1pN3OMgEp5l/ew5E5/bklX5FnvgazeNtG3LlJMirigKnuKsOOxa04i9M0kiLvUVGKn
	 spJEpnayk10UJy68U3yiIqovQgUmJhufRiWht+clNH2bgps6P6qq+xu8jHq/YM7B/S
	 dpslTS1ADYDDNf1/KHdrEExLSEuTFUMQE73mPx65NFAb63khjOmIhUpw4i7d+xi54w
	 YCW2tCHA+0mHqXAynz5bmTbSCaZFHxbfI0VLPpPMFpaJp8SAC4a/qRXaxeUVHI05h4
	 bO3Uw34jltieg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF73CD5BD1
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 06:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177994935368.13806.13183260968537384336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bf2bbc35c1f106ad0d8ccd149c3ef9b980352abd7f2a01c1fe8d5220614593f
Date: Thu, 28 May 2026 06:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779949353
