Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C80F3B19DE
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790374234; cv=none; b=r3Dqz8x6Rk6EpUEC3Cb9/IhfED66GDVItEztJEgtmkAOpMsJ1yLmX260zhSuYCtshMBEBCT4HzLEuyx1MumrYSdGlrdvKAuK/q4dniXbZ/kyr3ZxCKZzp+5eAQ202m5qWLjYuQGh0AdvnFcSH3fLWu3bCl4bdg3gk5Ax3gRfrMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790374234; c=relaxed/simple;
	bh=g3y/CeRSaH7e599Cb7ukyBpG0rCQoqFezCDyH4FcOEE=;
	h=To:Subject:From:Message-Id:Date; b=NJB0Wrbk35uZxlIfvXLgvvxvPZKUYMwGDgnJqsfs+enyVp1mPBIyAhsfmygGW3tQEl5ax99fl8I92mtRstFx8Y+w9bfozHGD6bH1gDS9fn2FJ5Hp63aonIcJKbY3V82aLbUATOhH0AIG9RpzyyZZ6qBuoyGzyLGtU9wkQ0OrATI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bFLCPYox; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bFLCPYox"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC568C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790374233;
	bh=g3y/CeRSaH7e599Cb7ukyBpG0rCQoqFezCDyH4FcOEE=;
	h=To:Subject:From:Date:From;
	b=bFLCPYoxzsGA/kg5/75/km2+LeNT7FHlzYCSBPb3W8oWgzfnZUhSKmw+dQ/zTfFQb
	 kE5PNC8uWF09zIY+P+B43B1I1XGKPZr2Ma3jVaH3sWu1qDmh8p34YZQYxLKRbJ15Mq
	 L+ArMNDfVAS/E22fFS9pToSYQQ1bETkb0nvYmh4ah01AnfGaqRcXQ8eK77uCrMDT5x
	 QsSApNO6krtmdMnXPQG3PmFYQ+Mr622u/YU+KYXKwvcRPvLFI9YgQsLxlVbBFeO/0f
	 eQHoOO09yQHIzCJnzHMP6Of9EpuQi8mk1TNXjV6P1owX5vRh3qNSVkyzCUDy3HXKDV
	 TIDxUwmWOJhUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9C1DC9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179037423372.6339.3927509141591181561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 897ae25396d48e3abddfc28d60e92c81a1df62b94c2e8f4a064cbbbd4d8c75de
Date: Fri, 25 Sep 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790374233
