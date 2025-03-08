Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E52182CD
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 05:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741410535; cv=none; b=Pgugxi9XscicU0SNBVuGnKlFbM8vdHkDRJUEKMPfn7hDcHKHCzt80Z+p6zdjE7byZZ4cYkmKvDIr6Wh7VQeN3Ft/Y+OAZ+lzf3HMwZwqEsCg0i8vjt/LBbQdeC9qte4lIo2Rd8Sya+YYB1f+2x4gy4i0uEiM8I9uaBBEJfJvvtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741410535; c=relaxed/simple;
	bh=fFG2gC5dqetNzbGEv9lNAjACfLfrLNZn59C2pvRWf0E=;
	h=To:Subject:From:Message-Id:Date; b=fC688/Yep7k0NoJJwpVfI5kC41bHIgBC3IRLyRAnk/CCV7yWup3znqicnM26u1R8Qb1WMZUq3KWnvbK74sHqdedZh83DEahnjpfHA74jrUioPosTMU1e/0JXCrfENTovIoj9uL6brcQuup/VwNKUTjug2Ly30+/rPsBgFnLHbzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OM1WvPnz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OM1WvPnz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE0AC4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 05:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741410533;
	bh=fFG2gC5dqetNzbGEv9lNAjACfLfrLNZn59C2pvRWf0E=;
	h=To:Subject:From:Date:From;
	b=OM1WvPnzPJH/0rJviD4cYVgoUb+nYlx2fC8e7kqf2lbSfscj8DNE9ZA+2utWaPmwz
	 l5xvf3HFgjb+0rkBPd/e25JFRTut93YvgrxH6iAJSLj4gYR7Refs/YalnOBWBPaWwT
	 6eqDZTTfbL/2gSuCKq157D3qERqwIyK8BHHvaamPOtgP/Dfb+xIs326d0vuYqNJMW1
	 TJwlkUDDgpiw68jX4rjYiNImhxz+HmxD+yHZLZmW8BmC+31s68t6x/XWN9StdJEluE
	 V0YpMmJLL+xcLjikqAImqI0zEWYdXjzqvdq0/xp2EDH2K0sMaL+g+HX1pdvwxLTLIj
	 tlI1hEGOB5nyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B855C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 05:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174141053362.11349.5263432717787155503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87422e5b2fd9766cc211f6c6f84696189a590341c986d5764949c9e3af3ece1a
Date: Sat, 08 Mar 2025 05:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741410533
