Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA591AB6F9
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727198154; cv=none; b=BHfXl6HXS2TzZacPjqlEbIGo1P8XZ/FbrNBYxE8t0Aq0XWfkn8Tj45k1dQIONUkLYZfq2ZxEh9UNO/l/ula8WmuaYHsuFhFVL+8KscRMaA0qtegjXEzjstCr7MGk2F3l7AeTYcQppXMIxJf5V83vght9kvuyBAoAhGV/O3DmdJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727198154; c=relaxed/simple;
	bh=8VPmR2a+olt3jO0JgAQKlUoGj+2gQwSOiolGdgvKTeg=;
	h=To:Subject:From:Message-Id:Date; b=u61+d9dhs1biV3/wEjNVSvKE8agHcVacYRljbf/9XJTM+ewt5jm2R/8Hu3w2OUdMD5+mMmHk4JOBv61aZpbAlaAmaYCznRlzw7tqle99+fVHYdMFpm0Qm0HhSISP4SB4/q6Io2B2hSP+eVTL7keBLwqf+ozXT29WfaCgJOzCnTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oMXS5ZM3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oMXS5ZM3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8182C4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727198153;
	bh=8VPmR2a+olt3jO0JgAQKlUoGj+2gQwSOiolGdgvKTeg=;
	h=To:Subject:From:Date:From;
	b=oMXS5ZM3fTCY+Y9t8tuZwipaMSFkZJaTsoIw1TIxhjhRxzdpPXiy3EJUH9OptJgsz
	 XRO3BD+qoknYmsoZikJWldpxg+R3G4pS9f0+JDAi4GM9TwOuKkxhyGatHzQxNI78RS
	 KIM2Sbz26o5ceV16RNTtW5G6JdbpPqpH1nqDY98x9bWi4jtFY7+RXZVj/o1ex9Z+WK
	 yeNegs/8PuXWeU7nmanEX9t/wG0/Q04wG2jC++y6oKh46IT+l6ENo/0vq7S+HphQuJ
	 vO1wweQAKR+alDFhjUMsnzbeopu4HUu8vij3CKkXFiZMtL7GR618WH2lnZfYdrPO84
	 9rfPfSv34SnTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D26CF9C6B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172719815359.32695.8655766998917497994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5473f4024a08b3f4644068c2d19278f1f8e4343f929f12b2d2801297ad1122d
Date: Tue, 24 Sep 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727198153
