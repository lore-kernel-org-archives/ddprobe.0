Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37ADE217F39
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729903554; cv=none; b=txnXNT1EgxtrXogrwXmyjL5hkvyYdvRYATHINthSohwWBpkGmZMwnc4FnziH5yOYzWa9Ue32YP5TUrFJR1X8TItu+l95eRt4D5kAp8SymLkHvoyOBfTqSekg6c6bIFejgiHMe1y6/qSqq2zLz330+6eimPdkXULdCb+dSozCB50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729903554; c=relaxed/simple;
	bh=0tnUplzS7NDbGXrzmcXvVghXxOrOHG8i/xhy/lhy5Ms=;
	h=To:Subject:From:Message-Id:Date; b=UDcSMZ0R4emR7DbpNqVohpQGSaYJzI2mVbHrF7bX6Wm4vhi+gUy0FsI6eBfzVUza1IkJhzBrrNuV/nyLVE78MkpgD6Ke3qzvi0vrfvpfJBkM31YpLMjUlmVlDIHf6DL/Qnilww4OlLMRq6mH73XcTMyzD2uIndE5FmyYsqqtViY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPw+y87f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPw+y87f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BF5C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729903553;
	bh=0tnUplzS7NDbGXrzmcXvVghXxOrOHG8i/xhy/lhy5Ms=;
	h=To:Subject:From:Date:From;
	b=NPw+y87fSOT5mhecpU0X437X6aHiTlRCCixt9y9Q5Z3Rypr2ZIiCfYkTlLDaJUC5v
	 L8oEyQxjdYzJELHoAd0Jx6RlgO9fx6WZDsTSug6Llo4bYdGlNJnTp7CmIDkaKMMYLm
	 x0oFYNhJOz6ykLEfaeN3zTvN0wcSHSN25EviYBiQwkdl8U29E4o76OcOWPojRcvybB
	 q906ipbtJXzeHsIxTeFuprPKieaRMp8aBjFt/gj9xjJH9+wjMo4qWGmDtRSYB1y9Lx
	 K1sOSyWRfpTrLOygySUtSKIrIy5W/+LZwTtX04BAyYycLaZQqa1FO1BBqI9UfE+K6C
	 NfkJhm9kXLxCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E24D149F8
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172990355360.27202.7961938728213009906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e6df43fa55e0615f8eba125fd64811bb059e0ff8ff19820d802004073d77048
Date: Sat, 26 Oct 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729903553
