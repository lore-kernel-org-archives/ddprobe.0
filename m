Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 144B31DE4E0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760937594; cv=none; b=QNnwLhhVeZG4KU9Pu5OEqlxaeRkb2Zsp2gITyg/n5pUtjWT8z+FJHtLqIKeWeVNcWTIW5b77pfWQRL9bg3tbiglQc2GhTIueWHHt7/lQZTHPFSDHZ6b2Lqsixx4DJZ/I+hLZyTI3kXghCagJ6eZmKQkdvD5hbDk1mA2FqGyr+10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760937594; c=relaxed/simple;
	bh=l1BiT/YJl3jJydrLkhGY79uQm5UpHqQk2s33DJcNSoU=;
	h=To:Subject:From:Message-Id:Date; b=rM5Iyp0UdH/sTXfy2aH0BVzl7IW5XdgGXdYm+RZLpjqhZqkFK5CbfYmRaIf/l03y/HU1JKNujKTlW8ONsgVpOp1R6B/VrxpONPCB90krFWgCwfSqWEQBIMhEXhzFHetAsqeRVyY9nYYtK8SZMuEgrLCMKiooUFqAWpyMfytE0F4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EeQImu9x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EeQImu9x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D7EC4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760937593;
	bh=l1BiT/YJl3jJydrLkhGY79uQm5UpHqQk2s33DJcNSoU=;
	h=To:Subject:From:Date:From;
	b=EeQImu9xqFNc+IivuOJFJXFo28ircKD0vnydjoBmvvK2YDYQ1PAdXhCd7umzRBQzh
	 306kPdSEynyvSLFhNnJq4ia9klPEe296zoVQ5DrgtydjDROm8nj69hrSk2IY5RIJnL
	 fFjrE7M1HdGMpI4Dlrdz9MShlhWJ213/19nhOqfZzimUm4IIujXj1mHBiFvku1+YSb
	 4tCtSMHCZRdLD2X9iKUI7iNswIK9HuaCvUrwBdaxK/GIs9C/f4dYqJRtXfJLlHzANj
	 PTUH83t0RfrdK0mywkAgzScm2YhAA3xsrm01rGWEadeM07xCw8CloabyiwilQwazvJ
	 5MrJ/XhlVA/hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFDDCCD199
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176093759358.27961.14184894519390209021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4afc2604a153bc7329bff7af9cd0e81e38f43aeda4ac96ab00e5d23c3efa03e7
Date: Mon, 20 Oct 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760937593
