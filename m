Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3A5326940
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766040234; cv=none; b=Hm9ueLWyz9chEJtIOsmVtDYgDUPjQYMn5vlz5xqoPMcxAw1hsAYhd1X4OPnBFFBjGHqA9xbbjcrrTZOBPAGXnS65H21+QE8eIWf2UVHFaV/YwA3xKv5hrf/BGjDxJNhP7M0pt2uSQ2UV/O5mLHupyK4NYP0VKff2NK7LJtu1ToM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766040234; c=relaxed/simple;
	bh=P/9aVb3IQbWD8Anxw/C8bYIC6WsiM/nbR+3xp1dJxTE=;
	h=To:Subject:From:Message-Id:Date; b=P3lRfi1kp677nCIOMSWQW2a/BiidWxm3V7A+WnHgkMKZjfJJHx/POLH0aLqoYvekORC8pyg1Ko/CWySSLBsQHKMnppO8qHPges/P9LXh9b3NHflIF/gGgIBhPd5gCOpT9nsLmuidM5XTrV1czHSH/sgUPXdswXOP2ftps6xt/O0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcZqa1AA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcZqa1AA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF59C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766040233;
	bh=P/9aVb3IQbWD8Anxw/C8bYIC6WsiM/nbR+3xp1dJxTE=;
	h=To:Subject:From:Date:From;
	b=YcZqa1AA4YPWup4nGFzKxZgRkWUrXzXZIePe1bCrmyacSmM9pKUf5I3H7h6SSKC8T
	 ybXhjioRIU5+8D0m/mwYQUEO6XWCncJp188YRjiTt9d+8WVbVJWaDyMtFBP70d0o2Q
	 AArRx7r1J3CX0xgd9h5e9f1RRMUqql2HY+WJmvuW0cXroiVms77Mlf+5U/ys3Fix5A
	 t+tQh2attTzdLo/a4rxHCNmMqEmgVV01rpO/sXlYHjpbGTrU9CzjJUg/6CAeJoDVbo
	 99TZOBUtcTJfHZgrkco63rOJWGuWcKR6rn9jly0TIEai+I5tf9paaSnjZvJiifj+H5
	 jLswWgBDv/rMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9220BD68BE2
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176604023359.1495.15016203687495245050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d151093c06ddb7589b8537207408d163c05da2e1f849ca5bb2fe3fb7540f0bf
Date: Thu, 18 Dec 2025 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766040233
