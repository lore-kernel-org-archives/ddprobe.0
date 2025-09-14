Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A3C1D54D8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757891394; cv=none; b=XEQatOw3Hy06T3XzZIQzVempSXZempsWZzptvR6QEG6biawe3N08X4ySbZwurtRRWFvZpYkgxpSOszcl6nGlRjWuSNk9yC6x1sAHEEReaU8DJePSSUs+yp5YRkalzPWYuW2CJHE1bOZLgu7hlH4yQydjFggDedDVL7tn4trN5s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757891394; c=relaxed/simple;
	bh=Wk5M6/QyZVprXUp0AdX3L1CwsNQpa1VhlO+75DGnfiE=;
	h=To:Subject:From:Message-Id:Date; b=To4ATORcAABQqReg+KDiE1+Ot0ezNFnkL9BbG7VQPyaYcsruwoJvL+CW3GEwvCbgzVckMYgwq84JiVbuTdvDAxDvFdwmvIlhK1QoiT68Bp9hcpwIQrImcxhQmQYh2TV+5wg+eXxzm721OVIFXyBXofn5sp7/V/TCyV8aT8yJMgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mx4a1gDq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mx4a1gDq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5630C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757891393;
	bh=Wk5M6/QyZVprXUp0AdX3L1CwsNQpa1VhlO+75DGnfiE=;
	h=To:Subject:From:Date:From;
	b=Mx4a1gDqZgu6nEdbhHkNEDPO9hImH/l8K+OTBXIUdB9KW/zaF/AJ/ardeIIBODbeX
	 2RMEWxySHi4jOnFjD++PS0eTvrkwaxpCkuo0EJ2k1AFbhCiea02Q0Qv3rJVpyyMzIa
	 iAk6dtW0/L+6nRxUnxrRcoal16p+vBidxJm3L9mrpyHgM2tV6JepUAJ1Ru3FiQ6z44
	 WXqnAul9shVjkn4li9BQdvDHjWpcCjRmeVrf7axfrRscUryrKVh8fjfyhTtS3biMwd
	 eyfY+0lUPXqJIeq+dsMR7NFMhvdO/xSwasSCmS/TLJ12+uki0ftsBZo8o+vd8+oWxQ
	 xX3LRJw4OQ+1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92589CA0EE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175789139357.2378.6366549802161473111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e18763c7e572e5de93a729284b2527cd4af26efa0e1e6f861c020311d9dfd25e
Date: Sun, 14 Sep 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757891393
