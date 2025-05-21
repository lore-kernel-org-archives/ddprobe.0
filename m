Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376531459EA
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747804794; cv=none; b=VP4dAQ7tA8ZMtemLllN7sUpUKD/uLgqd/mwrWcjP91eZ98T6USQXcTwbtUfXaiFhL+hknlAWJbz04qd5aoMkodXIwZDMAB6Az+eUwOq9kqXZb40gRMLT0rlnq4EQGsdK//42A8KrdJqG7beEWjZqGcTRaoF9YcrW5jcEiE1nAtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747804794; c=relaxed/simple;
	bh=6tCSXoydFeeorlBrBHzsjIKb5/tuXvmhii9RT/S0Cn8=;
	h=To:Subject:From:Message-Id:Date; b=ATyJkN2RXnFApvv5AJXgV7QkmzRyLXFuTwlPqebDcm2ZYuKYWI+KdTUNISxfPO+zqsTZwXh29Cxhxvr9O9QejRuuxN924hg9Cjl56NR3ZzRK3Xh3WGu8XC2zBQDunlCsjr467IHRVPB3cWUiQZaO8kx4IuL7Bbk9sSZ/dpTVpVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qXIXj/gi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qXIXj/gi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E57C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747804793;
	bh=6tCSXoydFeeorlBrBHzsjIKb5/tuXvmhii9RT/S0Cn8=;
	h=To:Subject:From:Date:From;
	b=qXIXj/giXQKLJZPKBpZpEWdifPFQnT3iGHG3jEXAT7Jyz2kQN3TMMOHqPKonI5kWw
	 7XP0StJslMu/hUbcZqPP5y34y7lv90EdqT9mTe7SzeTkPHVMJLzPRxuHYiF5OmB66g
	 ZQo0m6nbWzxv2yr9i6worAHgxqF3a6GwCa1EzLK4UAnGOnA/h31HY9VZdk5tJKRItz
	 zMnI6uTQyuA+8rNwgD6tWYEr1yoYm/WIWxdtobfkdjB63XxK27+Ad1bsNx4iVaUF/G
	 uR5xR/TXwpPvIQtTrBLEym4/zXThMXqLN2zcKzYaYEk9+jp9Zi2UYnvwz/u7uQH6ra
	 fsk9RrS6GY68A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9179FC2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174780479357.8771.5210125077600400869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8e36bac435a25b5175ac0504995d56ac6571492dd2c0d805f2fd274868d395d
Date: Wed, 21 May 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747804793
