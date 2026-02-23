Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272A034F244
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771840494; cv=none; b=WIqQaAK5MvzKrQMNkUuafwcC4RtdX+6vH3MGO1FV4UAd1D/KfaQQcrMDzRtJjDc9N2qW52E+qd+9NKbfsmDaiVRAQ2I+UWm5Y7mL5fePTbRHCewJNkowZ9ozkFxiWCvN3SLLj15UluGVaffPDEKcU9Xf11+z+5R/KeRp9L2KEMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771840494; c=relaxed/simple;
	bh=KoUahTw24ejMG8Xq2jorTysOU4DMXZeYWLDt9AAMkeE=;
	h=To:Subject:From:Message-Id:Date; b=AvVjmmqhAsKrzEu+VIbiFJnIGmg89gxE08fxbQVYm8rrRd4FsV9U7J8k+/rHh8+Cc7PRb5BFJlXVNbk6Xd6O2eqW7rcoB3slMdD/IjK5QGAW1SKhcrIGFhWK1TinoihKG1djEp08Yjo3Bpdgn9pKjaEGW1ugmjy4989ZugixpvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdS1ct0P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdS1ct0P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2FB2C19421
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771840493;
	bh=KoUahTw24ejMG8Xq2jorTysOU4DMXZeYWLDt9AAMkeE=;
	h=To:Subject:From:Date:From;
	b=tdS1ct0Pb5tgFv/0cI433bY+qIIYegyzl0j/C/9fX3ALGOU/MSue9/1VSR9aXHva6
	 XVG5MJiQb737EM1sA8OJV320zi0BjU/lsXLiOC3bFhPpx8Rt0q8hdywuZ+rhTi/2BG
	 8Yyzr1qbdxFcm/bWPFZJcivQTdhSK4Wbx2tWi1tpZrH4ZalIr+iWHOcUtc8ECN66FV
	 2jKKhx+BMKc8n9cVpbXvL1dD2p0io3S5/X+rgIdR8SvTAQpg8lW9odwz2A5YTADeyA
	 yER7KTt14xRs6SHQo0bHrxDIP1oH+stvgltNeSgd4Bv+bThUozO3pM76o8M9R5HpHA
	 Dkf94aTwyY29Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B5AE98E13
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177184049361.21301.15067770391228750910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 362f2a0c08190a9a9796beb13381dd526a98192c5492e39ee16db41534b4c6c4
Date: Mon, 23 Feb 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771840493
