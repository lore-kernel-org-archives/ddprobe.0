Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2149514884C
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 04:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777438054; cv=none; b=MiASKm2VMR2mdGUXhoqhMBniV536p8kmRQe+qxEv/6aI+68zSlG8PhMT8b8fMphaYGl7HoTPfuv3uphtr+veaAit/oXJ8nXI0ZCj4gGPKKL+0xRZrCNBQ+maRQEz8JOpmz9Cx1h9hSinkBfR9McFBy87ac5DeFUalxDhFV616F0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777438054; c=relaxed/simple;
	bh=dfN2X7XtWunOvYaQRNGUFqYkMZzEWmvOvr3NqsHbbI8=;
	h=To:Subject:From:Message-Id:Date; b=qlieYxYK1G+B3GbPyubVvdppYcCvbg8T2Q4tSScREp847kdgLU02mtvng2tbvMdC+hC2vcMs+FFk5mOSF1VVc2G4F2/thitszbqpeeT/2bE3nGhuG4YTX78dAb5XXlAHFQYzMQ2EeHBBiZgtXZLHvNsBChedIo96szQIbUJkbX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4Uvk+Nj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4Uvk+Nj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D05C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 04:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777438053;
	bh=dfN2X7XtWunOvYaQRNGUFqYkMZzEWmvOvr3NqsHbbI8=;
	h=To:Subject:From:Date:From;
	b=Y4Uvk+NjVbDwlndrJrr6agcSqL0T/d0Dckn1/pyjJy4w1iLB6PesqViswGfzmx+Iu
	 NSja2C+vR323CQZkKoR/He2lMYMbEErQXe4JhgqU+snbrA4/4AuGFqOMpSJCEd4/6T
	 /Yo8Y76AEaIUlpvmGzua/6YHk3354UtjPkM7hDKSOkahTWLijZcuRjGC+a8zHNwjCh
	 8GiGUuzTWF/EYa8XnPxDMeXXx2FIpNaUHhJMIqlJseY9xJcaOGixohRfx5hY2Bnj/G
	 Sfl8paHaGfk1mJAD+C/qzaMObFKldd2rRvxau0jQaCH+6Wk+K58QMHZ1Tqv13QQBZ8
	 va00LY6llaBaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB62FF8864
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 04:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177743805368.12295.12969434316610248013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6db2249b3ea1a9918c157ae2d1e70299133939e9576d1b12f59f9a237ffe5ec5
Date: Wed, 29 Apr 2026 04:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777438053
