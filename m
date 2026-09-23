Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0E7421229
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790191234; cv=none; b=SwjtpA8/MZZiC2KBn0v16qrnwkdxbyNb7aFN85yTvKjBASltzISItTJhmGeMAE5I25X4MGHx44O+cBw74pzjw32T1q+B0Wxb8Vs5Oi5VMl/YDRetZnLf6LDiCKUzHZPzP3zmJKTqAguZBuw+vHh+wLsnzqBCMRcaOBH9rph9vPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790191234; c=relaxed/simple;
	bh=BksIXkgeKVHUcifqnyF/kLoU9Oo87HDFQS1MstQGgvs=;
	h=To:Subject:From:Message-Id:Date; b=GTSb8Id6QLZb96tJ8JvK0d5kdTU7X87pH1g/YvVBii2fHhLLPoZjXLXFPRzUm3nyKPwwN0AITk5Dwps1chlKrjtpPFgtasPV6gNq29RHt+KKcIC5nZYP7sxpbWrAqLh3qIPgeIM4qqNQia9KTSWDXuwt0egr/UsEP/t1KwhXOx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SX5z1rtQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SX5z1rtQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEDF6C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790191233;
	bh=BksIXkgeKVHUcifqnyF/kLoU9Oo87HDFQS1MstQGgvs=;
	h=To:Subject:From:Date:From;
	b=SX5z1rtQa3/aDgkkybygijkeRWGRnfZIShZBG4KXBAJlD5AJfKKFcyD3QAL9u0EpM
	 lmfS0eCUe1rbJlnl+DJMQ6/ETFiH5839enWd52zEHivanxDkYmsnH9wLSjw1lyNZdG
	 OEoH9deAd3g1QUVs0v6/SEW+SjC4ad4lkoBoYiDY4zwcTXYcvwhedLehpLHutSDbEb
	 5bO7udzYPGC+PXYjNBTDu7LSoZZXASxOPLt4d2Vwc6dXH0nkgUFUySRw2wD+rU8i+g
	 GkhT+yBuz1WSXXyhu3kSP0qNPDuAeXh03v3Uv/5LJdVwzVvGr0avyhzoh+rOqAh5uQ
	 2nU3dcZGWaLIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B607DC98304
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179019123373.23592.10864914992867750627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34699838f5177c8c082d51d9ff07bf9bde45d2598857c7d1a3b1477d3ee7652c
Date: Wed, 23 Sep 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790191233
