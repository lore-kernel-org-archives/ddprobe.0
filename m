Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216EF2D7DC8
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761699594; cv=none; b=AcOj2XRfs9SSv7BXhWw8nRfRyj38jOCFmlVIsAkZophmKqY+LeBnvRbtifAJIXtBiGNKT8jWkWm6dEVv59GaRSDFso8OYBD/zzHkMjkvASuXU75dY7ZBV1j301OwjeDMj2M84zSCGhmJcFnk3j/xPu+tO7j/G1lGcJ2+xAuyuxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761699594; c=relaxed/simple;
	bh=j7gmVJMBtmJVJysfTGnAi67hcJjzH1a/U38akX36qzQ=;
	h=To:Subject:From:Message-Id:Date; b=d5QY323QlUV5VJIVF6Xv2as8UhWoJKBFnQ+oTO39FTe4JFt9bfziMH6sq3nL0kF1/lrPmfR/GrBVjbK0lWKWT6R29CU5haid8oGHgHPnSkXxIsW7v/rE+ZoRSqNLObbz0oZK7EWYD+r/mO1OgbV6genIfjnu8FHbVp0EayBJ82E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gsS8vJFY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gsS8vJFY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE776C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761699593;
	bh=j7gmVJMBtmJVJysfTGnAi67hcJjzH1a/U38akX36qzQ=;
	h=To:Subject:From:Date:From;
	b=gsS8vJFYTkYV1/TRokGJzgb2yR86hAxcuDfq/+fUgDa11N08MO/S1GzAMgAxWmy5z
	 FxXm++qWcmwKh1w5qj/Wbm87FnhUi53A0yJte8Aq3oAquh2S90uvzM/MQGBhfclGy9
	 avhXJ087Bd4UfOVCtSxeNjTHOPjTW3rR+Yxd6XSW+fo2vjxTgKSx9Ssu2eAwW6eXCV
	 mVBxI21l4MaJD3NTvP7MZ1sfEPGNNt+O1WnXXNGEjhkj6n6+/wZ2xdEVFpDNPcPtlQ
	 itqWrsxy3x/0HpzcOC+UczskyKyM81t0pRJcdGX8JdZGiN4jgUE/YM9RrREgJ2zTvF
	 y3oobvo0rWfsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CDF1CCD1BF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176169959360.20790.2220852226777817724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe3f95c148d66af13e695de9d9e302ac9dfb6e0bf6028567f56097bcb5796aaf
Date: Wed, 29 Oct 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761699593
