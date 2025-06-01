Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59CB3748F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748745594; cv=none; b=PDkgSoG8XiplZykttkgGm8MkC1Mbd7kLwZ6l5q1QAsImUzCyA9fyt/+l6LIO9cankRdbovHlTTUBMH7YJM3g6wL8/vXWrmpSO/heECjWmQSNiXkVKP4BnQzlxZWPhL2Q3l4v8MEzSHrKKhStX4i11ISBw4pqCNmz2/Fbq8s6BI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748745594; c=relaxed/simple;
	bh=nmkkgIQB/7Y88dyteqaKqkHf33ewDJkdguBXNZUVybE=;
	h=To:Subject:From:Message-Id:Date; b=mf7Vr9MC0Q999/A2DobX6R5glVChxfkIi9k+dsbeArgInnOMPUPFhB7d/Rvv/xxQcECwcn293hIaQCg9fgv9pHECTKvXDLKGAqalYza5zKJyHsaRW/xT6hZkMIqj/GYDTFTQMH1sJhetkJ5u4Lyyts00/4j290sDubwx4Bi0m6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G06Bp5EY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G06Bp5EY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C2AC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748745593;
	bh=nmkkgIQB/7Y88dyteqaKqkHf33ewDJkdguBXNZUVybE=;
	h=To:Subject:From:Date:From;
	b=G06Bp5EYY/9G2cEKmrY6jIgK00oSLBSIXJVeilB5wzIHZGuahLuKFdjg1dluuY+l3
	 /sm3DRsnlh0NrwAwgi7gmgM6ODJ3w6Wns1Urf2cert3UlCDg1hbDo0nhCP010AerTP
	 7XXU062PkIufHYfcpq6aoXRQ3PgQho7dQe8pQSQziV7hYjVDqe+p7qmJn3tzSdIZ6d
	 lv1+tv+HLz7tqlmqyqkl1PRIFbF/M2mor2AKG9ztX2SZGouw3YCfXPi1+d1bWY1C4i
	 8VVvGW+ctyDwi/1ZzwG0B+P6kI4q04Z50jAt3ZLbydEogtmoZHnm11s2S9qtBuNRI5
	 WDVmdVTrmmkrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A177EC5AE59
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174874559362.1148.12959796907975266152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84c6f1efe53fcebdd5772d68fdb243c5bd04d304992f8f193a8311b685e977ec
Date: Sun, 01 Jun 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748745593
