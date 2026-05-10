Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2710E4A32
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 15:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778428234; cv=none; b=Ufuv6MwU3G2YLCc7EKSc5YdBpV6RoBVO+hgnR6HYR43Qp+a6WUST3Y2C/bWgnWEb/Kh3vr/WrgCJVst6oEMUViss1gCfec9mM4jMpAHVb2fCzzkjiOo5x+vOs7yG6BXmmM3dfoE2qVnnGNy2hurGyit3DDuXrDSclFMXiZn6f+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778428234; c=relaxed/simple;
	bh=cbFmZJ+EhGmPMuaWB6e9ugFe/wFGg5HVd3huDzaTo+w=;
	h=To:Subject:From:Message-Id:Date; b=enPL8Nsa0aLg277CLzZOYL7tpX/Pp0/B87sfS+ACOF/1GzOaL1f07bakW1496hFGGG0ibPEJYH/RJrbHq5ZEgY+6hpOA39/1NYlBNWkBMLmZrwX3K/QLbcXqKm4JKgJy4TlHn2j+cQz24Dck39obEOgFFXgudkDmtAsghLXMQWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bPzAHy/F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bPzAHy/F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F62C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778428233;
	bh=cbFmZJ+EhGmPMuaWB6e9ugFe/wFGg5HVd3huDzaTo+w=;
	h=To:Subject:From:Date:From;
	b=bPzAHy/FvhCFKMz9oan3+dG7+jUt31tJeslbXnNFrgD/1Dw/o6wtLO6hhZr9cpKYk
	 mKUEMe4R+mFdVxiPMeTa8ByojzzG0SC0CNWKtpo2D0C7GwiP2OdUiz1vcVlxdXiXhs
	 7ahAlmh/JXn86CUctC9yBqiULDtvA4Hh4xZtj8a6a1CjA8QBrbXybWmoV1Sd0t/Zs1
	 mIEnB96ej7VtDk+KjcVMfPtf7lnAIO4uM0wNtuiIa/kAcZ6wwcrCrQbna4cy53nVDy
	 vVfkg2j551QCjVa76pJZKZZF36oWWFwqfSeo3At/+iiimyobjeTaDJK6/Hp7Tb/a15
	 UKXDMxAA1COfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0618CD3447
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177842823368.30936.8374837052787885453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faa44734a1a0c9171c954a2498c9a5235c96c0759fe75d634ee6580e628f9db0
Date: Sun, 10 May 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778428233
