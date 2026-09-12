Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318DE36728D
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 08:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789201834; cv=none; b=AfWtfkhHXJON7VgrOHE5DfgfxXOG3BBR0ppfEzHQB1638ecJcokNJ54MaPt2xQj+E9Z/5x39JFYgiHHgITQrQ+R9jKB6w0SMSiwaqaDrzKww9B5UxlUnu51RwD1VCnOfdHkyVrkl/tUk4V2zFXSpKFlYlwCaiekXuXt7rGeIjok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789201834; c=relaxed/simple;
	bh=lQlQOfnp2pw0VFjGIbIzHpcCpBw2Rv0K6UcAXiiLe+4=;
	h=To:Subject:From:Message-Id:Date; b=gE7msqYWCDifC2knAGfPHVuaDfWXy7DznrjWcp4xUK0CHnDfEVer02tufUOzHpH8YID0rRULbq1fZuQ//E9xeUuwzAJK0a9OJB0LHGvI6E/HOjlMuXDSbxxziam9nm/n5qtIyHpKV1oZf2xyrDVOMldyTMKwEnINKIRhVckZi64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3hohUHl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3hohUHl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9F2FC2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789201833;
	bh=lQlQOfnp2pw0VFjGIbIzHpcCpBw2Rv0K6UcAXiiLe+4=;
	h=To:Subject:From:Date:From;
	b=S3hohUHlXBdehsgPqAoJvX2QYdPzgSQBVPylhbBtE3WTBHKVWzCcZW59C5haK7AFq
	 2A+jsWU127FYLjcY+Ejg073zfRGGiHIyWvOJED1VkDd7+RbVY4UxLgeNCuA2E0YyqM
	 AxRLC0CpX1ktj+OedECHoz2be7veHRuJJc/6rmTbKgvbYwK0/r5nvmsi9Ugl/EZooe
	 U9jKdgmyUbMhYSCfJdnVp6Q8jWCirXT8KoGEbnIKVeKmD5IfefoILS0bztWrt0HlPY
	 zgFWnC497UxknSqn7dc7czIicIeZldczKzBbnWONrkFd7qV0F3CkRfiDPRx9FNonn/
	 IyV9VNYW73wEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FA6C88E53
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178920183368.18233.16830922407916133143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f8397c7d4ba90c92f24b1aa1a8c140bb2950f31cfd1780164aa96d2f8bb7d98
Date: Sat, 12 Sep 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789201833
