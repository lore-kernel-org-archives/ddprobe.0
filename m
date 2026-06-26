Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0CF399CFD
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 10:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782470854; cv=none; b=hFc4oItqYcfYqyRwdyiuknAJb2Q8dfmV/sJfUSeGDu+kJyWyqhDZCx92NTTDvtlqnFvtEW4+vzUrFyUN+X4MR15QjP4Jxbj7UCGkhDOIOXBlwHl0uWbksOrYm7UF21XCgfo3XQu6P0L/PCAmE9dUoKv6eTcNWo38A/pbdSzY0IU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782470854; c=relaxed/simple;
	bh=5xNwVInYfZi6LHbGygbjq+CeY7XO2WtSJbj0h6BQ3Kw=;
	h=To:Subject:From:Message-Id:Date; b=EZB8jehAwaFrlke56ry4p9dPFuOp2Z5xndSm3WPg6B4ArpYpOdDBI4E8yaCyvCZtf4BIpoXhYmPHGlAAufZgbW98PtBfvYJlOz/N9BTQv4Gtl9bZDV/YbdnHYUOnmJczIOX+3EIFC5ebkcz8fwiMFzPmyesMvrSbT7bzfp8k+y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J8TEuKj+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J8TEuKj+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60E8C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 10:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782470853;
	bh=5xNwVInYfZi6LHbGygbjq+CeY7XO2WtSJbj0h6BQ3Kw=;
	h=To:Subject:From:Date:From;
	b=J8TEuKj+8UYSJn+MK9luqcHLLE7cNgxEoxUKXLBYmYDaxOEG9I+rlXGw5BnH1qFPm
	 cKUIVBTN+fKsmcufZvAWsfc1MuOS7oaGJwVb67Y6zjHDLSbJDzU0Aw276HWQGpWsa1
	 SKjBrb6fsuN7NoDq92WNtGNztYkMlKFDF8X1x/sNbPWhE4wU7i8qATm7CQjuk8fyrb
	 KHwdFCTAv63CnnFflhm0nHc04MJF48hYEBewjAedZr/Z6lKNK4EbwlkHFxSQP88mr/
	 PWBnKEOqzucKKEUW/h32cwZBDMQ1dtLOh+7oIrcSIuNgk56gXlfaCrsFkqKhTPFKpE
	 7T+OUyg0tYjzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5F44CDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 10:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178247085371.27788.4494641097529987919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb5cf61e136e64083f0015511419eafe21e8b9d2cca655e9bfc882b6e29ac0df
Date: Fri, 26 Jun 2026 10:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782470853
