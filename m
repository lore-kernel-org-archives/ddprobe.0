Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312C41F9416
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 09:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740736134; cv=none; b=WY2jjka5AremVaYlX5CzJhpifKgxUJF3xAcXaXXjXQj0D3hrVZurdRO9yzwgQx4o3TNGw5r5szs+4YKvhD/q7fsJe74nUG9olEwbTHzuBWbeUBr7gfWobG7yJ0SMc9InQ6Vg6RQDAPR/B705YpMSWhMSAUjwAZ4RbCVdWwJJFtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740736134; c=relaxed/simple;
	bh=sQr82JEqNsDIhaV93M9h/rtnMamk+yiKsVmxqJZ/Yh0=;
	h=To:Subject:From:Message-Id:Date; b=dk/qnWdpQfN09AQ+r0BvUdqA1Dw7FhTUemhm2Of/Tuqs/YJImLw8/Kp67+nTon1d7Wm5b3QcLCox/TBo/agrLmwoXuAoOKJ1CMNKf+ZRjsE2GEUFHRmrerappH7V8WqRcfR2Rv8YA2ANKcv6NTp08Zi1oYUpiu+0JfXMSctD6oE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLDo7PnH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLDo7PnH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D8BC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 09:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740736133;
	bh=sQr82JEqNsDIhaV93M9h/rtnMamk+yiKsVmxqJZ/Yh0=;
	h=To:Subject:From:Date:From;
	b=fLDo7PnHWy21Ay4UwIyK2eOzshN/eN1apQR/EjerVIwWYYpvPc3+fc3bEEQ8AczBi
	 8PUp9Rfd9fw1+10bfOpCS3pDDqMQxSudA00B3sr6Pidg59aEnhQqCnREqJQbFuwAiQ
	 Z/yc6+h0aVqQH/kzx2ff3lgdicSkqz+L2dbBkmRvenppnlpVqH83iilXNMCdYVUCjl
	 qZY4vDUN9p5FDulKLt7225cFswe0vHzb+JPmW+SRDBPtqQlb4aq4n+qq8ndE8EQjlQ
	 cRu/0j8MV1VQVo0nFsbUZWpcPO/++BuTTv5//BQLe0SkB3rfK2D04/wjZKFJzUQGZ3
	 HbxFGfEQsYA2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FE6C282CD
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 09:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174073613359.8996.9425917496211879387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0c8f9dbeb7b673164e1aa9ce5c4581d3f1b4307c2c32306ac2f5179e6fb9f92
Date: Fri, 28 Feb 2025 09:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740736133
