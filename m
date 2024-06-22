Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85D8179DF
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 02:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719024143; cv=none; b=aGMoPr0KCn9QW2HIe7AzzXud9xVNLdcfEJqxDBsB4IhRWn05/5urLSxQU7fWNQysfuVPEA+F+HNZshDb6AuPUZXc01xKtIKKCnPJ6+FirKKtL6urShTZweHFejvefq5u0XbWtc6RVgzsJVw0NdAawAfYT+cl7e/nhYy5mZFqi3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719024143; c=relaxed/simple;
	bh=eZ36LL6HHYU7I6guVDM4r5iRhpqgFSWiuk87HD8o2Nc=;
	h=To:Subject:From:Message-Id:Date; b=YTwI9WtAw1ema4vUxxcF2HiccnoaKiYg9H/xfW7opiqJrlc9L/dSwsG2uI0VjT7SPGif5plbDnu/zUlN6G4kHEgYmt5UJU7NEBifabEEVVZO+PYP/yF6toBYfIHSAVWU1JpgW297UA+1e9vZgCweRoBZjEzL8gOhL/NJWR0LA6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TvJZnDvb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TvJZnDvb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E85F0C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 02:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719024142;
	bh=eZ36LL6HHYU7I6guVDM4r5iRhpqgFSWiuk87HD8o2Nc=;
	h=To:Subject:From:Date:From;
	b=TvJZnDvbd5tuJCz7Z1xNqZVbv0DC6tOILmmeUjkqYfmR2Cns/0VB62abHLAHY1HWZ
	 aeJzTQpxc+bn0xXzmDqK96SRvqcXQUBme/WX3qXjEs/JzUYOrbyAVr2MQpjQiKQFJh
	 wkk8jjdWnZBRhIdkDCMv9X2IGYjy57c2cts4pnUFwe9203++/VCVT/aWRt1b7J3W9O
	 +SGQQzrUeftZWHyktbqbMoXpTo/yKAhpYNAA6IlzQaJ9lJPnpzfMWvwqHeepE1X3CF
	 ALXPWz5BYxDECocCWFePrjAldP0r+T7hDKBBLOOYFfjtV7kgulZiwD1tTjs/Js2T6C
	 XoSZQxGyfwL4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D39DEC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 02:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171902414282.28134.4850668648603650683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 412bb9349d8d607550ef4db8fc4f521f6ae189908c7b02bb3f65c446ce8877c3
Date: Sat, 22 Jun 2024 02:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719024142
