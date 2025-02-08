Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00B631547E7
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738983954; cv=none; b=XtLufX3Zm/mY1s6cnB6ms4+O0aROsQBOikTzVJYkVBG9D0X1BpLvLLPvBN4jzoCzX6DvFy6NNV82AByuaQxD438DnZpVmXV57aVYIObMfX24GUBgGXo6ORzbeocnVp8TIlj+ncGibLIqSt91lg2H1wynBh760OnM6wELgUn1MCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738983954; c=relaxed/simple;
	bh=55lHqbyco6m/ZcYxJZex7ecX7O9OowrUDKgSbDruysM=;
	h=To:Subject:From:Message-Id:Date; b=nILfJ+9k3rWHu8AEruBHvCZunwXhTzFvG4GtghJhqTVkifYfCUKADbtLJBdYiYdUse4pp2iXz1fZqDG2w2bmDbkQIuvYOc8QGhnu9BEyh0ndsfIJdSIxBOIklyxRfOmKrHPX0R92EA+OsCZW9xz2LX5WhZq4n6UKYnCKHgaydsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbE8YsU7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tbE8YsU7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B53A6C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738983953;
	bh=55lHqbyco6m/ZcYxJZex7ecX7O9OowrUDKgSbDruysM=;
	h=To:Subject:From:Date:From;
	b=tbE8YsU7s0JTQ0zgD4vJZ1mSqcR+lITQQxjZk4PHmaObxy+5xbtIB58uIGRLB1S4b
	 l8jI3WT+7eCe7GO8WX9FI9F4mmHpBpqJCsUQ4GSWYMh6yGSHiHXojjG6unIO9pErMJ
	 pkD8Hm+VeqoC+N+eHbhjrC1PXe+pera+T7nf8kjHFzeyCuNpVkXQGiY7OgvrKMfYRK
	 9s6S8J7mq1MHXMpuhsTpz/sq7fQj4pFXYpHLgyDzHboTjk2QQQsd2t9zBQur6DrYR3
	 iXFjXf3wtmEq4p4RXTK2B0hJgqP7rvjYmonoy9Yl0VnccUh6VmB2LzPMmqBwJpYB85
	 77x86C1WQicZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A660AC02199
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173898395366.10259.9932040505836438972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1505d8e9abca8f09db20027e91b8bb14f26d1696dae8f24cb555c5d251cf4f9f
Date: Sat, 08 Feb 2025 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738983953
