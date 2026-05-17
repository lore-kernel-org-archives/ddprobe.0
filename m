Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB673BED66
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 18:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779042034; cv=none; b=TdVGDyjhJwjbuS82blYpI8AWTjfRkDayVGkahj5ROKmYiDxjJbU7YH+wpwvh9xLAd75F1kSJFli/ReKZYI3pAPLPKYQUimZqqugkhZWchiiX3nMxPNDUM479o1KVPlp0t1cX1zVQ8wBQB2rthfXCfTKpU8fRs+j14m99mv3er4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779042034; c=relaxed/simple;
	bh=vxbpe+JL7NCRbhZlK22YGmQeC/W6Yd4PEIavVnbPEHM=;
	h=To:Subject:From:Message-Id:Date; b=Bwt0iKWTrUJ2JKTgeYFyzVOjMArGJz8LSxchI8AfZwf/dWzFSmSWrqnx16fD5Q2yuri8ChqdyaCtxZhKtQtHEzDFsAmMLwwTo028+VwWIkH5+StyGdME7570zd9oNiHMJyv2qhqM/MUw0hb2s0ZOg0hOjddVAlIcPxwWSoql4cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGJERXy6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGJERXy6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9E38C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779042033;
	bh=vxbpe+JL7NCRbhZlK22YGmQeC/W6Yd4PEIavVnbPEHM=;
	h=To:Subject:From:Date:From;
	b=cGJERXy6/gVjWk9zx+U/reSO3zGqdmliVO21OX6O1erkmV9+3FEIahQoGOdiZTcaR
	 iFC0U1cFVei/PxtvYLBgsyjsoBWVuYXY3BmfK0GlfqMbX54Py4BNiUhYQi1ibEcfKH
	 0uM58t2GDe+H5xvdyjok5MT0mjs98oJ8Foik/qHXfe2ZkLCZWL/kOQDAy4p5rL91ZB
	 EYz0YtEbEOd0RaG/gqM4ksT+tnYsed4WIHSAfPhS0fg48jN/ZF1u9E7MJSw60TcbFJ
	 GZD3xjw1SvnT3JozuqTxUAl7VSB2qFccT2GYvkPlj5wFzyQ9rgC3DNZE4ikheJFFXW
	 zmPgKOFSFmd+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE23CD4F4A
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177904203368.19837.10551879932496742202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 600df2e5f5b2f402d185d12cf099a6d6df999d9b557d569708e7d437a30c53d4
Date: Sun, 17 May 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779042033
