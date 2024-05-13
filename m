Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8231CAB1
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 17:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715620343; cv=none; b=PuNPP0SDfQhlEgx5hbW2TuX6vy2epmmO1iVuzJV7pPLqLjwzOjwEE1KxRhpadRnGzFNRnDr0FWi34u455b9eO4ezQzrhoRvh9KdokK0k1kQewlhKOwRO5pahllY7CHPq/eB4UXAtq4bkNH+gHWPwCix94AuocmP0EAg4WpBsi0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715620343; c=relaxed/simple;
	bh=GizABtY22FQMjD9LCWTgtsQaXM+0HYXUTYYXYpLZpmU=;
	h=To:Subject:From:Message-Id:Date; b=fh6TOEFff06EjF9GQk/77W7WMwTUrVyB9iU+h8ObcIC0FAeLFmD34XiE3+BS3l0Wocot5ISWHqh1ei34P2DKh/Oo9TFiN89hfcCV/pcpoYE8ylkjaabzn7kFCj5TbP858+MAuTaBgA8Y8HHlJT2454BKnLlDHMI0i3Ot32QmYdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TDLPgTj7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TDLPgTj7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D501DC113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 17:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715620342;
	bh=GizABtY22FQMjD9LCWTgtsQaXM+0HYXUTYYXYpLZpmU=;
	h=To:Subject:From:Date:From;
	b=TDLPgTj7zsK9IekkcOcxO0yfGigE7aL7KR7EAZd9EMlMCzrpIxsk1gJk/9eoe8pP/
	 zA0bIRvZH/z4x0P+BZgk69sYlR4EpWD9uBZySyYmCL7I4WhGOgtPuP5xHvFeLwdupL
	 L2Jz31tbpOPqzA43/GRt5gsphjTvZcewqEOgcKyfFcPCJmcVbQOs/7Ob12wTcVMY5d
	 Cr/k1VTszqZuLlN4vQ8kdlp06LIgEESMv84+2066VNh86VvBLH8aJDeylAjeYAXo1A
	 Y8cHjUxyrNDq1QGLHorcqpE9RN6eg5wxQcoSyCtH4Ka28xW3d8RKGH77pr9IAhqnnR
	 il1y+1rwAD5kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1CC0C25B10
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 17:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171562034278.13529.9271434411385061330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56f8840d5fa19cb702d73c1124ba1d765202fcce0fe4c64892011305bf704915
Date: Mon, 13 May 2024 17:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715620342
