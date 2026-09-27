Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362F137F33E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790521834; cv=none; b=e/jUmYACDts+2K/4hGnieAhUsMEClj3umxBBX9p3YRuBjVmW6iNbBrXjeWesakbq/8auR6Tuwdt5C8fd2Uj+wIsRARt7pPK4EEs2i+z8+qtEQuos5G4P0uohyVlvjr4w7OQJ/wDYpVsYF4IjI2TY3IukVKxwc686zK9p9dbS3Y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790521834; c=relaxed/simple;
	bh=awoKV7uCYV2MCnuKDzb4Tkdux715QGFn49EXcjxpFzs=;
	h=To:Subject:From:Message-Id:Date; b=OCq1C3yHqIMwYucousoiWaAUeguEMUIAWtAQp74AC7q4YGM7ODzT732qx2j7My6dODZxz2zk6XjT5dwsXyViedoU4UTS62nPMSjaUBwyFVgsZ7uY0WSNNoQMCndCNex/G02axQi36nyMajjjMMG6blk7pEpqupqXDDLbeoIkMwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nfUFq7wz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nfUFq7wz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F0CC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790521833;
	bh=awoKV7uCYV2MCnuKDzb4Tkdux715QGFn49EXcjxpFzs=;
	h=To:Subject:From:Date:From;
	b=nfUFq7wz8A26xjAzKeGiKJRpfDZcTE4pjY+SrXoMU/HnjJC1D35GrdivqDY/kwGJO
	 2T4ED8uQXxJrYExXijH9ovylcrq/jBDjMU3J2nwbnbleuxlXE9rVEqT6U9yU3HpWtT
	 kO5zQE2ccqYnKVKNbWcBdKFV1G2ySvE0CKZJ4I7Cr22WX7HOIYcIiSdmFRMhDga74G
	 zJ7jEj8GIwHlBobjLKwri22CAXm9ijmGzS0JXeJRFgoi7Eyl7MC7Au5NjeYUYr+MyS
	 k01gpzrqx/zl9XJj8jGU3JJessmfahAlef+wBqXPIYBZxw5XCkTe5i9qfuMZkcgsks
	 JC+nC0CDQ8gLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE495C98332
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179052183369.30868.12026397279826714294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb17cd7a7d1c23c89a35d190563bd0ca0eb317538d6270e6729b1eec15ffc2cc
Date: Sun, 27 Sep 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790521833
