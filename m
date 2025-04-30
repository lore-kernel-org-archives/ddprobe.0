Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0851EC01B
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745998194; cv=none; b=T3MNd+EmzF31ngW6HDVe64eqQS7x+eKC86ahIQzG5//vjG8d0RoRDYXjzr6mwBOHPRkH2lr7RL+FkiAgEzWKZVx2a8g2Mgf/a8/29SV/apwfMY7BrOfjv74XeWkESSxAu4zv9DhxhO3G3WzTQ8EQNOBaqMiNUyVdEhjsEgq8UzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745998194; c=relaxed/simple;
	bh=+V7uUFVg4cpff68NJ/EiS2/b2Jw9rHQJkiTSJg/gdck=;
	h=To:Subject:From:Message-Id:Date; b=JafYkaZRtQMzrm1Xsb6zSaWkFEP5B8TEN1/UktK/s34XAX8+fEpUbX5AF+CuZZMbZ52jQR01Mb5hXMQvenhCLwxzfzqrWqc6ZKQ4e69j5bXOMXNYXCtkJkX9oJgofitP/EskbSly9H/RzzDHtCtfh8tSgMcwrid9Am1SlNpLVE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jsmvfeBm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jsmvfeBm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8CAC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745998193;
	bh=+V7uUFVg4cpff68NJ/EiS2/b2Jw9rHQJkiTSJg/gdck=;
	h=To:Subject:From:Date:From;
	b=jsmvfeBmmco77NGOTtdKUHu/IeWXzuSLFXs7mrwLnRcXgAJ2X8uUQd3u4FHMdIBnS
	 veSphNeD4HjmtPyPDKnrTmarIE7GdZOC9NlU97d2Y5xIjmVOokOQGUASqH1wfrjV9J
	 6pW3JTs4bmPn71RvXKbgCfIcULxT7Oi2fSqbqrUHGnatGvd0qCmkvR+gh8FRtcRS9y
	 JYoH6Ek4x2WYs4UoJ6HcRpGipMScwbK+Rf/sIjiSQFln+4fF736YnGPsWFU85J7p2v
	 mkdZ3Uu82Z2qbN1/i7D5TjL6JhoUPpp5SBXYYLw/a47n9+GuAt8LrEyMswMxnX+nuV
	 OU4OXMmpNxUeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F37AC369DC
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174599819357.22631.8042813447663572910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bc5fa0e656a14523cedd1233e01f3d67ea559e3721ba8309767216b1a35e588
Date: Wed, 30 Apr 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745998193
