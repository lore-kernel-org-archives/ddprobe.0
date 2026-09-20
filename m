Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6AC3D3D1B
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789881634; cv=none; b=lAJwbnuXx4bZcoV/UD8N1RlMTa9FxQC1NrxqJNz0eUU7X8DfjfYye6m3hK9+T+11cSYGOAT90F70FyPmNQCxeNsRyRLDPx7JTQHcMJhKxk9RS1G13LHs1Hwb/9H5/EyLEY5bG69qooUdO9J2lMJ3ruPo2BmnSlrV+peX182YvfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789881634; c=relaxed/simple;
	bh=SlabT4jfOkOdeiV9sgDj7tIZ2PUizdVVtJipROS/8wg=;
	h=To:Subject:From:Message-Id:Date; b=SEzq4T5xSge9DuDn4UT5Bb9w99+C7lwBgBdjI4cWIQS9N6ZyDxVKN6z75qGwraiTOPWWZ94UQ3s8MCCQ9B3BDuKUiDfW7+1v0V9LRyOC7S1oz9TlkLUiLP5+MFVCXcyBp1wjZF3xL7ioWQG3T0Qf2ETtNlBBtAFWvTMf2+8lbUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EtC3M5gb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EtC3M5gb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6E15C2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789881633;
	bh=SlabT4jfOkOdeiV9sgDj7tIZ2PUizdVVtJipROS/8wg=;
	h=To:Subject:From:Date:From;
	b=EtC3M5gb600ZUhbSOLGspeJfKRADNtGy6+SLIayJXdFd15GqqR17G3jO9uyoNleZ6
	 phCQjGF1RtwxU+JbH4DjxpKvjaht8j2/2kkYf19wEt7M9O3lyZLswjkZBjmfJnGr0t
	 RoqStE3lg8eTNQdN0YKwx7ti64QmUfYj95Zd/CIA0d9QFpNtJNtf4RaTwZQgYuF8M+
	 8TdM7z5Q9pbpkOjshw9cJV7X2zev6za/jZZgqTR8b46UGLDowrTGic4nKUMhmPjBFH
	 fLymFRQeMoaOt7AZyFFQ1dedDGNGGdRG178NitlD4I1Mrb+qF1DKqDBpphe/4BuVCF
	 f29UqEhMoikKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C06E6C982D0
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178988163374.30734.10377664094848067709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 507e33ca4de709809a8974fe577ba53812867ddc289bf82580559e6783d5d0a1
Date: Sun, 20 Sep 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789881633
