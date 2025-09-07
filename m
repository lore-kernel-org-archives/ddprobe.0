Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5D927AC54
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757263794; cv=none; b=CCpoNSjBfnhHBLtx4kztR11PaPDMhrghiHHhBQp42m9qdB0dEzfklCd8KtGDkLF7r6TQbF3zEbQImycSF0IBvcV3XRVepjxNCPQCF/UOdirn+X6cwP1zQr7ELirAU6LXtCxS4nH6fEJJlUCT/uCZK6yTcWEAZyyODOwqlwU7R5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757263794; c=relaxed/simple;
	bh=MHE+E6DMlrbc9SaHmh5CqM47rgPKdHDkE0n9Rcrb0ro=;
	h=To:Subject:From:Message-Id:Date; b=nUN4EFZXWkpeVMaiH/EkbVnVaNuFjCIaQjbDykJgPmN8AdB8Mg+TNWF6j072Smh85E8zVRNqJXScYDI1maxs7w+QkY/yIeNaG54cetaJlv8l+814eBdjhcQQdgqVQzIhKFJQ+TrYwHff7R/mFoVU0bf+SrV5Bdj8XHwO8z4sokU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJbGfxkz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJbGfxkz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8110C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757263793;
	bh=MHE+E6DMlrbc9SaHmh5CqM47rgPKdHDkE0n9Rcrb0ro=;
	h=To:Subject:From:Date:From;
	b=AJbGfxkzkKQ3CYS2SPS8N2RR65mwdU7QE70f8Ghj5vwWgIfUTmaj6aYQ6yXIrIk7H
	 HhdSUvVguRYIOmOZRqXAGibMJegjtFkypj7ksI6uxi2WQYIYBr4PT8YCnLdFXu11iQ
	 yf+XmRLbnFRQji9zeKOXqN5tA+zUfGlDuZRxQgCx3bnTV7netHrhqPjrIfn6Xa9/vt
	 Dq3ZbQtbpU113g4mDE0mzAGMU20onDbfWjkHTTR8U+F+K3FGCzKsdcnTvUzXAElM94
	 n87/iYMwi3ysAf3IJn5Sox5Zo6Wz1c9sn4VK+3mUIy4mPDxa0AV9F59UkB51iREmdU
	 AzWZpVOpgs0bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D00CA101F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175726379358.10191.10129381235922199931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f4aead72999ca23284134f2385a41f1b34080f6aa4cc4c476e17f32439ffc61
Date: Sun, 07 Sep 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757263793
