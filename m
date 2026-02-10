Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F602DF3EA
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 02:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770691434; cv=none; b=gw3GN7oCLwawLQO9fEmfNqkyVqXpAQ0iPZw2QC0TeQb4kJmq5H7lK9hjHHv6/5eJard2t14dvJEAxIKKTGG6jPvsklHe+1kyjbXVKfWjxmK1rh1LQgdn8s44HzKMJLVXfqqvyrCybYXNWyiZJP7AFvmtIDSpmSqLuzWG1ga44PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770691434; c=relaxed/simple;
	bh=hlQF4iVNy8r/Ag2u1sT8NswWbV0GAAnr/DGUnMLR0mM=;
	h=To:Subject:From:Message-Id:Date; b=lpIma91dh7PBXmAOgMi5J8CZygC7CyGa3IYRNkfo9MNiYLoefyHYBX0C2WOCrZihlpipJGUXs8yPal7Uf0c7FJDO7uL1nnw+f7A1fhxRgA7yr5ZjeY3f5f7Tap39e+kTH9Lr6aM9da1US8mnjE6/Gs5Z2I4K+WaxrzUdnf4BpXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZeny59+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZeny59+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 17B37C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 02:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770691434;
	bh=hlQF4iVNy8r/Ag2u1sT8NswWbV0GAAnr/DGUnMLR0mM=;
	h=To:Subject:From:Date:From;
	b=HZeny59+HFqYZBDqHoHMDESZjN4NvXSZ763g/prT4Ut8Aw+23k9NYY4XFK575bDvc
	 o7kD8FYC4uo586NCCiG9yLq7eGexh/me5zk1EWf/3RpO8QU61p2ey0Hv4YqeWj9xP3
	 +vc24LDJelxHkbJjZLDnNEww6aE/hRyP6IsgrEeyo4wIptBuqYl7bjP/q1KU+46kzX
	 hSwpugvWZwrTiZla64ijB1QbfcIsQhXnPp98fOfUcR63do+SOVH/P7iyQeRJ1tpCSD
	 4cfBAQm64XH1VtH2Za+gDWSMekcmbUf+GgPZJNb/T/YlJdU8UHVQjRs1i9cuOt+GJX
	 LFXJR+sQBA4gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9526E94629
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177069143381.29421.14143405105009424708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 119885364e650213b6d503a2e4ea7509ac4653c0ad92a64e4f8531ffb12b2283
Date: Tue, 10 Feb 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770691433
