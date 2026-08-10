Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD45348C4C
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786404034; cv=none; b=H6fhPVxwbOHGZSw2HNMzwSjqjngOq3cf0rT7auoWVJpNKNIue9evnezrwvix7g2Co1KrgJPvqvYz+m8W1BFR02AIuPijvKBul5B7Ze3zWLm1uDO13oqfmDsNj9uo3HtbEyDCISe1/8gwXHso9Lq5yO6E+TtE5e1wKRusyKxbeZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786404034; c=relaxed/simple;
	bh=iXuHVtHN+SUF3Z45hia54kKQFcMfDTtffcVCj2a+sB4=;
	h=To:Subject:From:Message-Id:Date; b=JnptQ1ktral4k1wC/xwwI7ER6j63oukORkAOfzB5p98HAdVo+5gv9y5OYpbJBqr8YpQDoBqxsi30gEPFoRGiGGDCAgDp9LJbYve7GY88xzVnk9uwueMpMIBF6MTqJxHw0+WHCyTtuOkdK07FvVUaVJRl4La9bWKo4lI9xTRWsfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z+lUMsN4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z+lUMsN4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A7DC19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786404033;
	bh=iXuHVtHN+SUF3Z45hia54kKQFcMfDTtffcVCj2a+sB4=;
	h=To:Subject:From:Date:From;
	b=Z+lUMsN4Q0czL3Og6YAYd+9fu295YaASThLIYUYl9g41Olw8JM9/lrult0/osYWsX
	 hDUlvay+2VTSY/QUrXK9NBpcYp4PhJC4BAuJ8YGdaSKDDKOF3rRAY06zXlvO9TmVfR
	 bNd8R6znHqrNYYCiusBLhWdoSyT6Q09aOF5GADtrWgUMizJ7FajQ3jb/TaDNN1l05E
	 Jttk7CLpNAXoFRuO9hC6jep4HFzQGfYLDi2Wxi4e0pWH8AAMXlClNjZTUtWYqW/G+A
	 frTZ2UgIuiEUULpQs5+g/345ZYXpNBBVaoILaCZv3mzJp1JXsnCAK+/pCkNL5yDzKG
	 Z3GhsCgC/cGeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9A7C5AD7B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178640403368.10742.970802039699601312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e539c53f73567807f4acb19585a88456a012fcee4e77c9f9c1802a9c85364017
Date: Mon, 10 Aug 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786404033
