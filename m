Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3301D1E7C2E
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759356594; cv=none; b=KbDfXrr7K4rFZFMpw5aAvGUlUAWwoe9CjI5LYkmOITrcLxJVy5lZUkHg/fziey97F3GfG9jWO9rsT/hRbWYh+g3XYJHNgRapZhS7BjnVe1u8NR4+fe1dtMTrx5sFqxAfBCKNJX6hV+0NXq+hmQF8FvKQQGFFA5x6o3DF0Y0hABE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759356594; c=relaxed/simple;
	bh=4+ZvbucZ29FLKAEeulHNadq2pi+tBZYjUxcQA7tpOwI=;
	h=To:Subject:From:Message-Id:Date; b=cwy5DJH1VVKer4ti198waq8qgLB/YFviuQrMJ+j+QWbBdk/KI8Y/TBgov3dAL7chi+Az7VRqDbHI20Xl0Ye8kYBhzl3/ax2pyILANB09C8XnfsW0SYubWXJvRSVZgVVjb3zt0bDVeXZAP5BTLIJnuCqNVMKzeDYV5/W5jGglORw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n+xGtFgU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n+xGtFgU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3902C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759356593;
	bh=4+ZvbucZ29FLKAEeulHNadq2pi+tBZYjUxcQA7tpOwI=;
	h=To:Subject:From:Date:From;
	b=n+xGtFgUwk9kk5JVXX7BwYpPnTwUirvl/mC7X6SVMdlMfeT6mR3lCNUnNRRDl2Vlx
	 PEy5VbLiUwGMT0k7CLq1DjfOxSJgcoPxhAMr3xK2sDduAuKkyOhm+0+DRlN7bm8yep
	 qrJ9Bt8oijiB4SSk/GzrmyUVS4QpXbWvQCWN+Ndc0eAJVMe413I8K8tpvMi0/8UmqT
	 YSDSZkfuB9RAy27Kbggka+JKJWkeEbe5oX1FiAIBSHTp/BG2MMa+gldJ/Owx/5b4zU
	 ufEloz+SJbqAm+lcjql0WIL1QKLpe4mFZAQL9Y4e54BUV38/dJ27E3qYgCaUAQATv6
	 qflSod8p0ccMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF99CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175935659358.24341.10484067441166693329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdbdc35dee0bbc773797732f74668b161c48bf741f61883eb43e761d5c34829d
Date: Wed, 01 Oct 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759356593
