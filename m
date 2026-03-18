Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 065622BE04C
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773848094; cv=none; b=pZMVY7rkUd7mi1TFLdYTiZ1mrRO+eElGJjyAhP5r5YIaOTRmukV1PjVsZMfuCp8HJ0WWyBc2pthrN+laNWG6cvfDow2J1k9qsGrHhs+GdSPSS5r71VGvMtIc11NrXAAF/QLDHH09bCSNheV4uhfmSqfBMB1AWZj8ckAhEINGDMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773848094; c=relaxed/simple;
	bh=mgPvumr5nB2HGO8zhsUlG1HixSuvN8l/mFpAWqfoNEs=;
	h=To:Subject:From:Message-Id:Date; b=At2J3VtHOYi7UpiOKjXq5VcZcSoA32BmBG5X32Xe61Lz/QjaDfmHb6rF16TxGW2LHcJTDl3au+b/cdbSgvGzCoYsyUtBxBJwARpmknmOelzTsMaQ25dBqF5q76yytQeEMcGxJsSvatsvsgrOj8+M6NswNfGkdLWWnnu8Yu+I+HI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUu5D0Ro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUu5D0Ro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5BDC2BC87
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773848093;
	bh=mgPvumr5nB2HGO8zhsUlG1HixSuvN8l/mFpAWqfoNEs=;
	h=To:Subject:From:Date:From;
	b=VUu5D0Ro/P+172tDBHrMo6YPy7GNM+Vx4xX04JbrEM1UL+rfVX+ksd0S1/JzG+Jee
	 k47BguAaXKgK6QtDEa/79GLgBDeBE86QviIbMD5iuHRnV0F0QjNMqAdnnOzFy3tj86
	 hlEzYsu0HESesiTwHBK96/d8bbfeRfdoBx/KZ3cxc3aI1qI+qO+OQVhrSNdL1u4QoH
	 Vo6ELBBOfsjPEpOMyMhzWYRS8cYOrlZq84lISOrVwVuGVn8OFeh4+wOd9fQir32lC2
	 c94F6eExrVbG9OF3+975NePSaLxuTLUvI4RsKyMXmjdPy0QWnjqWMJlfLCw+O9O3Uo
	 crVk/cwJeJQ6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E7B1103E199
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177384809363.22760.171631636776481717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6777b4678c6fd91aa10dcc744d1db7258c496215a83d3e0f63cf3fe19b0cfca8
Date: Wed, 18 Mar 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773848093
