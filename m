Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14BCC39ACC
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732920954; cv=none; b=Ch35dARHnsBURHF3TscvHD16x57efEGhXBPK/Mr3GXQLWbq0058+fgSUPy6hhC2OrDbqmpZ5XbDpH4T1lxNsxrTQR+Vx2+1KAobbiUcUtgSvnV31OamcXpIYrqxKLna/GA+Y+ViqptKRaaO8JSiXi4l3Yrhsyiq++wtDveecDPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732920954; c=relaxed/simple;
	bh=qlp2A9KTBpVqyK1mOpaTfQIvggPA1WPjHKvct8HvuVE=;
	h=To:Subject:From:Message-Id:Date; b=ZK0qvKlEEj1kASlL/BEZWqxHFvCdTHiQyNlDJd5lRU2C039TZzju9de6Y3tt42oNIAaQKSuoMtxNuCAqeCpYSKn5kb10BUp2sB8347SFODgvW01dh9yEu5FsEONaQDZDPAZ/RTu7wbi2A9u/7vOogEdggsk/1glWJ5IxLNzzkhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBKfMp1M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBKfMp1M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43D0C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732920953;
	bh=qlp2A9KTBpVqyK1mOpaTfQIvggPA1WPjHKvct8HvuVE=;
	h=To:Subject:From:Date:From;
	b=CBKfMp1M3KCdAAjawExUSbAiWJaixDRkFmIhreb16DiAr17GO61s7hCBzvz0WD0FD
	 afi2/oaOD6HzXHRRui252pQPb6oKxbhs2OuNKQEIygiiH8Y55M5NZQ2dm71l7s+pwE
	 w1pEhUkFd8ldL63O9U1iLprN4Zts9PLtr3blgx4cCvb27kDOkzZneSBwiPpU8ax68A
	 Hi+7mKzi9MojMVj8bt6ODuSn2TvWqT4e5YcRrdzhIEHymmPBHx6xjoE25aV6smsJOH
	 fMc/JVCK41wML9mEKjj8CblPkyItjIiHD/EOkzm9oSB1GyRzIJQnvyxr6T7NPgXI5S
	 uKeYhYKQtnu+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92266D735E4
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173292095359.13235.5075974824509807364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac8ec331f27186cbf46911255ee2ebb982d6c89ed286a40f1f0b8973fa5319af
Date: Fri, 29 Nov 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732920953
