Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241832EBDEB
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765955634; cv=none; b=sFtC3KKKFNQeKrvGwPBAaHOPlVIIqUSbtbWh6JzLyf7+ucoY8nle15JCvQnFbY01A+MilAZj9AAr0cXqhtTicwwRBcHr2G8ryXqkf2zedh6+yA/C5BHVyywV0D4aKzYDOo35LWBWAIES000OsIByTwQ5xgx0b8gxyOKwim723kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765955634; c=relaxed/simple;
	bh=3QsPIEo6gniTSm1T6EmzvfpQkfW9Iy3b8vZfspjvqe8=;
	h=To:Subject:From:Message-Id:Date; b=m2cBPoPUAYArwKlWtCKBeiTQSOXbmbDzKnx2eP914YxrAhm+//LsHGcaeoivrJE8xZdUuAbX5MZ5X6MNV8/x1Jr2LLLJe5swIi69TmfZDuzyTJhbKAYfVny593qGDDhcb+YojKicQEtwiwWbo+9Zrdzuh+f0Pb+JFKShzptJ2hI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ox36gmrM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ox36gmrM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25E9C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765955633;
	bh=3QsPIEo6gniTSm1T6EmzvfpQkfW9Iy3b8vZfspjvqe8=;
	h=To:Subject:From:Date:From;
	b=Ox36gmrMEQkM1TjRnacpPXrpbuIo7pDw7Q2dxnv8wkc+9BeTdSBWRcQxdXmfPBKTU
	 P5ywjo/Mlo9lqulRZN7Oa7P3fQFhAEE3IQKWmWqOnyeKSM59blPmavuQjIBgDJ55uS
	 pDKZRHbKKEBg+EKrOl5bP5UH2fVJC0HMDZ4yJVZERBBXGzyhi2TaPkOQRZmgFXkuda
	 qlNWfBZFCWgZfa6GOWgJGRU8JTtnkis6aLmOii+o9nay4aK7Ffsgs7e2XC7fcR5LVd
	 au6Wa46Kvo6fOrolmeKzVbVOB2BPN5jlRPHX3xs0jSvg3evI4c1y1s6wMQqJsN8G61
	 +pTiBSpX6qy5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91401D64083
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176595563358.5215.5058954413269883678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9b5425a2c9a154f59027b2be125123025dd2300fd2c80974ec4677f57ce8259
Date: Wed, 17 Dec 2025 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765955633
