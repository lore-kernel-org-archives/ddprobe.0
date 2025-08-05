Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E62194137
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754434194; cv=none; b=H/NODqKGaPv4G5oRnjxhqBAKHdNHl2kmID3iPdnoqG+A5drNYHMEhpZoJ8mGh/wJmHaQWpQcuKZKD6glxyAJFUWeEartY72SrLExX3GtiZBB+ZDG6OAi1qA9mLvaydVgNEXYqq2TMY2CPtaB/GDmX3geL3wMujxFLoOwF5Dn4vY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754434194; c=relaxed/simple;
	bh=rn17/b1U8mtz+FHKTXwNdDj+NC+Dd07MPV89VpZBUJ4=;
	h=To:Subject:From:Message-Id:Date; b=NjRaXhaNumvTmDaYl52TgldfHhNsr6J7cQohItvSy5YZSXu1gcquAF0V8pHs+aqcu0TrlbhcG/ArEhPds1iUipag/RHC0WNEhHQJByj0/y6VuvaZ2zn005jfAXUlPmNYWwaRRwNn/hmX4iGg/9/K7Lg9KOrA6JXjoBU9OVP+aXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IzL9EP+H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IzL9EP+H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87FFC4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754434193;
	bh=rn17/b1U8mtz+FHKTXwNdDj+NC+Dd07MPV89VpZBUJ4=;
	h=To:Subject:From:Date:From;
	b=IzL9EP+HEZLqLR6hc6WYDAqBxOcMB1TCFQnS45OJGyAV741h4PzUawDLU/R8eLlZs
	 ugPfWJIMENJXfCUehccOgONTTPcQFCUSFE63NKkkY0hv4tSGn3Q1a3FDWkJCQC74gk
	 zXStk2qb1eF18pp3k5bK2RpFmKESMAVQZZ+SDi0D9xwxdkENN5T3LwxOvvdWTxNGxz
	 rbl3QSOFCgoEHeuUj1nUo/14qnq/63oGAUMSGJ6BUJPTJ1WQchKT73nquNtUpaMKx0
	 DLcvKadEWMk7OHZiGITNF6pIsXJJ/YBek2ZAZg5NH5i3qnsgP3hHhvT0XvG1/ft3nt
	 7EgYNkxkD4yeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F47C87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175443419358.21435.8982213082803040157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 293dd97be7863cb56721ec24d05029be7fe3eee3caa0421a9509f7f2ea9c5a6c
Date: Tue, 05 Aug 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754434193
