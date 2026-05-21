Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8035F23EA84
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779326434; cv=none; b=EpaZ8IZZWjMukekoDokGB1hWTcw1RgxU6CNZoq3FpCkKl/kUSTYZmUm0w44B+/ib2R3X+1LKvLZSq0wGJYd/FmDDsCeLUg+gF0iXtBJbmawwWtohS6EBBFrv4Zew18AmWaFmIoAW0b089vGObNS4XYG+I/cCk6d8wV+fCTGtZEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779326434; c=relaxed/simple;
	bh=YQTORrrf3GneCiBj4tUREfnik9yRUvse+VrMyXNKGOc=;
	h=To:Subject:From:Message-Id:Date; b=Am3s3OEOACh6tKGTUV4QxYMy9MGKtLE4JvRsmEK7V+RvetA6e7Nm2SVTtp965KP+bMIBGxP9Tx/gUpnYegiX3S9oAX4TybL9Z5IjyURRNVJVtcQMeh6B/62HsQZ537L52jygAhE1tB8/qF41a5hfiurpxSY9Rk/A2uVfNE7mhWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I3kW9Doj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I3kW9Doj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE5AC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779326433;
	bh=YQTORrrf3GneCiBj4tUREfnik9yRUvse+VrMyXNKGOc=;
	h=To:Subject:From:Date:From;
	b=I3kW9DojuN7pLSMntP/H9hGJSIkbL+Y3BAoB/bm7sz1nz7ksQeaC+zUQulCOGu6o0
	 0xfrLtb8ETV0zGLPQu2oARCvgxchYMSBB/iULUmcvxep5kiNHeesGjMtJvR/pb4TOG
	 mhckpyTSVhu6BNws/jEthUq0F6AdaprM8aTsydgukoCOozv9QUQ23/9SlKT7srteJP
	 uXLbsmlC/U6V0fvUzPDZx+p6jpyQQ996dOU4t7V5UyTIsnHgTByOp1sIU+GM006uQI
	 gldpvkv5f78hHAODcJeD7+e4xhivLsu2dUnAZ+Pn9WsfWDf2e2Df9p8OXvFQslLkbG
	 dBWiSIIvJ13Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEB7CD4F54
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177932643369.6105.15315108605691766670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87c5050ee663f642af3f72339f07e8c4698ca073401014461218cbfa0b2d7844
Date: Thu, 21 May 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779326433
