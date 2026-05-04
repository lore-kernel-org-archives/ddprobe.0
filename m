Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7A7390C9A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 11:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777894054; cv=none; b=c/5mk+2VO8/M75UDahUVjzZv5JrVwugoPiC9lrKO5OOMhCpS6UAnp7qVjsQNZL2v9FdBx6a1vs4jEOXNC/l+MLAWRMVLmHFJ7bDsdvkJ8Oi/pMqAIwWssJI/goG7WhJFmjXyCpTVsACBD43UkCXsn/lWulRzY9a7MO5mHKJgM4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777894054; c=relaxed/simple;
	bh=Vmas1Fq8Sj7QYFqyQhCN8APmsF8GJZMXSczvfKs6uPc=;
	h=To:Subject:From:Message-Id:Date; b=QZIxtISLLUssXP2wB7H635xXTkx4RleoMk0BVJQx0dL42FN10P3Tm27bIKuQZoapfsAYoWmu11QXxEGUSlyxBg1JFee9qWg1eVvGDSriHibPzbGFUdGI8PRVGVcpS7uUJhcTSPMHQNv6SK4PIm1GUvWl0KIeyL4cZ1NrAPTdcK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iCCQNWHh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iCCQNWHh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3DA4C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 11:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777894053;
	bh=Vmas1Fq8Sj7QYFqyQhCN8APmsF8GJZMXSczvfKs6uPc=;
	h=To:Subject:From:Date:From;
	b=iCCQNWHhhb3SG6zzrzw77AtUWmCy89FcTJVuvY7m6nSnuubipGg22YthnPyvi6u5r
	 jRlajAZB+gkA/COFCSC2ixzQnChzOzVMJVw1k9PqNEbKV4ov/fpPUiJVX4hSc1tL7+
	 ejcqh7BHP4531ZvAGY/GBvIyIkRkTdNyu1HzMl3aUBOoJ5lQD/Wf+SGQ7HaW2zw1c6
	 J5vCtx55TZi/ak+wItZn5V05atAqg0FZkdPp8egSOjfKyMhFt8Smx/msDlnuIHGvN9
	 wyKrIPBGcS3WQw/xumALsJZ+v9+lPq7+aW/6hZeVlRHr+5eQ/XCW8SYVwzI3MaFgeg
	 RJbyi7cwPYmPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18F5CD342C
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 11:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177789405369.19889.7442757629276096931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 714585a591f6e0dba9690b1ab69638840e2a9498f888baf5da041f5625acf966
Date: Mon, 04 May 2026 11:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777894053
