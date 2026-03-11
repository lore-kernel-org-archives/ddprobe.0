Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201383B634A
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773215694; cv=none; b=fkpGOUOQ+7cL1gQKooLuZolDCtTxorBmGBAuo4ztOI5JwR9cq/44wBA1AQ8CLjHH/eiR96h3DSHtXOS4TRUuwfHKqIm3cb45JbePVGObc32aTOqBr+YIv4n8Er9JKHFFTxz+9JApsG8aPLPUwpoRQVTbdEFcZ8Et318HlAC2PAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773215694; c=relaxed/simple;
	bh=j2WTPGHEzJjrUkoQdLzcMNjVxz9QeUVgaKmfG80WgF4=;
	h=To:Subject:From:Message-Id:Date; b=FkJWXmU1Gy1uE0hAni6VY6EAmytfo3IPyRLnXuapzKdACKeqlz9cdXnThiPZIXwMHp3SY8oByUGerAq/c1IYvX+E3KxWd1oBP61qe0/FnwCKgsfK42vO6eOdVUx4T3NjshTTYnvon1wSAKabpmW/0A4cC7l+D5d+fYcTRXvr/LU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fjTW5cV8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fjTW5cV8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97783C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773215693;
	bh=j2WTPGHEzJjrUkoQdLzcMNjVxz9QeUVgaKmfG80WgF4=;
	h=To:Subject:From:Date:From;
	b=fjTW5cV8ktVulsKHprz80bD/6Y0e9O0sx+2AjPpWf8PuIsRbCFvF5xbGT6LerwBsN
	 NKrhFz80n6Zw+0V7UbM7x75L7AxFdsuOtixsroxrhE8eHhUepABBm5hkWWJSuJkrJA
	 KvCCHHHPigeSw5Pbf0m8Hgb6KnwJduhav3rXgDYGT2SONnl2V0Mk5X5v/YfdfDyDgc
	 xiHMuN47Hq5a/dvwCsqQcv7aFZnt4TfFvhmSio4IZO7sIqd9GSK79zmk7FXEj7kmNo
	 YMndpVJ0fOhq5MlYXmCjbSnPFC63IB3uSzUhGxTjdqlTs86OM/EAIZKE5ySo6qf+9F
	 bHr+UZ4Vc0z0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB89FD0648
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177321569357.30558.12405029237316824425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3bc96f51207e9023561858f4e0df1b5f8cee87aa742dc16caeac5b97ecdcff7
Date: Wed, 11 Mar 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773215693
