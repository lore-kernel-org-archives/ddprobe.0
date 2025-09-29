Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4779D26D4C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759134594; cv=none; b=WGzVdM3wgeUSjNVyY3TPlH8FB9c7FloSe7higu2+6/VVG5Kjgp25B1zhTz6JPolO417ILFYXdMlwmTJVct5RgrEDhqnKYmu+N46pIxfvhcBpeF+0gR59orBUkprlUxBmVmC8gBqMAdGMNCdqdHOc5quLeUiJRkdu64+DCdojpFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759134594; c=relaxed/simple;
	bh=d84Qrl+UZjFXD3WCwsktHO61bvPdMDuG0FUqKCfhJH4=;
	h=To:Subject:From:Message-Id:Date; b=XuTvKQ9GzLiVgiV2JZzLb4Gb1GLjPRTYMurai8tqhRkvVEm7mNVQLF7gNZlHg1tOwXW15tO8TBMlb7fHPra9ioJaInmG16Ft2Wl1OmO7hxMZxl4kkb7MMlElqDu+rk/7uA/F/0IrkrWL7v048z07SQK86e5PN9ykcV1jHnuen/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aJMeh9SM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aJMeh9SM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA43C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759134593;
	bh=d84Qrl+UZjFXD3WCwsktHO61bvPdMDuG0FUqKCfhJH4=;
	h=To:Subject:From:Date:From;
	b=aJMeh9SMX5ckumCx5WB+T92lfbrVTjBSwXWLCWsKnAze9GoCcJPytVCt+Z4iT2/EV
	 VKnrxkhWYlruOLZFehWZ6W2ImB0dDlh29CHnh9UcIabVUyXx+E50RSK1jp6Mp663eb
	 dH46q6hSP3YQUZWaMmOFoDuU2x851yC32OqrzjFd/AVomqhwoVqWoxGIw099lc86kG
	 Lq3CSqQCyrfq7ao1oR3SXoan8AV2EKhenJRHJJdcQn8xCUNx/OBcJrVigJACztz6me
	 aHXNDetfOLs1FaaR/AwGH/qhC56Vd1ZF8fAmxtAwMHtaWxYC3HddmcIgnh0UBgtCw1
	 PbeiGMnf/t75w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D0ECAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175913459361.10822.17523486097140856063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0902c599ca56d5055524f594fcdc6dbb84b0f0b0aacf42f45888403f1f5e1738
Date: Mon, 29 Sep 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759134593
