Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D6F43165
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724360154; cv=none; b=ml+wSmYlu+Yu42K9+dUQDeOiq59fPI2SAncNNznLCm7SDUWQF453S+eH87SSYikhPRP4FyQHJUoum+/qte/ONTtMth8iWNzd+/uFYHMDOHIfz8ZU50J7UYGPgnZFLj9OHYEKyR06bHm39QxIybcaK4GMWEx8AckHaxNE8RToiMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724360154; c=relaxed/simple;
	bh=8eFvtsheeeb31lhnRwTxO4nJBla+g9BoIctN6Yj+lQg=;
	h=To:Subject:From:Message-Id:Date; b=YVGfzigsqll1axffhL9kBP9egXFkTh8+J+XZaYAKVjtn82DwAYYem12cyszE3cgX802/Dz9357bVNfWdF8EKieNwYGU+5Kd7tqPSzoYvBrlmC2CWyj9UVtXLNS9u8toh3Ry9W680abH2Mlnxc/lHF+pF/nqeLYgdd3hiHi5f3I8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MDifGIw/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MDifGIw/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37F7C32782
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724360153;
	bh=8eFvtsheeeb31lhnRwTxO4nJBla+g9BoIctN6Yj+lQg=;
	h=To:Subject:From:Date:From;
	b=MDifGIw/RZH5PM88ASNeMiQYJ5PQdYm2AgY39XfOgd0XiFMCZisw1dD/VF4MuyPbT
	 +GgK4+TkbaxqE4reF7ELEb0J9Y0Bmuyn/omJvTXnZaZAglkf8ccheL2wibrQoauJ14
	 4pc0SDXRLsqIzQZPg2gbHOj7hFpG6Hy8MfpGlFoNqHEe0mnXdQw1XoVJ2szEOrBQeD
	 sZZw3xYrFQpJ9cWQp2W0KpJj/JanfpdtzMgEus1pyu1D3P+0XQpriIubdHQHGy/ntd
	 6av0mDOQfuUWRLM3yJbturGVCkrUBDtPzouUdb4VBrEwK1fjDNJaVsyTZrMOCglxM2
	 VaZVZ72cmVXiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94308C3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172436015359.17768.8913862042607789241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5654dced564f53b676af9563a922bc63d03277b2c6c0f4145eaefccd80c6d7fa
Date: Thu, 22 Aug 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724360153
