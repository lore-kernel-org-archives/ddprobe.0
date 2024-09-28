Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06AB1136358
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727557554; cv=none; b=hV1bEAINjjIXEPySrLU4ORHfUzZ4NzGVZpWW7BLp8oS3nlJY5NmEr/mhcSDpWJDYHJVTnwILpBLWFReVGlZBS9uJ2zrM4HjGGcs4gM+8fDGHfvdcnmRuxrwafe9IVZSJJiGYS1cRt9sZML4QWEKL/gyOV/ayV0hB9kK6es3HXn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727557554; c=relaxed/simple;
	bh=DuHq0w5SaSnhNbV/K2ph8WN6hfhSMaTZ4Lw1QBkOy20=;
	h=To:Subject:From:Message-Id:Date; b=IIV4d8eAA8lwenAvKQcLINpE4zMX3wfPflx4xBlzFuNaG7fcqRTL9tTPdORCV70i2lgPn3wdy7o1sdl6YWxRyWPji0ZDineXvhc9jCUUEy8fYkLfBY40AbTwQ4iurTseu1YYsTZ8GfqnrHH80CcUllyiXUXaL112g6QzQzGBEWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ngQLsJu2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ngQLsJu2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7532C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727557553;
	bh=DuHq0w5SaSnhNbV/K2ph8WN6hfhSMaTZ4Lw1QBkOy20=;
	h=To:Subject:From:Date:From;
	b=ngQLsJu2ouUGj+KGjrg1xIxLXV/mrDTgXCbstuhSmmcRjUFeWiZjWJYoNu+9HAUDq
	 EvBMkog4bx4ovhBtwo/DoKS4joDLnBJwx6eNUx2EOczSrm3bnhYNMdhFv/e4V6Dqa0
	 ufPwzWsGkFlwghVK+iS9+LkPCQHTw/Dk+m11YS9c8Bnf0AFntpvTgIBWR3EdKkCbOy
	 IVF7jV7cd1wI1gQZv1AvG3TqUg9o8VjAgVTx9K69q1XiTQ6b7qgOujrkB0I8IB3ZQt
	 AtZ7Y/pX5U7+9dvVx5Mtpvv6fUH3FqnxjeMS5fAXcEnhHQYX9lglojoiL+MMpBnmVf
	 9mCNgqHANjbmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DC0CF6491
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172755755360.4200.15464608804728931991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a97fea76489ba4868d8be951394b390deba1ee26ef759fceac764af6d7389274
Date: Sat, 28 Sep 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727557553
