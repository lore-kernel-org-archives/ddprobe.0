Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF2C34F465
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757428194; cv=none; b=X3BvXeiu8pZDUi5DEQNNto9h7Ng/a63I/c+wqhbEZsjx1yoY66YEFz4A2HoZ62RHi+KQzuofHHGLN+C0ndqSE+T2sbwdG1jisGygUV1yx13mxri651A0QurxIu3x9wcXvD0ApvRIp5Xz7All3aPSwintR36/kVXROLXtTlJViTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757428194; c=relaxed/simple;
	bh=hcR/PxuOvm1u24sMf/h4MTSetbBEf4+DZ23Hj8S9fcQ=;
	h=To:Subject:From:Message-Id:Date; b=sa97Tf7W5sNQTT3ebcXo1WKjH9rvhz9Kr7DQPxHO9mc1QBE32CJsmQn0Ram1/a1aRHo6q+m4vbaZ5XpFXJa3LrL8wC63VEVpYwcMXrt6CeTPSGxv8g/QYCXLe0ymCrznD7GM5COlAWntDvrQPlRqg6fR8sXguOnTGxDYGFsmQTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KmZGP5I7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KmZGP5I7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4150C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757428193;
	bh=hcR/PxuOvm1u24sMf/h4MTSetbBEf4+DZ23Hj8S9fcQ=;
	h=To:Subject:From:Date:From;
	b=KmZGP5I7SMT9QMc4W7xwx/SUVx9bLjEhgWQV9nyDXcqF1vXw/OVhmU484zU6qOvNm
	 5C/tlkzVaWpuDVzOOlbHCZg5D+lZZ9lm/P+/icmwrei+AI6eR0imDWYAzRSRI1E1m5
	 BQoEm/oHeOMi9kFltimUtbrCuOYRvYWoqLcaN3za9LxFaT6JYtvYPmoQQ2Bc2CYxE5
	 oux4+Jp1OWWZHzHhD4IriyQfR9Re01PmsN9FcioMgX9AKhbKQSzEpIYOZSVkHz04rD
	 wS70I8jCmp/93GmaiZ2uAD4xQDO+qw4P5eViMC6GV99lbFwKUQ1rbYsJQUETprUICN
	 CzwbBBoTTjbgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938B0CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175742819359.32146.14594328863832625650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78a06e096b2a564eece97eaf5d043751e9a3f05cf237bd5d80cccd136818b31e
Date: Tue, 09 Sep 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757428193
