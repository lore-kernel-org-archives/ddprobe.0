Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5684616C875
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 10:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716893663; cv=none; b=M32ZV7hWPsB9/kG88jCCdFmX1SgqduhObBbK4dWQbk9oDCP/Nvu2MBp5HWPldc/2P0ibTT/U27g9nzRn2s4zfygrJ4GrYlvqb/0wk/Qy2rfJRwHKs9c/XTqDoWSWZ+VgeAAsEwR3xzjf7xG55Z8Xat9TstqbZOBD4D2ycwl6fBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716893663; c=relaxed/simple;
	bh=0RyU79NpBHPEKbDxQYThkEEK585NHilp7PH4GN2fQoA=;
	h=To:Subject:From:Message-Id:Date; b=s5Ic95bUD3QFH+9ELEFsiiGteHzyIahiXv2IUfXYXdyXSqw6OCRcRhUH6jlAxbeobbcEQ7pe/lDwIRFA7ypazcTW6hjA6c0b7Ju4RyvoJanpGUcbWJwnXGQt607iqOWefgBPhHeGZ5yATDjGMoWY7YfojTShaSJ+xl4tsgizwyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ih9JCn46; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ih9JCn46"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC2B2C32781
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 10:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716893662;
	bh=0RyU79NpBHPEKbDxQYThkEEK585NHilp7PH4GN2fQoA=;
	h=To:Subject:From:Date:From;
	b=Ih9JCn46l+O3hIK1AT4h2K4inUECyb06FulxK+v3H2IIEpGH59ZLy5lFwiZDeGdfM
	 hm9wM2wNswMXo/pTqtdqdWl3lUE4gEJWItfKUSQYsL+uwIFTIHMKwiUtn5l/yDSKSO
	 QNqEww7LjHVrdz6WKvI0ySQd+O/raAw+u/wLQle2pyxKbZEpqrjSrVZlmkyNf+Jg9l
	 7iT0Jfr5ccKLvFl8FpmIu+nmmHHSuZrsLeeZI1C2MuqSyl5F/HZ/BWWPem7bVGy7cN
	 448bs/l03lz/io68ufYbEgvGP/vrUr5tm9eSM8hgMJEYIZ0PqJURN7PDwZZFUT5pT4
	 yu/pTA/dMHJYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CADF2C25B7C
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 10:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171689366282.13610.13535400173002061197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40f7bc74c362e6f4dce3b1505eb71d8211035c376bd5fe98a2f3832218402ab5
Date: Tue, 28 May 2024 10:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716893662
