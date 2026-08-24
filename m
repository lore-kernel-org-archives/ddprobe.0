Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EA90384CD8
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787596234; cv=none; b=MIWQZFnfLJujVpVqmQCb6f0c/03hqmvjrLuvbeFnCjnA55gQi/StPmoGu39TKIT2mqGaj55TlN3/t/NuDqdA2FILuWMGOwgDt9FYUrw6k/sEYud7VKwpy5IzvLFN7JjvJHy49SHrKVHd+3MBhI2w+TG9n99rGJTD+/uGMJm85zA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787596234; c=relaxed/simple;
	bh=dLOXtikDCyFR8yHbBi/bOUji6zWQINv9tKFpoC4TatY=;
	h=To:Subject:From:Message-Id:Date; b=aKxHweTN/3laol8ceEA+LQWMa7jGfpFKoBka9Xr3j/eFai20lAppOPPSkmTp2NZl+Wi8GJdNgwBpdEnXB4QlG2cbw60UiWZWw0OffqTaUCB//JcMm+0h6Z4t1Hgi8CWtXK0Q03dL7+kIyPfR+ZUCTuF5VmbiJc/ep3rF97g0uhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A00POIT1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A00POIT1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33F8C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787596233;
	bh=dLOXtikDCyFR8yHbBi/bOUji6zWQINv9tKFpoC4TatY=;
	h=To:Subject:From:Date:From;
	b=A00POIT1MbyEQJGGtw+ndd3/pOVwBltYOlFh1AR3olZuq1fxKR+xRBpZJrLMEmmkk
	 l1fkJ7fXISGN0muN8xxkzRZe4iTpToay+I8ZsrKDzMVf3sigblMUGpmXbyn4BcUe8D
	 wXtYLHtLvxPU1dZ/tn5gm/PbfjppSx9M1VM0GgEIrUgdt+6dGp59jLiXkwpVxVUYNe
	 GEAHeKfH0wN7Qu42Ud8wrIos7FWt9omKMBJ5tW3vlondm76TVN6weJCsOYicP2EGts
	 f7W5EzZ+xhu4S3TOTYc2eWkgRYjkHmelcLFM7rcH/7ZF9mzZ9BvHQlS4uGQDVDCBoA
	 RtNgAT/NlcGLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE92C5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178759623369.29284.12644432215119571509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e224650023b967ae14e12b1995eb336171f243e2f7d0bf7a1c32561fc5c3d845
Date: Mon, 24 Aug 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787596233
