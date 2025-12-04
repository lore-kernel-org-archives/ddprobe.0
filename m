Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFAC8299937
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 20:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764878573; cv=none; b=UHJVX6VQeY1ieOnJoCg0I+FduuZF+4U8CFoyYdthG6G0A2V/sGQUbsIWY41mccosZiE2XyyARTNyGV5rC980Y2UuZ6SUqdm73f5egHToEk7D8VJDs9Edi20N4ayy/SvQ7dcosseTQ6KVAFotvqTYd9tQZhRACIDw4ECgjUUsMi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764878573; c=relaxed/simple;
	bh=4ug2dmSBXWF/qc7Yx6aFpdkpGWr2TwVAt+UW8gy9g3A=;
	h=To:Subject:From:Message-Id:Date; b=U2+zVSbQ5N+DGhsF8hBf6GYToj9cRbpQgcNU+zMUZLVQUFTr6wH2yld70L15JSYBMrTE+kpfYs+RYa0Lo4KQqIn9VpiA17ieQ7ZqZoq4ifSPBtLkwNFZDS9GgbaBQr+lqtKg27zfBoI3umGWIMlxtK5SzK27sNW9Gk3MK72RSLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NyS5X+j3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NyS5X+j3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5899C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 20:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764878573;
	bh=4ug2dmSBXWF/qc7Yx6aFpdkpGWr2TwVAt+UW8gy9g3A=;
	h=To:Subject:From:Date:From;
	b=NyS5X+j3nVfWTl7NTeHRsiLu6eym0X20JDIQ8/bnqrsR47rekmsuQuX+NO0qXYtoS
	 5nCKf/VdT9KNbd8XvfZ8hCMXvBukQGsgxJF0wyDCoCKRnvhkYYT8yqfxOHT6ud7bwc
	 J5/BGeiryp3UOC6V1qHNsklT35rxSItenT8D9gz0q8IHl0AzUKjzgwmRAxkkYQjGbS
	 d+BUPDSU/o6pSz3oRSZGMsax8c4+mBrKFDVKq6Jf5A4DUYAHpwULFxsvuF4JqQCzvg
	 gH+KJ6XddWA+8ODynRZnKC/OmRco12DAqBrvU0CT7tIoVzMS3uzXSpPn9M22b4bzoS
	 WcLmaUmwhcvJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F17D29FB2
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 20:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176487857359.18544.9421390347082178037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4cbf50f61434d47549f5cda2c74b15d9f5ecb106a3bb57a3ec82ac34c5a5d28
Date: Thu, 04 Dec 2025 20:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764878573
