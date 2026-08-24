Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 547DC17993
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787533234; cv=none; b=pwp5lFUWCz7G6vNq2B3+QiyrvFUgnV3z9dL4JHaHfbit0iheAXhqpTGpvWLoMe2Wp4UZA+/wD4zYo8k4QddIt+/tEctlF/Rle2rDiKz46bi44yAmixTbs3CyQxfJWuOObTN177/Bz8DvB46lf5WlC7gCElp1rtsicMYWfRwYUK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787533234; c=relaxed/simple;
	bh=WGnwuTb87KnKhli6/pXEYoyjjj0GFVfcz3U5qR6YTAc=;
	h=To:Subject:From:Message-Id:Date; b=Y2R/j6pArpjfnJakX+hRwf7VkEOEPGGFQgi5dPcceiQGnsAm1WvpXfS393N6Z0Nm5D2dvibibPXQAIQN5mksZ/BIowS9aSBdxLrqMzrE+ZDPRzWM4LBzGH52xFzotNyE0WofQCvhei0ba9EHSIFMe6b2LR59+rL+1y6K2yT9d9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQl6pK88; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQl6pK88"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9C2C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787533233;
	bh=WGnwuTb87KnKhli6/pXEYoyjjj0GFVfcz3U5qR6YTAc=;
	h=To:Subject:From:Date:From;
	b=JQl6pK88Qck+YcMvCx93ESNOhYwfkrWYxmhg0GOiHcy6+aZQ8k8TOHFLEY5KvdwXF
	 dHNobhkk9sucM40nsYGMb49WSHBHRhTSnSeiKzovtA3WOU/MAAYQnvEezbkxG+9/34
	 68L4LYX8RCPTzXnZ1wOH8KhCtcTNLxL+UG2IoHVZyXMHxOp0fr4kIqtPYPvPcQfl3n
	 xX6MfYs8yXYzIBsBZPmjZ2F5HEYolsmJg0VxKGZm2L1zfGLex7Fdua30UL1Tlg9i7J
	 dnw8zw3e3GaLNcMQd/iHPfqlBYK7oueqaDr7LdUvcFzn6zC4OCA6RSstRlcy43Kgna
	 KAHOsfjd+gg+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD4AC5DF8C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178753323369.29410.16322776182269138231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adf7e9e4d7db74c7e30a074fcb21bec3a78c05cd6a0fdd7b48e304d7c2e868db
Date: Mon, 24 Aug 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787533233
