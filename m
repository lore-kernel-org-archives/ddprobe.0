Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296EA213E7D
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733526954; cv=none; b=fIl5tj9L6QoZCwLEy92Dwh178QhKYvHqrodfalY0CN3A9WSrO9m3VvTjgaKopQYtruRHR/SCQAa8X3LRTvS3c33UyLMCV7sh4V8wAEThPvayVsp5oAddyrwUVRJPfl03A1vE0mZ1JjiGjz2ur2bRD1cK73WhvZtKVjDxXmMHmVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733526954; c=relaxed/simple;
	bh=1rpLcgAz8jVQZ9n6msv1yhpchW1Sg3PykMQ1bRpv2XQ=;
	h=To:Subject:From:Message-Id:Date; b=W3veClsnGK3K3H6z7FwhHLnIX4h41DFA3aYMS/FUzJ7ePI6UW8FACvPesGQKda7kO61DhzTXzyz0yUHmW30SaoG2SJlsDN83011Sn+L7j0zVcL7ot1bv8anhlrDfw9UJ5ppUHDf+qFKiDSBZYe6HbE101Rst4cRYyc8YjxQUhzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eKs2x8h3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eKs2x8h3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8BC1C4CED2
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733526953;
	bh=1rpLcgAz8jVQZ9n6msv1yhpchW1Sg3PykMQ1bRpv2XQ=;
	h=To:Subject:From:Date:From;
	b=eKs2x8h32w0Wr9FQ2Nmqc7Dl0mJjLKeB9itjN28DC38tkHsMckjmN/8HgLo+j6Y7T
	 BSQx5LI+i4GDFyWng0aCGqKELscOzW/ABtU33kPfLdUcQ7hWTfCGgnBZBGwLznywl/
	 B6vgoLBn9zQLIMT3OHGkNrxw3wieQB46LAbjpybDyK5ZCE+EOCTQKEnFwtHGKxA6Je
	 MU+0nEGnUQLyaAfCp2v8YaV0obtHl9PHp5HRJ5jA3Ynrj4I35mi/LegrSICTs1kb2D
	 0AtXeFAivYOg7ZNgcRkvkQ3rroxBvRG2zADZtysUHetMDJtABl2z7uj2mKhQVhLL/g
	 wOT1wQmr4kyXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CEEAE77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173352695362.19896.8987124084541422209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d709d65f567b1ffcf79c483f2d894064fa435764c9846741f1986ae944db557
Date: Fri, 06 Dec 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733526953
