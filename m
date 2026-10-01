Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DCF74E06D1
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790846434; cv=none; b=uAOKXu4QJrRzUljdCTlLBbu5um9nYhm+lltTPfryZawRZecXdPsUGLkgOvW2agn1HhzDkEWf6Pjwi2DqUKlKD+KTC7sOVKXnuqjBCKET/vLU1AVECwNXMHfqCyz9ZhDOAQ581/nYYbXXW+RapneoW6NKcw063UdqJcaStHspa5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790846434; c=relaxed/simple;
	bh=hxzGW+j6i0ncDu5Z6esngDIXUq2EuzyH3rkGGEufZsA=;
	h=To:Subject:From:Message-Id:Date; b=I6/0N41H2NDP48x2scHjaB6CDwoExg4Ch8ltWK5E2XyVmgSWn7mM8Z//FKEQRcTpDSItOQblrB1c9XVW8msCv9C4Pimx6UekwHQ4eRK56rvEgjX8UUl008o8D4G4X6DYSFuuJVmV59tgZ1yz1j4c7iZcSEXbARlfMiQfn2Cnd7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fEmhV1Ob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fEmhV1Ob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CFEC4AF14
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790846433;
	bh=hxzGW+j6i0ncDu5Z6esngDIXUq2EuzyH3rkGGEufZsA=;
	h=To:Subject:From:Date:From;
	b=fEmhV1ObV/x/pledh7DXddvVj0wYj8VMpi66U8GZWM/uLCpFmb1mOoTGuO1/n/jGO
	 hwpXaxvtfZLCMeJpK3+Dne+LlyE7qQqReLjp9W7M3Z/3DVyEJWfLQKwUUTLPf8XhfB
	 ghMRibAKliTCctLxcLc9PA3FvFnOzy+HcRBUPETprldRBcRkbVMFkGxJKDpE++Hwfu
	 Yoe1ADaoGp35DVUHq/hXfN/zYqxWbdXW+cbGh99Dbtpc/GogOc4UY2pFRUHmWmqHQI
	 9QVFYzxTjgWjj2tV/LxW38Ct3UITS59IvKbK/os4z/BEnnS6zq5wk0eNXfBN9m3lHk
	 2ZeO00aOfVZTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF56CCA5FA5
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179084643370.7251.666165436124587497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 574160145f562f5dc5bc1cde581b4e8eeebd498abd3efc23b6b777c4fab1b44c
Date: Thu, 01 Oct 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790846433
