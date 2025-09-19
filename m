Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4402EAB94
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758268795; cv=none; b=EYYtQBy6zUJQLXHtri0XLOUuHInLzkkfY3WcTlpKBJluFdmqc32j1AKJ/rp86RFoAZLIyCGOCdgH5QdE2KJ9l+DLdPzghihK36UgNPUsV0SUOhBDohjYe/pjm/oo2Bl/Eca5Oa39XOXiIi/k/DZ+INeUqFZc9Cp9ZNA9HK+XDpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758268795; c=relaxed/simple;
	bh=LhTRKkB5W/Z8W0o8zwkpXF2cYJGPSdlvaja8YAu14ks=;
	h=To:Subject:From:Message-Id:Date; b=h+r59n/CjN3jumC2FXa1f1Nnt5qhZvetT79pX0VtTtnDSboyC7H9a6gZ3QzZPohPU0U7KgbyvktA0A4zGSd/9Q8Aw3/Dw5Fu2Zqi0miH9BgxFKnIUb1u/Z3WfjAmTNyqCg+BVNGVsH7nR3nQCoNjCjcKFb+dBnAKxTBx9Ia6Fwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YFr2/1TZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YFr2/1TZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AE3C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758268793;
	bh=LhTRKkB5W/Z8W0o8zwkpXF2cYJGPSdlvaja8YAu14ks=;
	h=To:Subject:From:Date:From;
	b=YFr2/1TZyOmRJ6zIE2CKOoSgMAY9g19WeVSv1SCC5V2Iw84XjHAlYLk2oabueSGcn
	 2Rkv8liaaOmoPV1Tqj7TzG0gjMa/m3xZ9Lh4eJ4SPDXetZPR7uuZsXXzH1ZJdNlRIi
	 vFYDC6I5m1rrnS5DX2b5sEVgxvZS7U//sEe5xhKntTJhC/14yc0bDFPMreoDgTfBtv
	 ewvctHca8JGpr5w8K48N2pVzMgBH/x0bKkfVDwySPNEGD/1vF52ls8Mz3Dfu4pNAAn
	 HDHytLKxSJprC4bTWcMnQm9EKQPOLL5P5bPRVfR7eSvRB6m0n+XLssg+JN1PHzhJYa
	 gGSj9gWxVrHoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D9ACAC5A5
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175826879361.10454.7440589471879823552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2249d8cc021b3a394250e2e5e6c453d71cc03c5c421df7dd723d1743ff5f0cc
Date: Fri, 19 Sep 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758268793
