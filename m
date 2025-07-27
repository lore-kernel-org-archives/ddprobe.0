Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A05266A7
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753627794; cv=none; b=TEM6YTrjadSTP1+mA/XVIazMvUXysD57hYrvEJk3LYdmqAX/Gi4McLSrx+Zw5yJkDWbg+JWtNO2Ws2byKZOgk088AW/SfNk4KXeKYv8F1KQzz93JjVVXEyD2fAaGvsjFbE5LFyl3dtGCI0fNiSXuXdFqdwX6C6QhfcrMLbGNFIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753627794; c=relaxed/simple;
	bh=0ynRbl4fo8RRI9pyu/RpG5zoUGUKGMOjoL9dSpLbdq4=;
	h=To:Subject:From:Message-Id:Date; b=P83ponqmQFxfpM82+jxnl5H+mZ31Ghj06Dsig8OAzP9QFBx6eLx/hV6csBDgjzJPCbTuMd+OgRrVLIOY+gDUj4HFygX6nQFmFhdZzBUEdFvrerARTPYKE0lmBP2VQgRIy+kpQDOqX+zIIzqOlSc1C6NUovvHnScb/g+Xp0uO0aA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hvdGfZjK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvdGfZjK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11CBC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753627793;
	bh=0ynRbl4fo8RRI9pyu/RpG5zoUGUKGMOjoL9dSpLbdq4=;
	h=To:Subject:From:Date:From;
	b=hvdGfZjK8JVaGW0gSHvFIpKQ/QvvE39fzjISUffxZHUQpljT7l/Sf7qTlsRM4nSU8
	 uvLm+1tlYuWyYxNsHHqkRDdIo8B6JM1xE2U9Me6mO2E7VKm/M0+DVw2ahwgN43Ngio
	 nv6icQFWeH5GJNA3xYMhjdrzKMKVsLGfQxhcXy7VBVQvTIYX8N7cE7KYw4oPFfODGJ
	 OM5rlDS+0lce038kJdM+p9cXrGDOOWX+tUjxJbomZoG7s3/LmhIbcbDr5GHHvWafrX
	 GMVRjvceNNG2JVdo69v8v5UEc6B1aKxDqJ4rS1aERIFQa0VbU6ZJHojZO8kVPfzfqB
	 nuV6YhbsikUgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F851C87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175362779358.7452.5123289208314329227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e7e1e1e414ab47425fcc1fc00ce880cd2e5b8e4613f448e4b2629205a8116b6
Date: Sun, 27 Jul 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753627793
