Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B52D3368A3
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 13:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784037514; cv=none; b=ea2Zfd2XAm3PKdfEZFeYHWv7csT6wyrNdtcSGnbTRkEq0Dz6oicjuP6dahUyMHOWt8QpEmsT0e3lzuUPotyiVI9qw3iIq2PSSqx8WlVU27y0j8vvB80/9aWwFMvxOfHK56rd6igkCq/IfcU6aRuddoaeVqOKYOie+Dzm0ndDiFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784037514; c=relaxed/simple;
	bh=zzuNUsifGw2EVFuDQqanCC3Cmun5HJXea3epp81hI70=;
	h=To:Subject:From:Message-Id:Date; b=V6cyQRPdxcVNBZp96rnoYbgPF5p03mRfTA4OQDRm9vUr3FEJQMkxjKSCJ+euKEvH2dWdcz6bbdB8v4L+FTmqUX7jJ5FUEDRw1x+DgJDt5SGmcWrATN3d+5lTh1FAY/KVLRPi3ibns6BEVILu5oTcLFxkFtdfQ4crYPefkMvhBF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dGAEJNtJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dGAEJNtJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADCAC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 13:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784037513;
	bh=zzuNUsifGw2EVFuDQqanCC3Cmun5HJXea3epp81hI70=;
	h=To:Subject:From:Date:From;
	b=dGAEJNtJG7MDEBr9O5fciQ7l4VruF09fN5z3qj5HN1D/CA0HxDDh9FdZbAj9WnUoa
	 hCLRv+9Pn5dvyH2sdrBRiRFveg8WBkcV5BcY/MCBKIQ7ccVpjIL70Gk2sXyyZR3JI1
	 u7ZPHXQLW4TMij5pu/fmWfD6EOGnrXOlUXwYo5L7PDbep7ydeYRQPenCB0TSQ9TKRw
	 mAgq8n9RVYYXs4+D8rTkSeVZgjjWlc0pbUbOzB3fklIj2a7Y3Yu2GnC+eqQ7h28shd
	 mNX7YOhj2PyD06NeJz3owL1vJtrqnMFHSyLVUNgyeuBXN/LF5/XAX48r8uV7P96TAM
	 WFbe3+pZOQq9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D60C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 13:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178403751368.31002.9400545216660869455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0db901e14d6e42aa7d370433c103f4d0dd3eb67ed2a4b4247046065a69e2f7c9
Date: Tue, 14 Jul 2026 13:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784037513
