Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3294171747
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745590194; cv=none; b=UqO58hNdV/Q+HGaOY0VftEDZsD2Jo0FGOkTlW/pHQArFykFr2IdYERuZwykIrFe2y8Tag6P2EW5mD2tqFiEufJkI/4OdanF6YOS+q2UdXDb3sQwlNFFA2PLvqmNnI/Uw9M1tkR24nmRNz2qMjDUdVsZtwyDw6tqv1CTVjI6Tcqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745590194; c=relaxed/simple;
	bh=QFURROzo6yX3sQeoPvdmvEgM1aT3ZML05ov85PG/qqw=;
	h=To:Subject:From:Message-Id:Date; b=hjj/4H1pph8opzZWvnzZcr4NjR/CDelwCgz5emP8a5unS/7RG0slj7N0nDBwtlVKTgVOJDhqC4EJwFUJ8rc/u9+yNTXrdzep0y9Zu3gfj/N30WXqu3r4He7TZuFeJV7/MosbFPxd31i3SGGpxkZVmHE25BFT49reZaxlC0HuNCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOnwzaKi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOnwzaKi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BAEC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745590193;
	bh=QFURROzo6yX3sQeoPvdmvEgM1aT3ZML05ov85PG/qqw=;
	h=To:Subject:From:Date:From;
	b=XOnwzaKiqzU0L7Wc3KgznhjlylEpiNcR3qbXx4BjcGMHlM7yZ8/2z2tblpzNYmwPe
	 +u+i1U2oQ0Pn4gLOCrC47uNPL95mdZT7vRIQEjNWVlNGol5VlmMDQ+VsYaIkcDNrxY
	 kywvg8iKObYoJcQ1/3KAJ+NqqDir39xrx7SeSM/2GVilA3FOlHuO32TeAkapEFroPp
	 DJu1ejoeD5oG21NKtXr5YalxlCKOp3JGnZlLf4fHuGGztkBwngRx3pcCoA6rBRMrb3
	 XO8BOjLffC2Q3k36Pvyb48IGZF41z1I2IR98vrg5v6VfnXVry/ZrtpTYRMTNkBkv0k
	 KgJg5R9eFhUUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A7EC369D1
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174559019360.32047.3284598673892235882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aae97ae1d75562c0608303336adf4694389e52457e3170f8f3023e7a51fdacf0
Date: Fri, 25 Apr 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745590193
