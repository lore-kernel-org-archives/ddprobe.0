Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E016271448
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767563034; cv=none; b=s3qYefQOcvvBTk38NpRzMULfTBZgk3NS1luH41FPPuXx/JjwBV52bs+ym/vhPSVu4H4IqYp5qc1a3DChUyHBng7UjsoeZWSfEXT0O/vmbJQnpEUFrN17EY95R7FPbFsjxcC4ys7epGEzGlGIjWEKZHCPUJ74da73LGUzswFlNj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767563034; c=relaxed/simple;
	bh=p+hF3ONl71cQiF+EAijwKK7B+FwyWVyGOUP9on6AAOM=;
	h=To:Subject:From:Message-Id:Date; b=CcTeJEqmgbTHb6RkIpC9SQxxlXeUAkfKhz82yLHNdh5jkGI1lc8RfrTqi8B9hNyjn9ADEGFHKwJ1h9MhQ22CcjOVKiDPx7TKUM9yafndDAn7LTU+0xJn8XsX9X5xyaf/fcEV2B/vCRMM2/vxTC3MY0RLnuJwrgX5cc9TkkQZdd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MLINur3O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MLINur3O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11DAC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767563033;
	bh=p+hF3ONl71cQiF+EAijwKK7B+FwyWVyGOUP9on6AAOM=;
	h=To:Subject:From:Date:From;
	b=MLINur3OCuukftKB7tP+mSJYJ8k9Ojh4mDt02xD3tTwzcbRgM1fzmSH3fd2d4OfNL
	 yfEu4ADbAZkmrO2vknMTuumT9jGACHYqiaWJ4F8mbGd3r7DPURbl2up+cQStvGKHl3
	 DvUCDfclBDzKzD8KmOttZTH2LLZs58vDXofq/sRn4hJUBQ6AkFXridswfvq4TPCVTg
	 sQ5Wlr3xFkdPXfN9pYhJ+Sq382djdFMiZm9EVXCGiWKKjxB1RFd3eNMS3Zt7p+bwq7
	 zPm758YiTlaUv6+MS1qx2KmQZ59J1SLFvTq4kf9546x4tFVHcXIgM5IVl50SzDL9+K
	 RHGf8cAOvd3Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F753C2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176756303357.3306.1127140615495613136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0adce4cbc0dd52fc6ca5b853c8bbd78c09ba61ea81818160b22ecaab4accbbd7
Date: Sun, 04 Jan 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767563033
