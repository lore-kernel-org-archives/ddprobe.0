Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1525420DE3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770547434; cv=none; b=fUcOj/U+HnNBdNPRpr8B2JX2kCyGe4/Ib8Gg0xYqNOpvfw25HJ/5zX1KomWHm4ZY7RODetRVbbzILii4othO+tvAVmpxTO8Xj7y7dx2I2o197+MfVAVakcr07QsgP1z02fR+kWEfnTLXe3OPmAa+IyvaAyGm6KVP/w8LeurFm74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770547434; c=relaxed/simple;
	bh=SKqNeJ9JH417o/Zvq3OVGfmEx4UC63UZDSROyplvhDI=;
	h=To:Subject:From:Message-Id:Date; b=BJaIxUHtS5WWEGLVHhOh9p5/a0o2aqoaBYd2WhUjFB/yIL+4PUNZJ1TJtjETMax22VylxBywBX2mnnFpwy3MYEM8YyBQPUZXBQ7S+RheDDsUMTj484oba4EW7gGNaVjrUKyfRNq6BL6x3mq3Fu1akAH7LlRMwFg9OO3F+32zIVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXvLQPkp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXvLQPkp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF9A5C19424
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770547433;
	bh=SKqNeJ9JH417o/Zvq3OVGfmEx4UC63UZDSROyplvhDI=;
	h=To:Subject:From:Date:From;
	b=sXvLQPkpu4EvRi8yp/nlhgufqo74gYp/RBcuG9NMddauS0QTs7TAIjBsIsOBzAzi2
	 yt0RrZToflIIEMkEjYZhA6FHLJHYZMsNgr97hSdf/rHy6m3+5S5jexKrjs7TE0hnNt
	 qPPr57esTmZN0K64W0k0BPYmrsKI+4O+XhUbUd3uCtf8sKR1r1S5lCPnjG4dVYOTjj
	 5Enj/a9MKCMpNpiQMCKm0Eb24yCTuCdaVosDJtfBoCoqP+CPcqcZYaoFiJWqI53c6S
	 7tqOKv+KrFsUPK+4Dbe8vvyf2jEB0wb9u/Vc8SDJimSGI7nxR7VUOKldiKzJ4UtcPT
	 NttzqMrmvnWTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9959BEF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177054743361.32002.10989174819975280173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f80a9f7cfd6c05488db4613b446cce8c3be279b3423045fb674321426e14a520
Date: Sun, 08 Feb 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770547433
