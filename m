Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E3A408018
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785157834; cv=none; b=PvfU8aeIlUhgh3ID+wOLzNEL66ChunxWaxL8cnqJ9Oj3xxioSvHvTXrgJvFhojjaHruTQkv46sZgQ8dp14aGIb3jwMya0S4SnFjAVYiWgIyA+8x2jOhNXNz2DOD4jbVWM7jT7aXx//fynnGJNFT4M4mg29QfLprmq6UOdUjITJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785157834; c=relaxed/simple;
	bh=5z40edggr2Y4qDVV+VqrF3C1mp1rsGlQ6SNcIwDthtY=;
	h=To:Subject:From:Message-Id:Date; b=kn09gIZ71DZSLxIFG25wcbnc241DiDU0io5t237NIqVxW7thVjjnZDa4MVz8xMY7z+lJ1Ht2Q/i8ZLE/4HfS2y6HSKVJ4JB62XkUQJ8169tcEDwdNZBs6g4oihlKxsEhNrwnxOe2YJ9UiHaserQqLDVyqokM2CaSKfX/nmgH720=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sTDa2CU+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sTDa2CU+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB674C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785157833;
	bh=5z40edggr2Y4qDVV+VqrF3C1mp1rsGlQ6SNcIwDthtY=;
	h=To:Subject:From:Date:From;
	b=sTDa2CU+StIH4p5+OBQNsrRWfIEvc0SDVOPcl3ZEVjxWgeOa1ILlNwROybCZ8OGVv
	 nmT1aMfSQF5u/6KGq45X9y2ElCfwgMost4CaKx55HAF+h3v7A6wuaPCIW/cCP9nJIJ
	 be5EbZb3HcaxJIeHDXa4Im/PKv2xzsuKzh07K/LTRfjd0piSR4MzQYjyGlKo4sv3sM
	 yBxOwQce1E8LSwtoe6eNBFb/WOLQTGTEB85s1lBmFC7Pe26yqaYFMjETrpyVGfoOsn
	 r3J8HuVfhiJpX5FiZZ59VEgnFiXpp5+T/tEBxzhMBZQvthehMzX1KVK2bC8UaqoWi7
	 9XAf5oiHDM6oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A8EC531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178515783368.28447.8642964182402852710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb6e7d15c7f168419c0e7f7c3978259e5084f227e3820723e65c58e2f8374eda
Date: Mon, 27 Jul 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785157833
