Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E5823EA8A
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 01:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779414154; cv=none; b=kdarn/rs3rijC2rXujNgPidJV95fV8V9Xk9pByG0SlJ3KAhEQNONIMQgbwLNTqKnIP0O9ltJF0y18/1Yr5SwPNQNT4lCFCUfPlCBJAuMdOh9iI+MmYGgVgKVWw2o1sWdqU76HajXWDxuQ2lxUkFSExqXdPIacdEPyaW+vtVIDvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779414154; c=relaxed/simple;
	bh=AY7XemoHdWceVCyzhgTPeDhjUPDbegEw8/eWeC2FjZ8=;
	h=To:Subject:From:Message-Id:Date; b=sWpSmF2of6VtEgAGWQSznDwJ1Uddr3Nx9yIg+ugHWW0Q70Aure/8FLF+zOytNcWzekNR+iuXWmy6nWjoBJIlKuRkNKWrkMssmo+JkN+QTR6fS6oSQWNSIdRa7SYGgcR7NKA8kKn0qYvDQTWmCKqRazR7hnzSoKhI1g5bJE2iMDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=msvVvdJG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="msvVvdJG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE331C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 01:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779414153;
	bh=AY7XemoHdWceVCyzhgTPeDhjUPDbegEw8/eWeC2FjZ8=;
	h=To:Subject:From:Date:From;
	b=msvVvdJGxcSR1AQMchq9nUlTa92FqeWwlU/RhND9uvHvTO53JUIQHJOR1UpXfQpfd
	 /g6FkaQdV7DbgEE9/G/fVgDAJhVnX2m+v/NVJuKLQ6yCFYnqM2h1xa0LeJ2ZK8iYUC
	 Cr3xu7X5GzptiD4l6H/13JHpFiN/5sgEQ1q0r+hldLYyLTkvfMw0G8i9EytmIHB2O8
	 zqoxkiXqarOsgc2fIIbmEAPjCqKmdrgFtiqkA3pSAluxrg1ai3GLw9cW//XW5el0Sf
	 FekWrjRyZuWm5C6SacXHWoNcORGk0ukbDdhZcyMk+wi/dSvULnp9a6f7pJBCJe2NNF
	 l1vk6pMD1hiNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B303FCD5BAF
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 01:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177941415372.15108.3658296737153216227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a535ff4f4c7d07127a0d851a40317594c3f1d68fd0ec87c09e0d63b8505382e
Date: Fri, 22 May 2026 01:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779414153
