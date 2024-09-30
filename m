Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3346418755C
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 12:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727699155; cv=none; b=XcPKwUPqZ3+xY43+23hLs3dT02ELyA5gxDSEAvWnhnPBqkA+C9ap31a/9lS7VGQ7tXItlsSGMD7COCKD4NRXgsg2dU5PELib8w9K9tu9DGMO5W3DeDmC+4+Iq/XG65J8QbnFW3eC/dsLlfEGy/CI05cJLWuj2uT4+Kch6nW7pm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727699155; c=relaxed/simple;
	bh=oMCOH+Hmy3W9oFzYWZRxZ42uoKDLSs2/bt8pfSVgc9U=;
	h=To:Subject:From:Message-Id:Date; b=NaxpGtRQijjWTWaw6T5WB5xk5m58h7W+IKo2faPDAUrhLiTF3M0YMcLYsUWUYA6hZkw6Az8zhkqou8YxQP0sltNXMsfk4CQc0OE82XwvOg+LnhcKnf7aHGmiaN/oLvLO8uDEQ6j421MjY2SPrtErOr8j4e9Mil7srVFgDjDy2h0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJHn/twR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJHn/twR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B051AC4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727699154;
	bh=oMCOH+Hmy3W9oFzYWZRxZ42uoKDLSs2/bt8pfSVgc9U=;
	h=To:Subject:From:Date:From;
	b=nJHn/twRdyAHD0jIgkO57N/tJJl308L+GAv0ofxBgFv8jFzkNdGvPKTk6ZRm0dlrO
	 4nvgK8mDugvHZmnRVPwgZZNctVJYI8g5LONTzj4R77/I/QOMKhwhInfThMPkcJ7P+C
	 btd9MbZ7+NAIdvj342A7nVFYDsSeGoSJ2Gd8QUQznt4awLlgHHAfbFgYiyFTk6FkJX
	 jrWf5DfnTAlga9L52cYkCDry6FI0C7rM4ebIxBUXNFxbW9Vc0ZuPrmAVnx7CdGdgA5
	 4jdOQII4kVWMhbATrlLbuBUZ2qRXnjBP6fzzggAk3/vKsPvUHl45KGnDT06KDkfF5X
	 KsJqcGtB/e/5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B829CF6497
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172769915361.7799.7044763264591733020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6c883a303d2032a1d3f20975ef38c4640843522760adde920628f2698337e96
Date: Mon, 30 Sep 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727699153
