Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17363492E21
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790839235; cv=none; b=kV4KXc9vCDJas9RKXJsSynEkNrreWcjv74MdCe6/keK3dCyrTg4W2sY8Ys7f94HJxopf3pyG0Ky4yaNKIPlR0JYvFAM4nrxzcYBeyEWjq48EFeyvC5bXDTP3aekAWwTK9p6oICSQgQBfHz8Q9dj9zXy0vX2aL4Al6yd8OwyDHtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790839235; c=relaxed/simple;
	bh=EXpUFKdW0fCxuP0h7Hu21GzqQ4QS/zzMs5dQhyoDAaw=;
	h=To:Subject:From:Message-Id:Date; b=J/rKa6gk7ld+xjOrmwAKy6B6qiUhVY7t8ZcG986ewrduKBIDtLw88TkEJxpWyVHdiy4L81C+9p+c9MK7MbCAXd/OZzRlhOA7sekkzoBMMtfaAGc8r//4LItnd2SnleEAXWvg1nnm33pB6YqVoG4XjAHsoP2aKAabJJM/bZsm7WI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BDTRAi83; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDTRAi83"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8306C2BCF4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790839233;
	bh=EXpUFKdW0fCxuP0h7Hu21GzqQ4QS/zzMs5dQhyoDAaw=;
	h=To:Subject:From:Date:From;
	b=BDTRAi83/D/mnKd7lKgNO+3FRT422ZSksZvzAI7ncSqQ2TwNzjdOOf7n4Wbm2Yod4
	 4K2uUvc9uSApXpl9A5o4GxEJxuUdQsj1tz/EHtI13tkAIsIQiBZb4sHZGBdNhCgTCZ
	 OzWHnfDszijoCIZnhqBxIfLIdK5o6LS7KcSB8rkYTDzL1I7w6tQhfMsSoXlTDdz8Yy
	 T7U3JHH7cbkJpbNRWVOmLsBv/CiYBZWCxTTGUacGWtyz9P0miMSCAlTr96SJTRzVzX
	 Vd90qCILrk0MZ/mWHuSGIS+d+wgRfpR4ol50OCllFvIyP4nDQzhTTmVyZRH8CjtkMQ
	 HUKMsJQJ1hUPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF3ECA5FB3
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179083923370.8469.173774958572754620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d5bc772f28ed6c66582c7e0ffe69966e0ad1d3eaecf3dee171da7d0f3730c0c
Date: Thu, 01 Oct 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790839233
