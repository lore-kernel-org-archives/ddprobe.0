Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B30F3596E
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753699194; cv=none; b=N2T4EWBOq6OCPiG5elj7WPyEofgDuuUf3lLxOShUWRGApj7bw52B6EwehQpAuPoyt1A2k8403WbBIaxCD9Neww8FvAKo+LJ4h9UzpHod1PgCD6GzCt/wHO8Lx+MKye8zxoXe/r7r21sefcuBIGfuaPxYMUDsQ+ie5gvvvCXH3lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753699194; c=relaxed/simple;
	bh=hBp9/pJSTmsI9DLY2nYraUYdWaJXpn0Iwjx2v24u6v0=;
	h=To:Subject:From:Message-Id:Date; b=orGgGf7uZT0DLLM2SsA+zgXkDI9oF8sBFksxUeRRZ2J3RY8a5hcbze59FNnzvpkNFE1y+xOVkYI45iYY/gBBdOojqRAoeRO5lU4FMHGcl6ihmmWpAdZRUrnBQlEis77iwmQyUlv3BbNrtuYIIsOqABOpBxFd4qDMSFltr1LbBNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pr8VnQyz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pr8VnQyz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C70DC4CEF6
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753699193;
	bh=hBp9/pJSTmsI9DLY2nYraUYdWaJXpn0Iwjx2v24u6v0=;
	h=To:Subject:From:Date:From;
	b=Pr8VnQyzERFKlxFDGC9u/PbIoXJu2QS+RRBGMbRgh+m2/2g0G/aa4Yp9BsBgse/QE
	 q4B4MGB6QnuiocJuZgZDoGBEbSEL+9vKx+Fug5pD5A4dY8nfSE74ror1KRZhORZnxN
	 BX3+NLLshejnW57PI+N+1fmZhyYQYxA9luGDugMcqxsBk6ciWKRti24iCoJtBpxXRU
	 maOT1X9CTcyfXQUwC/6Yn+XCt0zEGWtYI4nRYo7aqpa22e5GMu6KVKRnUtJExhxkcO
	 e65gdrPXT5E35Wd1NmgWBx6BwwXoF24jizctEJ1GVHdTs0ArY/6jbCwLp/xJ3qUOtP
	 ZQ+ZnedRtvdUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E514C83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175369919357.8342.11216916788230958715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06550ec68fb25981b0b77eb9af1e59a3fc5486083f50175ab07b237a881da923
Date: Mon, 28 Jul 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753699193
