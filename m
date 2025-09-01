Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C991ACEAF
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756745994; cv=none; b=irJ8m95rrNA5kGxdALOz9DgvYKSh/goMUxFzFu/zTgT+ClqFmQHNIDkvOo7LZ3hllz6TZ+cpkDEFT6HB4QaLfJ4TKvdAjXSRabGkAiY0GXY/th4/BCqxOpKIdazVSfFv5imALERTXl09vfbj21Wh5hMkkIdYlTZygQ2dJ6OiecQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756745994; c=relaxed/simple;
	bh=+G3FIliBfjhfpdgL+c/gX2+RohZZyh7S7an3rWh2bG8=;
	h=To:Subject:From:Message-Id:Date; b=RgO3dEokjUoy1Y12PwBVZaYrxWzOEpm1aDBTskYNGr1RanxgDkDSqJHoHr0h6M6UMNraX1+If4dPt7nP1jnWg3pmWy7eYcXDSV+JiPbArsvE2CoNehy46PzEuOarSLjNoYbyFgeARyARs+wtW5nY4jTrWxWKhYBCgSq83xnQYUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mIFx2+0W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mIFx2+0W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E06C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756745993;
	bh=+G3FIliBfjhfpdgL+c/gX2+RohZZyh7S7an3rWh2bG8=;
	h=To:Subject:From:Date:From;
	b=mIFx2+0WSayhLB9zglQheHxkZ1LlUexcwzPmkS7nLLJ/tQ1BV5WBd2tvuuUa9SkE1
	 JjBkRA4hnvyxTz2nhr5fs95dsbT7IlX4uczGV3qWV/lsciTd81UucqbFgP1T41UBWO
	 KW9WPzVeRwMFJzz3k4BqCB/FtuLB17OehTg6qpE75/kI/QfksZTCjmI0VYGcGlWUgX
	 CvzDiPayJz5VhFlI83UFRDcwWlWBb+ZgzIx59CGjspnTCLyZrOx4Kio9XqZ1uMj05j
	 jRF72Gf5yYWCkyTp0Xu5eIMPbGWzwY0USUAjzcuYWj0G6ch621k1JzQC+XiNBNXnBH
	 3oVv8wNpgIzeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F79FCA0FFF
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175674599357.23538.8180604556952843738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52d35170bd614e4256e5957a0c2005d5dc256c2d3e4864ebc42898609870359d
Date: Mon, 01 Sep 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756745993
