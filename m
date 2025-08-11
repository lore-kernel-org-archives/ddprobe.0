Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 751B12D8774
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754939994; cv=none; b=DGMDiIy67HMR5pdIRej2cMUDCseZvaw8CVZ7rL2vVWiTKmXvpqJdAW35DrNbivhE4DjimGpHtTw7LtSKWz0cZb6dciKsL3DI0P8jTk3I07TDzyTEGn++eWYjnvGPF+xFM+tTogkPuaT0OC0yuaL9vohGtg3ZPF1rXpqGLerNsdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754939994; c=relaxed/simple;
	bh=F1ix0Jg9TaxKILTtIEcTByERz1+blC7cRPG3U8Ygzpw=;
	h=To:Subject:From:Message-Id:Date; b=hHSM+iJu1C53ak4vau7gbusQCarSzNH7w6PXMzDX8e0fDnLtFcduea0ZKVBCxFjmRq8ZQ9LGSvjsKmHhobvMf1fgV4hF8g8owBYa9kHiqLDdg5CCojPlof4yidCHgfph9xhso0huXP/2tyrBHW3zIW7vg/BrkdSaiUTQyyithOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lPeZ+p9e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lPeZ+p9e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3A6C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754939993;
	bh=F1ix0Jg9TaxKILTtIEcTByERz1+blC7cRPG3U8Ygzpw=;
	h=To:Subject:From:Date:From;
	b=lPeZ+p9eyVq1GQMG3Vg6a+gHn2QmsS2btB830ajn4QLCTTYIWmFR40Rk91gAtODBB
	 TcejwnOZGEcrvGKmFARGZgwvtn0fo8935vZxLCXC0yf56MUYpchf3dQE506G8jORlT
	 vHj7K/Xg6nlxcJDuvrs/Ug8a9ZvtllUh2cvsvsVEMk3JOcs0WsEptVIkZtxYLeoOU5
	 myTM8dnWOFMsVmaY0QyBK84vYNvlNYZbhWqsZgZPxHph4b/3kkI/rDi6GXBqsjhZXc
	 hKYb1F+vf5vTwmkzpDV8TRV241bxlDME+CXYbVMhg91I3KhCjC1/K70vHNwQZezJHq
	 oFuRM1ilHpYGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA73CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175493999358.11196.569985023036252871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17c33adb828efa523c13b683e5248e543b7dc870a64b10abd1f8e0c2ff0a73d2
Date: Mon, 11 Aug 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754939993
