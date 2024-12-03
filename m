Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF1A13B5B6
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733237754; cv=none; b=Ha7lG2jmxhFRuPCsuDgGf+JwVJV/cGYHH+INCCnBcAQceyStKI7mlZ+BhbNDAMQKc3bob0dHwTtlkgUJLMBxjGU6f++GixtBSs+LyFjPbk7PBkOuVx2uX8S7lq4Lz5ZKtg/X8hb6TP5F5aDxRmm4B5aAQaN/LnvYbWaPMS6vmt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733237754; c=relaxed/simple;
	bh=W4UPVmMJmTxy42ZqbeB46oEvrwIuErZB9CU17XIfGog=;
	h=To:Subject:From:Message-Id:Date; b=YAxD8ztBbZYTqnQCb6bTQ0aFBxvy/ydNQ/abtuqzXhMbDlNiSEQTzb3WHA7UQ0uDY+9eUCkI7zlyo0/kNtYomOY0AsX4/R15i+TAGCP6sbXx08WckVLKIExivJSTFoNSWHFzrp3eGyNGJX974XRAsNLi5OPULRFswD1uSAelrM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kv2AaX9Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kv2AaX9Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9F4FC4CECF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733237753;
	bh=W4UPVmMJmTxy42ZqbeB46oEvrwIuErZB9CU17XIfGog=;
	h=To:Subject:From:Date:From;
	b=Kv2AaX9QxAO7rL7gll34gBJI0gEY1+8/0p1YiSIw/QOidvPA7GdfVfnwYksWK0M/n
	 9UyJ5beKP9kHvgDsPNxYAGk2b0tT9NTIKjtz7TbFWjoZQQ25j7efWxUnWSytOYJ9zV
	 LBaQ9ifQZQC4b/10Zxi2u2z80FGwvug7pnqIml/ipY1OJqQktNM/qLHYEW3hfklEpu
	 6vgTCwwXr7OqpXrMXySEq9mO6mRUtb1+SD9v0WBYxxxx3xwdXfPLQ7ABTZfVn8tVfS
	 GxU0MYZyRb72u7lLl+j3l9oTWMokGRkrvTDhk7gMhi4mo5wcHzCIGu3iujQJmBP/0p
	 YkG6ntuVX3pPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6C6BE64AB7
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173323775366.28811.8120845309016399490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7a47e23794c90d96119c96306d9c0f85e3781521e9a4ea5431c7c5e1ac64777
Date: Tue, 03 Dec 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733237753
