Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6217E521221
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791906634; cv=none; b=lLsPg2v7xmo2eSZvfMmMFYxB86UF3tadxw8i6Q4p++tMx/6yzSCX2DUWWqH0arYfZ/JUsvEjNFbe85eUGsYFGNahqpFDYaBXMF/cmMM78qy4Rb2YWSvPLXplXau8zzecuTw2D+1ndUODJKd4Nu3nkbkOkRUlWyIAvDWc2FTVZ/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791906634; c=relaxed/simple;
	bh=Sf/z13EoKEjag9wQbGBa1N7cSAKfY8COWYHrny5SLt0=;
	h=To:Subject:From:Message-Id:Date; b=PeMw7dHRkHsGWAPSPpnaVyRcKEa5OuNmMPofC2Mz9cs2G9VNsh/3oQTAh8AAAc4Q3HC5Q0+rlqLlEjgg+8YllE00vu1pzsoS+tBOK0ZeWS5d6ShQik57wOVHZBPri6XC5R7apIUqz9nBqHduLHDZmyLw8OuXADvqgUQPjbt3BrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gopami0j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gopami0j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4898C4AF0C
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791906633;
	bh=Sf/z13EoKEjag9wQbGBa1N7cSAKfY8COWYHrny5SLt0=;
	h=To:Subject:From:Date:From;
	b=gopami0jn3NvZayeAewqx3uIJvwSOYLdNE7U5OJl7IH8PncA0V+9ofprc7zpb04Mu
	 uJtgncF+X+xxPctYnCAlniU7gl2yTjW1m7EAmdcOJ+aDImHny5SwPFoBgrbBILHcsI
	 2Ei+co2ZKx2ytHz+FSV/JwDYclhg4EP3CYvJYwSC0CzL82Pi4lhvURo5OsOlZEDFPO
	 w480k68EJAGEQJmAUVCH3cOcDNcyuns3LTh/BOTfGaAuG6tkUTx1Tq3JU8SMUMQMMx
	 nOxQxzzCEwjMNM1+SLFRcLf1UMnzJ41j7PR1kJgNyOzfTTFNnVOKQoXXNzGw3D8ZAl
	 8sbaCBy0phFKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB78CC6B16
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179190663370.18976.13194588623422358981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 852c0241a7bb5065f58680720f8dfe0a9a96cffaf305b5b21c5c6fb4ec537076
Date: Tue, 13 Oct 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791906633
