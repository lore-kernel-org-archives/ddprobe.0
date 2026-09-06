Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F6BB3515D0
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788661234; cv=none; b=dB3nlhqNWogGjVMp+s6l05wADJixmQWLoTKAQOuIdjwjsspYS3xZ+27q0k8sFSKd/NCjtOFSCySMnXBjFIfkwjdDy2RHDmxW6v8MF9C0W7BUpEqtCJpA/lNMoMNSbLbJOQNM88/qWbpDaslA0U9aIP+pY860MXbDuj7JdSD9tvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788661234; c=relaxed/simple;
	bh=y66niS6KqO8nTXzldJLMNvdxPy2cWhUQNdF68MPKfR8=;
	h=To:Subject:From:Message-Id:Date; b=nFCys/NEOjhucr7qgmMOces32vDtbhopjFfR3GKz/pltaQHN2QmbZCGzSAy3lKumf8SAG6UkCwzt+GjIB0sj3YPy2QF9zzVfb++S3ZuMI0Obts09Nb0jDnbW8JJ4we2UKq/swFZcOvKD6UcJBAjVPtIebU1MTkQGcoeI2/1nHt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XjzyzZri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XjzyzZri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D26EDC2BCB3
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788661233;
	bh=y66niS6KqO8nTXzldJLMNvdxPy2cWhUQNdF68MPKfR8=;
	h=To:Subject:From:Date:From;
	b=XjzyzZriHC/XuYmTHyuzUsey0vg3lobPYS6YKdmLKy2PlpE0FCRjSFmuOhdqiDPv8
	 d4NoUVBxViaTB7KUeh/yFKI4gfkZa7gxnp50MKt2KIG727RDpRJ27VgMRYHlSDwoNF
	 XErSIoSthhacDBG30rEZytFSaCgnXzD7XmDIgyiQgvcAwuQAzm18AiiKZ6CYDt2rdC
	 T3kQnq0kuM8XoTHoNr8hR0TeoZhhQ40p5Msq/RWMSaKa5a2jT3Ydy6eu0VN/Y1dF7z
	 1oZv+ermV5nAb2MhrGyWNZgmLAche25omFqhaAKaLned1Pcy06e2U/Ii2mrh2yzp8i
	 ZWs8CNzVEGBEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD672C79F82
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178866123368.3310.14943136897285568967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c6860d3a14218f589a28f416cfe6677fb7d92203ba95a9cc263a04f94b2a24a
Date: Sun, 06 Sep 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788661233
