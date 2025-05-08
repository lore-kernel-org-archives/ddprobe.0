Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFCB6BFC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 08:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746694795; cv=none; b=V/hMEHH0237vYoHOYVVh/vBRiQnHKgmjBsd5nL+BIG7P+SORVU8qi3mWHJ5ruvowN4j4hCQBD+hbBscCmofGzr/TydVu/wpeVz+yyN0E5PpRnxttOne0I8nuqZxtSpDrgOarPYuOj1LJ14LoHkh/W8kI3vmUEoHO5r/L16yJGOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746694795; c=relaxed/simple;
	bh=W080MA0AcUbV+dowu7wL3oya+jSSfH0EObklM2i/0FE=;
	h=To:Subject:From:Message-Id:Date; b=qPUIwKW2NRrlVsHrU9dZ/6/xzpNnROfQkQGg1saj+luAKNWFHQR6IKl63GCBtN/rxvute1b8crP1fZ91LSf7t5V+VJG8RFtGKf3PTfBPXmKPvH30RyQ3ju78q5XJ+rDAHqxV1AuJmBbhzompLWtKzPXT+DryY3hRfeMxvoaDClA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUGNc9EH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUGNc9EH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB389C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746694794;
	bh=W080MA0AcUbV+dowu7wL3oya+jSSfH0EObklM2i/0FE=;
	h=To:Subject:From:Date:From;
	b=JUGNc9EHI2YXnw4JQ9p5Rd6XzkShVOc8KG40Ua9RI9B2XYXeLpgBxVDIbXjfYMxc6
	 CMf3P2gUyBFh5ygc8s9wLDgtJxAytFUzoEDei6bsXKxNsMybwQlOqqFM2eyH7LiLmt
	 rf9QaXwXWdlTWcUPsDauEYMTCcZNaITC5JRqo+UbXBXa6FVYHs8vdjD0W/9CPomChe
	 RRYuAD4uPjobO6VTr5SA8ho4sCwraIiPadUeRFfCFzoxTrYmCXUOkL5ZRJttbAbEZX
	 xhJYcl4+e/uWkahU4bnuvGBSIR2TGxxmbDsW8JGkLLYKEXZcjvbKvEbN7V54aI1imI
	 B2QQeAaoZ52Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9065EC3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174669479357.14320.7628901246905942062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50163cd779425e0bef756e45945f67ccd2b5486ec02661c551a0b442d21726cb
Date: Thu, 08 May 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746694793
