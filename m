Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79F2F4AA40D
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791382834; cv=none; b=SXqY9qLefdC08K8VaIt4F3sofdo+sjBxPBjDuNwFIpV4e9Yu5eOQT+7+6dVJG10aSJCjNDQ+s2uqEYeY5pxww6RlBBrXHQK/CbhuGCBZtydhHxMGop4/FpvBEo/fUiZP+/xBTpKBo1MAV1TWX/RgLe1OL2v+2x5qew5tVN5+CMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791382834; c=relaxed/simple;
	bh=X2vKEGP+hh+umOzu57cmimEcU56AyH2okkysJSpxNMc=;
	h=To:Subject:From:Message-Id:Date; b=RxMJmZ8Fd08i4+hyadZ924r9bzUcVJnNybDEQEMUQ4CWzqYTodPVPyRGdpWUaCZsjZMKyj9YrkanX3/E5ChrCywWGuGmgFbL08WdzvABjhZj33cs5reQDcmdMiZEID3SeSDF4bS4KiW7V2LR48I7My2VATrx9fFfD+oAbm9DR6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BvXcXtBx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BvXcXtBx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27C1C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791382833;
	bh=X2vKEGP+hh+umOzu57cmimEcU56AyH2okkysJSpxNMc=;
	h=To:Subject:From:Date:From;
	b=BvXcXtBxsZUJlC3xtcKrUH+9e7LsvG9HHQvrkE/YTqO6jQFS+Bw0okumynqnxBCKc
	 ZxefuzuZx0hgwkI7vQnUWWzrqOq12RQynlnMf7Mel3cLsn/O6NdpF9wJEPUkol2Dl/
	 N6Yvx/pOLi2PTchwVyYN3QUS+HAzstg1b1MBFkRGL+oLGjNKrPHsdMbDc8v1V234RB
	 N+30gCwPDU1Son4WSUEiswUR+6tb4UeKMTXVsiMAX8WVHBJApUkDmCCItLV14IOxTb
	 pg/7Kxjdxiavsy6iiepp8CCXe6OSxbgjQPi57/xSoTDH7IGoN8L/7YPmXKN15ZmqVt
	 yttEMxQMviIwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA9CCA5FF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179138283369.9766.6995211385987436421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a2185d9f717a38363659d27c2e7d59d38132405e7aa1ce26ed927cc836133b3
Date: Wed, 07 Oct 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791382833
