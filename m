Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312802A1CA
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757166594; cv=none; b=AGtDN7t/lmIjAtEbU9xIXx1e1eyju3Iv8X28ru+zyA2KSY3ynF6tG7nppY0trjMvdJV0TYRAPnId9wUr6SU1w4YPfXUeGsQqQEyz5erkbNNs0hPy2uArPXNxa8MQW8HtusRLKBpPk1JwEdfK85ZypmCQUTZfidQpvKGe347z368=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757166594; c=relaxed/simple;
	bh=L2gxmnHuRhMcZVy4oRYLnOPqSckWELqc5+Hk/Q1VRMM=;
	h=To:Subject:From:Message-Id:Date; b=YIr2T3GEuAtL+2WzmBFhE3duZqQ1UiGolrmUsYeJ5B+sxK3y6Lk1ZQm5ELdvwSlGz1Vz0/Ziw3HcqgJelCPk1K6J6zUl4sEeEZlqCy8k9YXSJK4vFACjnwAmfgFGCp7YUwwg+IEq056Ct5j/cDybPpfGfcrudi16/NRrYTTWNq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ajSr87ou; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ajSr87ou"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CDAC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757166593;
	bh=L2gxmnHuRhMcZVy4oRYLnOPqSckWELqc5+Hk/Q1VRMM=;
	h=To:Subject:From:Date:From;
	b=ajSr87ouVT5jvbD38tdQJcOux/QivaJw1z0sRMMN2gD1RIzTtMTj/qf0bMpbRlBFZ
	 Zok2OzMBc06Ro0xecpw6A84+j6yGThUsz8qk+V+Xy4cYLCT+3pVObsTaGgLlAGQYNF
	 TX0dLnhqfLkJ3NrgV5WBPSj/5lksUSC2hC5qkmJtwXNqbqvFV7DV+spP2xZewncSX7
	 DUIVVQJPqPSmQfakfs2NsDPdkqLjfuWqOY4F/BKMblXKCYypqspc4LeWT+/Q50/FgC
	 NRc6JCbLwhucr9VFpRHwv33CVhgyNpw7/sMsTuOLJ9BgQ5W2KJmmAIh1RbP6MZPVF6
	 uzmyBlIUFyGXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949EFCA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175716659357.13129.16807051259611405032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e6bf87da589db5c80b6d6d1af73283265f58878b90e51961565ffcce1b0e28c
Date: Sat, 06 Sep 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757166593
