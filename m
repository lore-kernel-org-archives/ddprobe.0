Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC0D21C19E
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756234795; cv=none; b=Hq0cJ8axcEaypXaks9+Ss91JMaOnpCFtBtaqDVVMYmrvxrJSfhC9qkeS0lin+j7gqBP4S8h4+lEU8nVd+qQb95Xn3OYdgeNSCQ2mF6crlsufetLZp9Gi5CXCaox403k/ax/oeCu4xvxjIpaFnvB/j6WiNF/3FPGz41itIZC7c44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756234795; c=relaxed/simple;
	bh=ARg73gvZbd3IQMReDKoFULrXUZOPLIlyKw4IIEl3Chw=;
	h=To:Subject:From:Message-Id:Date; b=Pd+5DR4XF4pTiLKBBr6PMDfKKKRJjYafncR3wx5lTR7u93Y8kbVwdid+ZqPtYIQZ1QKm/crzUXdd/C4sSDXaw6iPjUs36d8x5HOlF+tk2441/rHfT90rRmJRJ5ctqs7wFphdb+ldjESWnuzk2KsEWMd8Ql6jhoXohMYG45Gfy7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C5euJAI2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C5euJAI2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E53C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756234793;
	bh=ARg73gvZbd3IQMReDKoFULrXUZOPLIlyKw4IIEl3Chw=;
	h=To:Subject:From:Date:From;
	b=C5euJAI25SUqz5vpxTPDYvhIRtl0mTMHNV9gUdjYBTsDR9BLoyIdkfjKEkJTkDhUo
	 1E/YgqBLSqN3ruw6wX5yujDw+nGTFqBU3S6eqJG79PnMfO+YDK5egQLf5OKIhij7yr
	 LWlUsn4VX4sTbtYg1RcgWmi+vEbauttQNhZ8zO9cZh6Y7DM7zYHOhFeu7Szk6TmBnn
	 VXB+CR9yBMjB88VcQn/7WrUnjBGpV4NwTk3IyRHk7o91E86v8BseqQuEX/KO3tLPm8
	 mIGQZZlNT5V4fw97DkiI66szvg3Ezee1GPcM/KiprDEn39UmjjB3WtuNIhDBzyneNx
	 p6JM923nBB7Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6B0CA0FED
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175623479357.18859.14100175906555289382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b2cc293f86964cdacabf8c2fd9c2cb68d00c495995556983c4cc2eb1dc6076c
Date: Tue, 26 Aug 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756234793
