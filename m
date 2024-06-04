Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A544149E03
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 17:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717522583; cv=none; b=RPUmk3oSR734G1DiHoEdPxE8mq3263c/jkORC1uLhYqBJVahgjxCEqmz8qwWl58992g0jrjyi5yWHlxCukeHWXDHpSQMvCivvAe8t3mMd9PG05mb69JJB04HbSaH46LT0KXqj+VvrgHA8p4GcNpUSajmgFqkAxjccgfsg0x23rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717522583; c=relaxed/simple;
	bh=2OeoexNkLB/XdfWR07gcTFms1afgvjKbXhqiHEpEuJY=;
	h=To:Subject:From:Message-Id:Date; b=VEcwLJ06BOyEr64ibz3wNsGaWnvEbaGR/4GutuaigyrOX5DnRNqYBlyMNtgROfj7QP/zoHPlSj9A0tLUTiHJ6LJ9lL0Zt+YNVjumJnxUTxgfmaYLTdWBevNlrHKv1KGgT+++lKsW1A4M6eJ33CrAleDoJxCn8b/o+iqtWAhjrEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXGSQ1Z8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WXGSQ1Z8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA551C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 17:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717522582;
	bh=2OeoexNkLB/XdfWR07gcTFms1afgvjKbXhqiHEpEuJY=;
	h=To:Subject:From:Date:From;
	b=WXGSQ1Z8sBGXgBzssjR5+g71TA0jQDnyRztiGKU/eSqGlsjWUGIhyegsOpPe1Wfci
	 FYO+2vGgmOOtwekAMjFHleL5YxRlidngmMi2FRtrXHv4h8XPN5pBqzNmZC0rP6BZNA
	 J5yv/4nJ9ThNIgkNRaX0RQbI7By11AScUm8fh6niQkqKi5a/yqJ1oVs1iZgqs8Sy6L
	 ZtwL4E2xMfISXBwGVR8OE1R9rsOy9wATHogGidSvzF0b6Rew2jPly/yXc09NOwHsCA
	 K54uZ6HqLetNEQxhfhrr9L22P+Ajx1QvaEda77N2nwgfFOFMpgu9PydlIzavVju4oY
	 IM93CMnG2j1dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4601C27C52
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 17:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171752258285.1938.9517204802505603246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f8784094d7c33691f980c7e58669051f3df981301c1abdad2ddd1b2a5abbdd0
Date: Tue, 04 Jun 2024 17:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717522582
