Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 587251DFF4
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 19:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713124163; cv=none; b=hVqv8bBCgyZRkDr7kf2VMjRpahnrqlSjEh1QuvKKQlGuXcNBBjUJg9M7smlT5BLRMBRdrp+7KcfkZyWqcXq/XtWc0kA7E8yR/ql4VmPlQUShiW0WQBtcIwF8h/NIfsx4CtCdJbRRgerNIcGKbBcYQAxBxcZsWs1fumAVm1gTtMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713124163; c=relaxed/simple;
	bh=yH6f/TW03gaZ7dV68LQNGZfKr8EWFgUOcT00gzMKJe4=;
	h=To:Subject:From:Message-Id:Date; b=QjMN9dkW59pMxFnDNunV3oGDyx7iJeAer4Ch8Gk3PRqA+Qjm19afiTLL5gsPL5x5TmoMNTkLJKLbpVOlfCSSyNOJOQ5VictIwlnstVpJaSjKsdhAtoroxuaFf983K3cAANn4XkquWJTDO0VUrWLeQIDyFJLVtoFUrrIirwtCqRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oh2fuzTA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oh2fuzTA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E325BC072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 19:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713124162;
	bh=yH6f/TW03gaZ7dV68LQNGZfKr8EWFgUOcT00gzMKJe4=;
	h=To:Subject:From:Date:From;
	b=oh2fuzTA8bpBM2PIkUmiHF6kb7cy00lvBQhLYPf243cLm6NBqxfY/W2GQE22qxhFq
	 9XquklwKr4QqprV1lhXGx2saOPhK+Ooez4/tYVnOznY4K+0KUlKwwGuPj7gy/kTwuY
	 MaY/d2gBVanfnfvQtzmYf4yFxbj9qPOjMN6MFA04qs/uvvZfNREbl0/v0L44w2Slhy
	 GKulf9pu9MSbRVLTr0yHfeHuLtuQIRInIco+3SERaZ83rphMTc4Ahjggb0RX0N73xW
	 D5kbYIJWsjDSLkYOCMjsz+Lyia7pRMOpFpCDKD4NKXW5j5MlClq5+HJHnQZjfrGU0j
	 wSCly1T6mlDZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB094C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 19:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171312416280.27532.2746169062867825005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3607484b2c3ad554442acee07e15b476cd42d924890fdde57173adee6bb9767a
Date: Sun, 14 Apr 2024 19:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713124162
