Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3778127F744
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745512794; cv=none; b=p23IukTr3nPYmLHJqALv/WC5iINChP47Bq6fzRJj/0Dq734x3sKKVpE+Msa7DNVd8rY9jGrCrs8KVqTq3OfpeNjkOCj4x26s7+hXVn/RCB+uMSD1LXx3eCtHr6Eb/Fu89E9MHySFH1obah947BipntvaybHDljn1uHtA40op7Ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745512794; c=relaxed/simple;
	bh=mMQTRXCY74LbMWgwZI9FOExK8x55FtLKpkydXqOrvpQ=;
	h=To:Subject:From:Message-Id:Date; b=CQlr5PDe70G8scRY6x8lXEJAYFoj+E5b2mCP/9w60uvN5PaRumCyUscQ55pE7rJc1nxvO9koQonX+CW/RtRHYvVQ4Lr+/SH+x0QuyG4yrFwqh1Z3LdAlQQ02r+NEUBvq1l5qKj4Z4AIODSII0//iw36pfHNn9Aw9u8nat4Bkkbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T3byqKac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T3byqKac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD91C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745512793;
	bh=mMQTRXCY74LbMWgwZI9FOExK8x55FtLKpkydXqOrvpQ=;
	h=To:Subject:From:Date:From;
	b=T3byqKaccE8IWa5RWhpwdUddZo2COsRAJq5051p1oftxf8I6J6b1lV2OJzgJRs0Kk
	 H1A1yFyFcB9KPe5d7f8dqrAxTQfa3JilN7hLJcZG9L7QPiaBxLGDlGpCyHzCPmy53g
	 W7GtzXQo2tvSFVB2SreM5GrJAwzD3gX9vtFFEogZl4J0tF3kTbUQNu7feRcYpAUpz0
	 5yZSQJtQOZ+UF+1iiFIuRFr6PlrLpz0lUOReoS6BTZzrr3dr+dfGKa+7VF2rK3ca+r
	 kIRiB7bKQEdjRgqZrsBCyOCnBF2dYs7qoFrRpRdPg6NSyDY7KLBINGAiFBwzcpO9gd
	 JARaL9i/K2vVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E1CC369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174551279358.6116.12757828416691404780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ba36300bf740615299504a327a1fa3936b8fe6bed06e8028fb03670ca9f9489
Date: Thu, 24 Apr 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745512793
