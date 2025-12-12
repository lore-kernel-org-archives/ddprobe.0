Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49CF730216B
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 19:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765568574; cv=none; b=GzCOoGpJQhUg2bD0ZGAoV5Dw1pKtvsUrFxvrTOT1RpGlRmHkhbEovUMqQPvYO21pyW4G+0hD8T8QCRD5b2Ou+HdJ6YXL1pelrlzH0oFtXpLEZQrdOO55UZkDWzasPvVTPLQl3Mlv+ytbLmp5KXH9Nsmp2w962Wm5NxyjiT4k9sI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765568574; c=relaxed/simple;
	bh=PeC9fKPkEZLiWnD1GNlA4iG8Q+ivM2QcBrzFSLnkGV8=;
	h=To:Subject:From:Message-Id:Date; b=eYG2b0y8dhxQiX7CJ6nP9cOGQSbiKJAmsoCvXBWhY4+2DXi2y/QB/C/d5FlyXMuabEz9sIG/yuVuH88RqPKab6b2//a+MDCi2Pi+XKgJRvi5mN3IYUJ95K2a3NtkY2zYzyIOIVPTSBjGKgauyDyJm0YeEwwAXvKiw2taJ2IetOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSuR952+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSuR952+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2C61C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 19:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765568573;
	bh=PeC9fKPkEZLiWnD1GNlA4iG8Q+ivM2QcBrzFSLnkGV8=;
	h=To:Subject:From:Date:From;
	b=uSuR952+JnxVdjZkfyHEnUaOzzwNpHsbkGrrtUU9cfiL0x70+F52J06V2GMHLM6t9
	 XbJb63TUN1ec12njlvmrdA2vex3+KLJn1CwkaEdYwar5jkEYgM/D2gGo8c6nQze+QO
	 1n6AL/KKQLKfCFFtavFyeSvtwbXoecZsDH953RQEVwHSgtEv3/6Fk8vMdC9zs3pM5f
	 3goZf07wiTN/Nm+4lnJLgQJwkanJ3hy2EOiG+fonGXbaW6KcR4KF3EwSUKFqYBZ+BK
	 Ypw0Jki8ZakAubOn3eDIka+1MUMFPhgx7qSDLUCOsgr69C+oTUOZgF5Se4dHW7s0IH
	 B/BkT04AOdVeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E3CFD59D8F
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 19:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176556857359.14997.1355404029016499501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e65b0efdd5814ca2ac32a9825d15b326498b3df098b2248ae6e296e0a4f59c0
Date: Fri, 12 Dec 2025 19:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765568573
