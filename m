Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B573161A2
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 03:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778989234; cv=none; b=ppbZBoceUADcashX64YkjvuthWRDCFwXDLqEeWekX4QyLCDj/iw1RXrgiQxoLXjsnd7TlIvJ1OazwLIDiERIavCv1Mit/ZfkZF4NPoFkghPCSEB/OZIUCtAvIpLS0HVDV/nPDqLezR9IPummNXp2QnK1bDd97SPYt97+vsOLMhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778989234; c=relaxed/simple;
	bh=dVoykA5hhoT0lHuk6CzX6mb7Wx9esqJ1FTcGggxqsIA=;
	h=To:Subject:From:Message-Id:Date; b=sL+hJdjISHeduJUZV/jkc0MKRAJdtrBHLY96TtLUa9mTkeAROIK3a4qCtXPB+VOWeuTydbizvc2r3ITs69f8W/qJxEbR/ynzpGil4OHqVRHiI+UpqIRv/76vbXX/QtGRjbYkpJiGKD5kCK7SJx6zaiN0ty8CTqPWTy7Alil77E0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2M8JzIy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2M8JzIy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A5FC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778989233;
	bh=dVoykA5hhoT0lHuk6CzX6mb7Wx9esqJ1FTcGggxqsIA=;
	h=To:Subject:From:Date:From;
	b=l2M8JzIyyaNXFr9BMfxQWE3UJnAgaRLdi5IitPF5ncqHZKSJ9o846XaQaDX/WZp2j
	 lnceS8jNFSQ/XSd8j/m6Qe2eg3HIMNFo6V8vCYGh2v/4zKngNSGaBbAT9974k7NLOr
	 lA821qZMFZwRXSv7yjvrJR3hk8K0R/tfrRYGbvfoMmgo9aR4opSvKhCo3e3kB7e5BY
	 EalcuSoUZPtNgaj7lTtiYLLNA7zE7NIGZmJXpeqImhMPx0KesRhotr5oO6cPboCCFa
	 Pi6BG1EJInNikwRMtQXHoi4BPYYu5SfezG/9/K2R/C7puV0HIax0vT4mcCts0bXXHf
	 TSTYvLqSu4f0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2672CD4F3C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177898923369.30168.9618983095182288845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf4a4ba188b6cacf850986a64b119ae529e98a51c109e011e8437fa08ac9c1c5
Date: Sun, 17 May 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778989233
