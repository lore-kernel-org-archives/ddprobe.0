Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C71122F11
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 04:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714710743; cv=none; b=qqkQph1KFF5yTLOE2hKlKz96GUUK4EGYwUYE0ENsqHkrtAqhuUEHSSfkIc8oYAH2uwktrVt5Omk9H998EttxNwf3UQir8rmrIAMta2jkglPqgvYprkUPaSGMIwRU3IMDDiGwS4aVamPZG392iVMrnT3JZx8pV1oudkdLkFw1UAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714710743; c=relaxed/simple;
	bh=0HQBV0tcR7pd5atqYED8jX1lbY4/RSkki33YKlo8x58=;
	h=To:Subject:From:Message-Id:Date; b=QTa9J1mTVhWnlxwG6CJ4TwyAtyQL1DM/Fw/xfrZHG52GfNw3YSZi91y5zl4dFHB5m1V8HRi6QZq9or+7oXvL+aEgRVC1W696mkSuYTueLm9VfDdHK1Ud6ISnZdoNVWI8aubU15GV15nB4wCwtLTZySDIK5te2n7ifQJJ5B9qYoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L9jOPVsX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L9jOPVsX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E096EC116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 04:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714710742;
	bh=0HQBV0tcR7pd5atqYED8jX1lbY4/RSkki33YKlo8x58=;
	h=To:Subject:From:Date:From;
	b=L9jOPVsX9GtapTIJy5XuLgkrBmAYk1om8wyYba5HudYOWeU2LmvEz0s9+BavtbGvv
	 uFmXORb1l0tNvTvNIaXvpONGg9o4tpLAPbTQfa/3hfcqR6A7gwD3hkqYIOZ/rLR4Hd
	 NFuSJbV+D5iLk6Hne6P7bgcWJZvKPoapNv1MPDvzdBJBUS/Sl+BEggIn3wY+vdmLzX
	 GHSPfxKUViH0t3XpiuLHTxy6AyRwWSLnDhZMjKepvbTaeUouaAZIUH/GN88mC1rzbX
	 fkbFbACPWGrt6ADfQHrQsIPf3gYhRffjfPSJbuCDxgZOfcmhJivudKnvyVXUIUSAgS
	 5PFLPaYb1rHnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5FF6C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 04:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171471074278.31223.8915289965931477988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32e0e6f723e25227cc1f2f4bd2a0423a2a8fc916bce0954404eafd7f8ba49a1a
Date: Fri, 03 May 2024 04:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714710742
