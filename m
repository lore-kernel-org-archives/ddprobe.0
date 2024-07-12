Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0C81422AB
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 07:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720771043; cv=none; b=CaUT/wEST2XAzCu+B6LNipq0Xb9h9u8RH2/l04vZWFVuJeKP0Us931bzOQEDcrFyFtJOfivU5hz7nQfboAgB0GDS6aw7W6f82i50CxlFxjFMX3bidR+HOx5clDEmi2NnGgFhp5cSvwIrR92g43sw/gUAZYUymW51wLr+vcenJtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720771043; c=relaxed/simple;
	bh=XR3KDuwq4RNqLntVuXxonicF1O8wuRe4FOqycHJQm/w=;
	h=To:Subject:From:Message-Id:Date; b=kt+KdQzmKtPRLbIp8tIvtVZe3Lgxlz9heZa92C0G0cAAdzYJxHZCuQ11gVctrTrRYf/GioD9Mp5a019scbQD7nIGwA2vsakjk73xJSOBB7GvDexwomvYu30ROPmjIgYenuqM5a8fH2jMWsrTzyjWV8+unJPRZgbFiUtMKXsFW0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BOjNUzk2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BOjNUzk2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC22EC3277B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 07:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720771042;
	bh=XR3KDuwq4RNqLntVuXxonicF1O8wuRe4FOqycHJQm/w=;
	h=To:Subject:From:Date:From;
	b=BOjNUzk2BaFvoh0uhWrE2L2/osB5j/hrJBZJxvD26wOXHBqtJ/AOUC7uh9JGRm2hS
	 kC+5Eqof92RK9nNX6/THP0RlKAEU848OjsVPlfmWqiLrVNYtpN/lrTvKy9wXWxC3FV
	 S2l8GVjMLEbvLKMnYUo2cmDm5HuMSB5M1o4Geb7THvS4jyXznToO3wx5UW1+WZ7/mk
	 iXd/yiSEQldB4OjUF+/66csAJg+V0ecvRMsrmiGoZfsHHqR6CJ9N0MEj/0alDwmQ0N
	 z4xKKsfctHnCsYcmcidpl/EE4DPCK+A9xddwxn+Z9BwZz2wkqXFCE8tuFb6SP4rgp1
	 Xdq6qnwxcshYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C650AC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 07:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172077104280.20351.16582911593799463522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38bf04a9ba889cbd2633eede159ba20e785f47552284fcc1fe6df96b063f696d
Date: Fri, 12 Jul 2024 07:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720771042
