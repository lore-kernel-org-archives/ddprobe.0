Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385811991CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747683595; cv=none; b=Rmwvl9hbZ7WGtN8p1l6OwBKBPZ7iWKuDh6tViXhY99/HP8ocT3EIaq5+8Q6NCQqeshS61oJU1/gDeDv+9sDGvhdFp02Z4lqP6ONCeQbZZjVJtaPFY8p0HU6vrilvVhK4JZ6pV+KPNJ5uz5cZLdBQwNQLRX2zvImL1QLWxmzOdWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747683595; c=relaxed/simple;
	bh=9xhqHMaZl2/g+e03DjXwt2GLhdGTsE7pTFYmPz9dFNw=;
	h=To:Subject:From:Message-Id:Date; b=cxQve418AFPmc/C8NabD2zlvc+v3OowzA5qmh9Z9+HjHMx4Uq/lPcU5Sh7aKyLbzZ4bc4x3bnmJehJQmfYLOe43V9YKdmTgLRxGlKpYJ5rdtJ5NVw4P7cOXNQm4jrSUWTd7BWPMotDjXeJ68zQKoI2XD63GsOkV1jNEgKiAhr4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E04uOUlS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E04uOUlS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A250FC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747683593;
	bh=9xhqHMaZl2/g+e03DjXwt2GLhdGTsE7pTFYmPz9dFNw=;
	h=To:Subject:From:Date:From;
	b=E04uOUlSNnpdVGZzTATTGQsnIx3S3v/kS7+0Yq6g8emCJ+cjdzjg6G+7Kh31gj9cF
	 Dn5YjL5ZRPgVXmoT7qeXOSvrckDHGZhnX/mvpC0fvLxhQ8rp3wRpUWdN7m/zE0YF8R
	 v8qmdaQMDFy9Os8OvEFHYgzgSkaIqg7Gsv3LS8XyJQnrxgVTxfmEOjhziFII7OKSQl
	 4RPIQzo3bdCfX1zHsIbpMIZDkTwafH4+AkA1CtdvL761AmFYJTsqM4D7RPGhQA8/Ep
	 OONYmtSXZ6nzRB8/xiO1Gu1uncntiGwPT2NUEKfX37Yva9iUWmnA3H5+94BzKiLVz3
	 SoRv74Neb5H3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE3FC2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174768359357.14586.16100915300187292232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5636e177e044e6ac942f4a13f2a629c1532ebc0b16acbb4b2b93009e2814fb85
Date: Mon, 19 May 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747683593
