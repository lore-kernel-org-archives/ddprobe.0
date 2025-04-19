Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3319B54782
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745053794; cv=none; b=QAqNR9iLAXYSNELxk64kV3DCiuD0BOa7r8vk307FueLxZrNLfcI7lFkYHkifzK6BhV92kA0xg76t3YR6XWBAJVtbogkJ8oKROS0VRcNwrGJaq60AuF+sl43oMgobaFZaQnYdQ/KWkvDhotPJ811wZl3cKx2J4UveHFC4hxO/0nY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745053794; c=relaxed/simple;
	bh=NDZOMWK6BxqgBJh4f5gD/MRC4JyyGDQMlr5nKUiTwjE=;
	h=To:Subject:From:Message-Id:Date; b=rIFIYVbMDdKWUNC6lKLMvkqazWgJAYrfQkE9SWWKBtiE2QahRJ9OUO0m/f7//BLRqm0cqSK0bmxh2zQLhbWBIK9NHLFt9SqfVDdTB7sHItRZmN6sFD+DsM9gP46jxUDiKWsW/G3SH8mdy+GH/rc1scMutH0t47Jr7i9EvozhXh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oIiotSKs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oIiotSKs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF275C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745053793;
	bh=NDZOMWK6BxqgBJh4f5gD/MRC4JyyGDQMlr5nKUiTwjE=;
	h=To:Subject:From:Date:From;
	b=oIiotSKs5O0uPUbtF8T96OV7rwAWWGVcOHLroogmOf5gWz79J9p9wZ3pOG8sTJkAw
	 ou9Ufl9RthpShZxx2OM9bqFfEJvtOIBgVAHV/Bq4671oP/fpOWv2DmsDRlXWQ74MIw
	 M9AuHqtUkFkAth3tNUnWM5DPNSAOHaeIcByWckvN5FeVczEqE7mOi82l8B2H8FfJ2d
	 Dn32qaV9igqXLOD/9tgxNBaJnX9tJiLnXwmCxk5bCVysYedL+SErT6ZBIMOihXyvmP
	 CInB+HJY6F90UWvt5pVp6gxqmOhdD0x0kQ3THd4RCayDuvXoT1zG9WinYBDw1U+ZVW
	 GacCVkSwdWajg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95414C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174505379358.13851.11284678968296490055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 137b9c218f8844a04f829fb304fee74560aa1853db96f18e4453eef827fefb0f
Date: Sat, 19 Apr 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745053793
