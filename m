Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259F0339A8
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766753634; cv=none; b=iMXFFDRCnG2XY3qMF96WhQDKZaj0oGhH0VHo0c5UHQyFEbgjKGJLXwphacYjQnRheguoFKlmFxdAAsBrE51G4HJWlFMI7uY97R7yCTUo/sO9Vsf5lIeP0SLoLeqSuhAj69WZRIUyGfLiVSGyFv6FLJGrEbzpNRIw6rC8ylc5qYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766753634; c=relaxed/simple;
	bh=mdpfijYBuHezWR3tIdbRgF66VhLyqL+stl3mCwgaYyM=;
	h=To:Subject:From:Message-Id:Date; b=tUNXcfirEwXaol+mrynR7Of1TI1wx4OCfej7de3nsvpk0jDQNodla9Hriesn2naUBB6BXQ8jnYWze2B9HTh30sMI34oRyqti8DNx1nUo5yBf2VckeBoI8yfYd9nk9zXBWuMhehZtBUJCNHPkh9c+vN6mWBsK5oops9ScrtgvjGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YrUw+GgC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YrUw+GgC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B05A2C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766753633;
	bh=mdpfijYBuHezWR3tIdbRgF66VhLyqL+stl3mCwgaYyM=;
	h=To:Subject:From:Date:From;
	b=YrUw+GgC6FLQ/G6zUZgL2kUDIWXTCffhxAYu4GzstHnOaj/cSSsPmWzLgsr7dYD/R
	 2ALvd89f1H+xtgHHmeomrjFMCZ25iymh/o5/TN2AzeH+K1Bh83ERZLyHtqvRRC1zw0
	 4nsbG1bQZyTlA+U+GL/7TyD5SuW7R0XNsmcVoaPKvrAiR9ZI8379Ue0ht1BJGH7wM/
	 LT+93jiQ4qH+bCr2Zb1u/0sOm1YFnqWyrBt38wBrNKvYh8a++FKf167NY8TY45vySu
	 9U0VNf6c2WbyjPKvncSFsSyLmL+LzFILm+1f3G+lH6UIlFQYPrDYQwXS8BhWCmO9kB
	 kpxekw72jRgFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9860FE8FDA2
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176675363358.7348.15937933741471923460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d72f7af9ad2913d58252429e53497c97debc2607866dfe409d8e5276fdabda0
Date: Fri, 26 Dec 2025 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766753633
