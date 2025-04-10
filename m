Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D74A41EFF9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744311593; cv=none; b=FndBbWlRf+tamuaNaeDFtyZVJCQMa1QGDKpOmWoZxoOv6m2nnvRnSNipQqyVQ3sguptfSkDiCcvavAM5/bFHv4dWEjaZysfqwZwV44iA5SQ6hYs/fV3+dVkFIwtmnoppwz94fYdmaDqueBlBWPiVLpsNr/JH+5ODtO5OZciC6i8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744311593; c=relaxed/simple;
	bh=xPlIH6j3P+SB2HbWCFPmDqjA/Iq7+gqw+20HgAavAqM=;
	h=To:Subject:From:Message-Id:Date; b=cDEwZOo5u7VJqlc+Ln3PIRaMBsb4A0+t91kf2p6VXcqSDHrXfbmJy2UpLqQT6juEBVn8kQXAN9R5YFnJIjyVrYGIQG1Bw9LdWGFTM5UyzFDB17RsZFUAcBDExsYr4WtlJvEOFxFOsgcGwNzRKB+k+nAjDI6xEMmsSd8tTtkcOjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KxwIWhrD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KxwIWhrD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB017C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744311593;
	bh=xPlIH6j3P+SB2HbWCFPmDqjA/Iq7+gqw+20HgAavAqM=;
	h=To:Subject:From:Date:From;
	b=KxwIWhrDhv0lI+TQsufGftfYeeWNKF2++/YyKpVvAVzK8Iah+Tok9TBQc+ioqF4Ub
	 V99i7Gjb2U33x1By11Hdo0xLKVF8DgZNvCP+K6tZOwaMfylE6Om8h1mFoZRGNHmX34
	 7f8VdsAlCm/WQVbEAuX8HCIXdP+PGYCZRtN4y0iqUuGSFdFU6rMxFBFQMw8EwQ2Ifu
	 dUtfDo9MND9jbw6JuPc7v1cRz41yjuLSS78R0avbkSIS1/SuFQez4GZfVLRSIQCk9A
	 eiobczgajqTfHEaigYuP3Ew3xwDhGVaeF4i7epAg7yH3Bz6Y7doRnfbdb4MbEgGYXb
	 HRAPWFqgKt5wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95338C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174431159360.32562.7651784564051927024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 227c90b36b2bafe60b93f1daa762773058b3c5b98e1611d55825aabbb05797b6
Date: Thu, 10 Apr 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744311593
