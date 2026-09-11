Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86931432E60
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789154434; cv=none; b=gQGDRCFAjr6Tf9MJhLMN4xErJ64bNTtW/8G+P2PXpSUFwfSXzTflsNDLwwFi3DhtKr+IFvyJQmQmp8J2JB3dUD4+CisHVmzy+wf8JvMWozGaCbUmFd7XUTf2MfQlbTuJws267P1AksYNwCAuRF6E6eqmk2wPjKpLrKE5otkXe5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789154434; c=relaxed/simple;
	bh=ErCKkDmL6hEa8KOUdI4/VQICudlWQUdRg+eJWgwsLMs=;
	h=To:Subject:From:Message-Id:Date; b=f5CuEXLMPzq1uzUyjcOXPu4byv/Z28oS2CtYUl85tjlN/HO5jkD3sZna1qv72gilv4C929vN1Hbj0nVfarlihEPI9/UsvYMeSQXG9Xsgjey7CuP5bam5h5Uw0UBz9+FrzDM7cdel0oz5vRyOtaePs2CrG7Po19xzpUaS6yKr0v0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ilwfZUyY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ilwfZUyY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B3CC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789154433;
	bh=ErCKkDmL6hEa8KOUdI4/VQICudlWQUdRg+eJWgwsLMs=;
	h=To:Subject:From:Date:From;
	b=ilwfZUyYFILNaO9s4FByaJTYKnpGvu6uTSxqYKgLTtBgxNPpo/IQ/L2Szu4LB4Hm1
	 HPdqpEUkvIN3hdyUM3Og9PZeLTXs+iSeQ6HumePdVtCbG8jYnhU7FUlA9ceG2PYyhM
	 5RMIIOi9Luhp3cUJW2auAEi+t65zBiah2UYAMopp47tVkcDMiiqqIUJpqeBveIlToU
	 hsRz6Be4R8SGiIwhKiN6fXiIYU74zCD1kWdkdLySLQKanfjSocYCqyaTTJ9ngKmQHm
	 q18Y05TUvxXA1F028sCwEn6T6F/ExwRkprs+ZbdUzufZYF7FMCEJXIRrOtMivMBecw
	 niz9f6a0zBxbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3416C88E53
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178915443372.8411.4169566794331882530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b407b17615acb238d50d8d435880cb6e50ecc8b78db94d4a0e43a17e6dbd05e
Date: Fri, 11 Sep 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789154433
