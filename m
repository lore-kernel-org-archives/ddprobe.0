Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D221B5EB5
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757754594; cv=none; b=A8TwMurYrwJm7fIXouC0nN4Cq2uIoLqbyVvAmH4y/ljtOXhsfHc+J9M8iTjP9ONpAUtWutlh/KXUye799cK+d8pRQBsqC5IbGlw5xqxDSOZM6uoB8gg/CO5Lg9846MWc31vzeUTcEFPCYOQT0zwEtZ2YFattjGvkwQLPYJNnjZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757754594; c=relaxed/simple;
	bh=YMiWspE+QbHgtMgAgW1qw+9UMaY/cbTSzIhU96si3Wc=;
	h=To:Subject:From:Message-Id:Date; b=NnJL/cLLADVW0U2CrumxrjxCvKU2TC8Nish1rw/2sHarFTeVDpHrEInqcQF76OgYF+iUzEWQw4oyd/o6KALq17Gqz18uBCUXpv5i2SCSF0zqlEuj0ucTTBBDEK7o5Uy1Qlpuj38zg8k5VLGikSarm1lPWqNzkqWkjtBw6l/ME2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fIV/NDRd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fIV/NDRd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4126C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757754593;
	bh=YMiWspE+QbHgtMgAgW1qw+9UMaY/cbTSzIhU96si3Wc=;
	h=To:Subject:From:Date:From;
	b=fIV/NDRdFfhReiQDL7Kw6dP5q+beGx9IZwrFUgjqylhQ44tlWr7GEt9YFEvA6ruww
	 FSJ2yqagCBaD0URJ2n/cmoZbqUPKbQZGJAsVAJWt1lKBKSn8rmJe00F5So4lEXG6ea
	 8YH9/oogzSo0Mzi7cu8NKPaBYAO6iK0iLtq7kOfNV8JgZPe5AP7r6VsceHNqyoyoUj
	 MKhs533rZ/S6CadsGGlh4enf28Wd8qj110DFNOUDpiE1BJWDP7j8AkpUacg7iT4++E
	 Pilh9TTlaERg3/IledtcXSb6RcykK8TflH57yxJ7b1iTiCTFuTYtlH7meExbzX5bQZ
	 lKJJiAVPllNKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9083ACAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175775459358.4344.8368992823603938597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80d9754eec95d2efcad248f04ae9a548ee6ff6f2b121847600faa35fd93c3543
Date: Sat, 13 Sep 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757754593
