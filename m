Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B522F3E
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751244594; cv=none; b=p1ypfXWZoM03XSEgSF/enOw5tiLkQEK9Q1lFBeQ6eAW+bQtRIFJFqvPsIZX0sDyd/TWjDigK46oiGi9zkFDxxff7seMJ2s48LwdbTz3ZrzdLKp9dhpEMtkPS/JO+SxydKuuBCf6eJgbFIlFWE36wSPrY+5sm2paUYOGpIMum2h4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751244594; c=relaxed/simple;
	bh=3fLLuARtQcwpzSAXPPWPVMOoYUz59PE3SkQXiOUszXA=;
	h=To:Subject:From:Message-Id:Date; b=F/djDTzrUEo3WV7g3hlo7EvXwYngJVrGb8qdthMJrNnsq+0ezcCS2FDYalZLBm4j86hHReSGZ0OOb3/pjR8pJqUbXAEiGklAkUnqVxBqCd/ak31W7bK5as6y9gtemgrsMsU/dGbhUNDar71gmMzVnzh89yygt2BEz5xSspeqDJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KfJ/HuWS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KfJ/HuWS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69E6C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751244593;
	bh=3fLLuARtQcwpzSAXPPWPVMOoYUz59PE3SkQXiOUszXA=;
	h=To:Subject:From:Date:From;
	b=KfJ/HuWSEvkvvMzk2VibcGpyEJWqRWvKmtPowZdLo5/XNTKPoR3SkRQKH1CGz/sTj
	 9zyiELNn3DoLiSFyP8Jb4laIDeOUoSwDuZIycxO8I8FtuCPMhY9dpjAahEBmZ1CLq/
	 PA4cMi9HWl1XXvDX+zqGkMLFk2JGVPaLVp6Pmh/VWfFatB0aapWJZtJGNcV4RecBbS
	 YcrYW8hqH+sXItSwZCKdt8/QbEAgSARN6zCT4wruefHz5dONUvsZd76p/WBM4NYWSo
	 o43gHy+Wh4Y5YCpPQwasA0KE4EH+um/FUsRxdEPUJtSQ9hP9QZ/R2ESLuhCBPxR0xi
	 qfK5sqg3Fqo3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92199C7EE39
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175124459357.12425.6160301335105412951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a929e9d4eef78d8d38a74d6017156069803b1c9433a5f2284b26578636559195
Date: Mon, 30 Jun 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751244593
