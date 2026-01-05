Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C16D328260
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767605634; cv=none; b=XjQ3mEIO0WHBz55R5uqDpT/bkBJ/wafsOvK0tZEGetsBqJ/UkjbfvI4d6V2kXXJMFQf1We6eaS5g04/wvFQrBwulheeUzFT/AUlPYs95OtI4x0ARoU2t/UmlO6QObUr9PGE9O4+pG5nu17BGHJDrQCCb+uAzdIYof/fjKH9vYa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767605634; c=relaxed/simple;
	bh=gZUoIglQR2U12wWeruin8+igKWnWqIRfpBOAUaOQUzk=;
	h=To:Subject:From:Message-Id:Date; b=ss5j103qk0U+HGHoan47kF3SQ10F4B7j/whFsqQKP54gBdTWg/VhRGWc5uos0usmYXc38aHv14SOa7LZXAUgc3q/juiHZJWFGP4AIqlBvaJ4WMQB9fC0gociFJvzKrWu36+Tb3dpjorqXs0Yfmy616GoEwseoEB/aIbqIbSvJi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kxn1fW8O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kxn1fW8O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACEAC19421
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767605633;
	bh=gZUoIglQR2U12wWeruin8+igKWnWqIRfpBOAUaOQUzk=;
	h=To:Subject:From:Date:From;
	b=kxn1fW8OGnyYRyMjipR/sMekvOwjTAxhXHSfnaDUQS90KdbKaHa49pm+t1slmtVxM
	 zsoUO2zUVj6+hXPW0wCzIa0l/ZvPe3A+ocEUPijW/43BeLZWOlxJAd0P3C2GkNx9jl
	 1WHrznehabYbv+wniGsuQxncqYXFL+IOROr6oBt8SD4N27R59v6oXu3wpiySU+/5+S
	 PVKhEDfOcR9j9ge8NrTcM/3cXVlTBjWpcO7AM6omrFaxLs1sES1697L/4kCJT0G3Sj
	 a0+q1TTej229aFc8ZrnjVrc7yEpEHv/HmqL2fabS8XShLbcqD5tEEhyhO4rLof2GS8
	 d4PTxWJaf6t8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B7BCC2A07A
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176760563362.9045.825288377531262541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 838b00b68fa07e0f7c09c75e73e69fff56f521e9d35b9d1f9d17d11961da9b11
Date: Mon, 05 Jan 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767605633
