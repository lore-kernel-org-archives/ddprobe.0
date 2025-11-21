Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDDB2D6624
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 20:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763757114; cv=none; b=HZ15KPULcjtUcXGpS8CreeKhGLyMSuWruULcE6p4gnFn8xpg9ymp05SBvtXEJtiYrdZ/B8TrAO/OqKL7tnx0PUolG4edoQ05DYiST0OOb2FtnXSWtYCb/NuIwZxAVot2b4QCctZID39C2bI6o5xP1eWPV15JYdh/XYmTqifX/Lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763757114; c=relaxed/simple;
	bh=gg+dFJoS9s7iBidHKOWTbqZpN7M8Cyj8DxgZLoZ8cL0=;
	h=To:Subject:From:Message-Id:Date; b=DLYfZubyQ9tUKTvXZM3C/9dDOL4bwkeRJHQL7vI5HackGhWCjwIitIGxhSrKw5Se8IpxbuVhfhk9uqqQRPkN44wGAhCXJ2c2LwU1/eA8dCCG0lOKgWfdf3D9i1XFnmQUJGWrVsyTGeI2b/9zq3IkVwNEt6xHcC5XG5pF02/rre4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qCtR1J3/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qCtR1J3/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E43C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 20:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763757113;
	bh=gg+dFJoS9s7iBidHKOWTbqZpN7M8Cyj8DxgZLoZ8cL0=;
	h=To:Subject:From:Date:From;
	b=qCtR1J3/aaYLod5s12yLmwUsXuoeiUxOaRnMJTjGWjwbz9uh8MukrWirmXos5OBT4
	 eWXXq5xhONgJvYxpyOCzn64H2MvLE0pBJivIJaOwKQ3+Y/YfRws5ZEH7w7nCEc9f7u
	 gCQnq4YkdhgBdpeSv6ShfNQF7MuD76Kg2mv7t4Z8kWLlkjHg1rd2uZbNrwPxW8Cd8I
	 p1UhTi0OCm2yn7O3L0g6uLnoyyi3AMKq3SZdrkuB22gGP6T2gSgLAZ7AO0FIJv9Yv1
	 pvl/1/3doCVym9KNL7asMCa5QGzwDxL6eraHeih7cRJ5yuNtNUZWDYvj+N0YhN36M0
	 W/BSW1w/RreTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C2FCFC502
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 20:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176375711359.21945.8707893291535458922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37ae4c76aac8c68891c44a84cef984cff75208b166a53a06c24878788b8a62c4
Date: Fri, 21 Nov 2025 20:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763757113
