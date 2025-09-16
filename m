Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFFA0D2FB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757997594; cv=none; b=l7lBaN2txVo0wyvqHoMicCAs4Lo4uSrI4c2fxi7wooO52Q77eeqK4Lpy8/DCiWN25PBOFT/09vkojD8cRt0jiJsmB6Z2dq8cV1fn1FUgo01DhM7mbNhN6VOFjARbe/XIb15j4RBe8gUGykiTTclfizo09cEtPYp0DgIWdYEUYlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757997594; c=relaxed/simple;
	bh=upDxHZiRwz6mpx1zvGTwYUxECoN15pepxbKIhMoNzFQ=;
	h=To:Subject:From:Message-Id:Date; b=osfb58ouopsz+6g2Oc7hiy2hmSvL85QuBRIcdeLHiJatw9eBHhG+fSgEdB0NChXF/rOPIN+9oIr1kgwaK8AVcfdwbf3/gZN70qs/8iStmUMMf3ZNurx+jzpSPa9TX5xcn67yVa1IYpsxv5euX8c5M43FgHjEG+kd3pJ/DJLWl0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DB1XQlE0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DB1XQlE0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F0BC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757997593;
	bh=upDxHZiRwz6mpx1zvGTwYUxECoN15pepxbKIhMoNzFQ=;
	h=To:Subject:From:Date:From;
	b=DB1XQlE0vceQyksbrIfQodS3pCff9N8nZX5PdC6oi/yZaxnQPSBa1wnontF0MMUFw
	 g4pmu9bS9/NE0u8RNz1gC2BUg869tkY9AuHBwPJxpSiQ/0zvUj9yIrtSgEGDyXwYa0
	 tAAQLV4ncHG8wX77upqWPUrbHn7eU3IfQ5NjNB7rgd58wGY4CioCCXxV+nUqeRF6ii
	 FF4Hxi+/TXspo0451DAut1Bg5fpIygdtgpWkdxdRezRIe92xbR8mLH5Fqc5csrQqN2
	 d9uHyiQm64L9c+oixOafUEql4LX3QdERVD63Yk9lcDaSy36Proeq1i8dQ7D/09PziZ
	 3THQdDd3b5vrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E979CAC592
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175799759357.9572.4971984186944149669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a04d3ad5f92ed5a0804e7e34da9b2e5ff4f98b6e7c85bf51302ae5822298a5c5
Date: Tue, 16 Sep 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757997593
