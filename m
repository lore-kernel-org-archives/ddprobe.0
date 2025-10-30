Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07CF932C305
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761815394; cv=none; b=mTbTV5gIN/GRjp64cUR1Mq5xEBezTbBjnvP74mR24AuYA1NCPRl55AvTGPsSSxpz5A/urVX1DvmGXlTHzbjhY/7lWpbwkXrLq7EiZkZeJQk/dmFbIABhiavxv601XDQzAd7MaGsExRXMabokkev4tMMkpe+QQcXGx3Vv3nCIFUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761815394; c=relaxed/simple;
	bh=8rkkqWs5BJ2uEGN7CQ4keWsvq/rWYkDodJqinjn+myw=;
	h=To:Subject:From:Message-Id:Date; b=SlQsIIbN4ZXl4dyaZ80/hXD8+O62bFqC6l89wN5yzU8UsNzPkGjoMkDRI13raAySIRdLM7ZYwN5uU2UeVxnY6OLif/pSAzR5U+X+JHEBs6LZFamYK8Buv/erBflSz/TwoWkcnlEinZd0WUUoyCk7Gor/4P289wxpzotIb1C4Kbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6Ow+P5v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6Ow+P5v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2493C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761815393;
	bh=8rkkqWs5BJ2uEGN7CQ4keWsvq/rWYkDodJqinjn+myw=;
	h=To:Subject:From:Date:From;
	b=p6Ow+P5v4Gf7wEDjfj42zAnprmlO2EDcJ+EJfxfMhwZrSJbK+0vlKdI5oMrypDK8t
	 DwbIPOtVvxAapTb2fyt0Dfu7FyLWcLORmj+D47Cnxd+ywD3/4DBrOiYMvBA2QENn+m
	 Wf4wb32R2X1K0G7bA+tHRZxyP4AXu0/RIffLAC28B3ue2wSNlJSa2bX+zyhq4GXaHy
	 V8LJKE3INRF83QHideH2l8bbjsUZ2SUacoaetKmMFJk4ycu9XgZzpmZLNEmeAewLAc
	 w2/tfTh6c9fEcRAMJ/a51f34DDV6GQWjhOiPgydrJopGjYkXqVPuvLwBLxib97UWHe
	 5xNE3oCb3bdsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEDBCCF9F5
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176181539358.1434.4107215144191221875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15bbd9de0599ba3d2344e18efa7137c404f955440ccd03d775530dcd27bcf7f5
Date: Thu, 30 Oct 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761815393
