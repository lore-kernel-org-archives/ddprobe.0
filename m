Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F7D3DDA8
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 21:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741298334; cv=none; b=gSOc1t+urTAu/8vXoeehkpYYEV2mMwNTNcRQzMY9FpDjxSqgrerAEDDz8c8PGkB3mgEWZENtSVzN073ayAzlF6vUGXEoeOhtjfo0MHElShO0ywEMUCZP4S+7kAmTrik7NUmhgE6eBwjSuziMDht/ENFYA1m4yuBaDFjfc80AwPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741298334; c=relaxed/simple;
	bh=oauTkVq8OsrQq0R9A5fichoJk6IC4J6gDTsZTWC5UZQ=;
	h=To:Subject:From:Message-Id:Date; b=tBGRpXIoAWnw2tRnVyhyIuPK2wtaiwr8GO8af+bdfGYRr8Q6QhEdcKMrqyWRjBxj7Mhws/enhrwURyyIxyb20+cNwgBVe26k959lfhpTQg3TnA31ZDQyBvS8zlTFaSLf6fWKyTOAKLdKqh5lwYUPerPMJjZ+IlgH4ARjGUjSNa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q6LjgYds; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q6LjgYds"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0917C4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 21:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741298333;
	bh=oauTkVq8OsrQq0R9A5fichoJk6IC4J6gDTsZTWC5UZQ=;
	h=To:Subject:From:Date:From;
	b=q6LjgYdsRSMItGQnU0gaBzIORReHv/x+Z5smJmVqitGGW/5M2SaHNjfCrMIr6zErc
	 Vbwpl+ekm5hQA4jWoWE3V4Ju0oiVa2EHQe2CwXd7w1ox3PMCWll4b0MgQgFVfHH/W4
	 MUkVvUPHTqrwqXnZ/NIAbrTeHMUYTURCDqDHemMp4+bJFtcGN1GoWKfJ+ZE20MiuYy
	 QK1VrPuCmsEIFbyz4enhdT0MAKv1n8EKNVAL1mXgfokcUL5m0CZpy2PPST4jMjmI9E
	 XGOfR0TITMIKcsSLpI2s6Mywk6w+PDdA1QNy5rewU8DNYs5QvMoLQTSeKTyCqKdEWy
	 zytosqbwwA7Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB3BC282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 21:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174129833361.15317.4107147120934969070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e990469f79f1a01a53e573b63ac0e4fc08266766e44e21a6a463e7e5d2b72fe
Date: Thu, 06 Mar 2025 21:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741298333
