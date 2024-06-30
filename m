Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FFD6433BE
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 21:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719783863; cv=none; b=WBHwGonZ724tUYiaKbsqLJdV8YmPOKr/aTBcSFOPyTA85rGOta7r9HRaxmw7Zru+MatlDzHyMJ5e4P2xJOBnbhnJ69eh5VCmVHDF7XjNGK4n31M9I75WCdLzUhqZ30Mtmtx1AQE7RhAMVMAhKKr2YL7pmzJsVYYjiXYlxxee9G4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719783863; c=relaxed/simple;
	bh=1R1KlAqDeAdQRcTLHIIYYDw7SL4KLXO09aAvq2aOIUE=;
	h=To:Subject:From:Message-Id:Date; b=AsOXanMK3X+AKFqB2lDnOcmU4I5t52cX28+ccCsuF8fh14qyZy8ddA+cq/coiGvmVA5OM3udJzyUaOKnuSezQiCc21HLFn4o2Q1SKynNU3yKQ3peqoNZiqEmbxmTC0rXTGjHXClCA3vuF6rf4iiYksUenmzUr8jY/oHiWQqaf3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DG4fErEE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DG4fErEE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D055AC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 21:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719783862;
	bh=1R1KlAqDeAdQRcTLHIIYYDw7SL4KLXO09aAvq2aOIUE=;
	h=To:Subject:From:Date:From;
	b=DG4fErEELxbognBLYd/z36P8dG6XYMhvxZUZ0M6Gythgsy2EmOlkkYZkdAqSVUoD1
	 NN3vLffY3fGVeoEem2x0rW7YKHoJ5/HH7dnGawV5I8Cy6SXJo9iC0uS1bG0DFO5KgS
	 V3QKJFdDBMdz/9DBv6wtUA6l+v09cuhoM+rTPuSRgHBFrXGNgT8FzMqO0oOZuLWDdP
	 RdPpH4qaZfg+/0PMvGopyK8Fjyo0InYePe+rCKn8JdDy50P9jj99COvb2PcHC+jsb0
	 4+FQFOyOLPgpfbwakfIIrO4D1jxMz0U3uys4a3olAA4Yus79r46eNnmwbyy2wssrz3
	 X3RTtzs4kTlmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB645C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 21:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171978386276.2213.8478563541403437951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 540839b7e102a7ecf252dd09a68944cb7a2940f941df5d9dff678139b49713c3
Date: Sun, 30 Jun 2024 21:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719783862
