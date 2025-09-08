Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B06320C004
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757365794; cv=none; b=oC4oNvEMM7SD6ljgu2TxneN2We2vt4jX21JuCEpni3tgZmRTqjkRvQuXbM/Vnx1eTWtqzLDe+tcbUcekr/1aPEI/eQJD8ek6vzeAf9tf3vGoToJYAnm8nXidDyY2+xGxODuE9qnGvVOxtIGc7EREH8E1r9U0bu1YEqmLeKs8P3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757365794; c=relaxed/simple;
	bh=MrzwmTaP0mAByoNap/oqAs1mTODfx8+2mg7X5HdywMU=;
	h=To:Subject:From:Message-Id:Date; b=iKKlMOI8N2qPZLH5vyVYOEwmuqIkkl7ulgyMqK/gxaVyYlXyH635dzJi6PZiY+A/H9pLdTx5FLCqKDVeLtSITWJYeDZVqcWMOmkP1z45/tyW8McuxrJYe4PpPHPLoFomUlmi6iWK0Sspa+ONuUDu8tkRyZcBsaM6z9NG+IALpLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SPwaSRM7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SPwaSRM7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBFBC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757365793;
	bh=MrzwmTaP0mAByoNap/oqAs1mTODfx8+2mg7X5HdywMU=;
	h=To:Subject:From:Date:From;
	b=SPwaSRM7U5Mnr7NG+wjOz8/5VWvPV+gBGzDnXP5rMHhxfClJ5v5xo/NC2yyy8qJIa
	 wghKo4VHYXk0YyPI5Sr22dvkkf8KHEHO/QQVYlLeX6Gqb0KOEqM7GCs5lyLfIc5jRN
	 Cayk3T+zlf+2ywaDk0ozA9wof9ZsW5gN8orzNFvWotpcLoyM5PeSkZmiqn4GdZE5yo
	 SYJ5KDiwXJKfD6k9LyRcKWlzusrvXg0Rl0UxL3qPrzwrAXRWyh4qkZX20Qj/qbsBdu
	 ZvkuLodhF3BCPGnQ5wYAK0A9w5J6Pv3OKALZn5ZyGjvFdEEYM0UpsBpO09zBz5Po2O
	 NuiPW2+5H2LKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F486CA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175736579357.25896.1280103527925913265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e13b87589233ac127a0272c5fd17da142f00ec5592fee6b6506a63d028363a8
Date: Mon, 08 Sep 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757365793
