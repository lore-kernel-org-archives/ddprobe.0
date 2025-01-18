Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370C7192D97
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737216354; cv=none; b=bamaXyhg60vWE+VrbGPd9msUrRCkxH5ios4s+BxxtUDntV28Qj4eYfrT1z06GtXNmElwTScM964Se0Ui3kA6/ByrOKoalZjVb35qaVRhZ5EzgEmn0yYxunLQxn/pyUSTUFiD8MoRLSR507Ro+4towoby+OXZHGESY+nRWi34bLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737216354; c=relaxed/simple;
	bh=qCJAlcROj5XvBoqfMw9LYDzFLgcvnrYdIGO10qP3gkI=;
	h=To:Subject:From:Message-Id:Date; b=AvrKb5ZGjL7f4txoUca9bFJDvylFEVMgF55qv6A3kPn6Hc7BP+Gyg+5Cs44R6slNy2KG9J6fUgFD9tjYUPaDe5BQpAblT/301VV4BAeIZyGm9l4o3yhnAlnfQabEGwxRHBPp5BupRf1thEfer0boZRfC3ALZCwKrUoDMtk/kWNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=prcmmPvK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="prcmmPvK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78D5C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737216353;
	bh=qCJAlcROj5XvBoqfMw9LYDzFLgcvnrYdIGO10qP3gkI=;
	h=To:Subject:From:Date:From;
	b=prcmmPvKmjrBVNLq2jjCl01F7kgF4ZyfN0U2MvEmqwcBaAdA4QRzkzFfPJVcaP/nw
	 Crniv9tIiIoecLua0wUSY+SKJPLUedn0LeGpy+HFfZLiQg6bNGhAEL1fXNAZwAFWVG
	 HxuzKhLNnzkw2U3YyIxhXXBsWXldo9Q/zREvanbbC5xJy2kGS0+qkYV4kg30wp6xrd
	 cgoURlb93ZESOYE+B1WMLhVavWpJi8gf+CsWHMRex4EcwKA7yYiwVmDHH7QdX3wJMM
	 7DoBSGCTkZQPOPxiTSLaBmRxGk9vORysf/Okv2YJY+NEOEzQcw/e1NJQ6rlpSq5J1K
	 ZeKapNTdV0HYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97650C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173721635358.5679.15686979098882530892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14b03672924588d4c612d74dc655cffe824695c598ae2594eb26e4a594aeeaf7
Date: Sat, 18 Jan 2025 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737216353
