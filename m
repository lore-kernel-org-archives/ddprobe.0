Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E1C23BCEF
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757528994; cv=none; b=oc40noWboPWMGvnZ0FZhEsof+Koh6WgIMcNFPNy9XQC3KPMUVY2phzASI6br8W2PdjnTM6cihQM1tPAXifkhKLVc0P3kaKKu1v21P8jp6nxpZzaibLo3j2CrSD/BaiBEft/kj8aWWuL+8Lbiqp4v0MNlNfVks9+yuasvkoW8WsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757528994; c=relaxed/simple;
	bh=hs91d0sA1D06Ka+Q8lwqJAQMjeh3jYJYmlUmnrFfNok=;
	h=To:Subject:From:Message-Id:Date; b=myfn60agqcMU0W2fNrPgfWGyyNpmtgvHvlVJ1ITDrWnNaYqAWRzwlPTsNZLH9D1CGljIw0IlMHkhlheBiSCcPOiE+eejoXBXen09Ml/13wCHqVDwgSBVavMNmfxO832M2TTdvFN9CK76drIX9cF/oIB3fzBoh/Ll8jSVvouxSy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E8K6h48/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E8K6h48/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A987C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757528993;
	bh=hs91d0sA1D06Ka+Q8lwqJAQMjeh3jYJYmlUmnrFfNok=;
	h=To:Subject:From:Date:From;
	b=E8K6h48/hKRjPiUu/kb3cuRkBriGDRCvOWc0FYC8BUXLrC6vXBdKzQ9pFjqdu1bPh
	 Pddh8MH0l+DhzKB7zu/eFfcEwR7YHcv5ibMmKw7VEHOnpfWaDLak/93vfMNotMCTYH
	 mghTvXa09L1JgYCoEiWCTWd6zKJ+GsfD2qHwyAZiRGKdIzbWeSQzNwXA2ZZHGplU0w
	 Vv1eLOmtOCMYx/SyIC5SX+dnLH4hh/ouAbLkg0UXqsE9XR0GUu2iet67gV7WcX4RMB
	 NZe/JUGJ1eEe8zx6nnISmPen9NBcT22gs/H4cKKc6qE6Mc08xk2W5X0ZREZI6gX08d
	 iMlHUaH1kkOXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F851CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175752899358.14425.1010496903135165335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf2a3be9a32ef82b52cc6c2664a0b5b6be2393aa5ea11505485d6944d4728047
Date: Wed, 10 Sep 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757528993
