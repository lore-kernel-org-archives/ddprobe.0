Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4024649B5DE
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789143034; cv=none; b=dUgZcviuV/6ly8o+xG0XGPgqBUJVi2ap3soWu9vMCsyvxwPDCkn8gpPaEciEPHTMMTzLEo4mlyddcCjbjZPbVm44Oad84jD1xYR9SqTuJAatQ7OAw0ULrq7n6HEjvnYiVZt1L495AZHxkEGJb1X5E8jQgxdyim6vRCgLJdrSNaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789143034; c=relaxed/simple;
	bh=KCIsAQsFAm4l5quPukyqrNKHSWP9eWF+1M65bAtvvjE=;
	h=To:Subject:From:Message-Id:Date; b=DbqOdoxR1w75ZO+Fxt8a5kIUuwPRwXJZcrrrYpL5yFYXIvNm2QEGtK59aO1qzc7L3SRI1JLUS4/4iheSU3ZGY//vEn/1VTf5dq/enlnC4whyOFPybpP1soY0YK3sEfj1Q2DHJrzID5KLjAr9IuZC+RIxJCC1wr05G1dBz4qsv84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OLAP/a7s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OLAP/a7s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7CDC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789143033;
	bh=KCIsAQsFAm4l5quPukyqrNKHSWP9eWF+1M65bAtvvjE=;
	h=To:Subject:From:Date:From;
	b=OLAP/a7s5WewspKIopU6Fblg/LRTdfMKhFObRcRZcxkcIo8hzH6/a4RSWNCFCHwQN
	 1a4Ecd1LvndrmKgazjHxac4/1OB1CScIdHHp/5y5y7JQ2poTqkM0sM360nyaf/lJnZ
	 g6mmBAi7iyPbQKfbWGrUSxjAVXJh5aHX9anIZkVo0Lrc4zduYr1G5t7vLUGTep6wRz
	 jwtII1bXt/8e5MzuzcZ1rn0EJX945MuCF8mdXxCpVSs3Z/rfkk4DCMkucKPLM/+FGn
	 rKzd051v+/aPPwfnfswWYwoLQrrfWg7975k8FWLE0LOsEbBGhbvzRUIXNn4DV5s9qC
	 IsEJICuMf4azA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1F8C88E53
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178914303369.32332.14694722207530424419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08946b2c47f33a0413afd24dab3b0b40412ac363bb668a152e9afe942373ca01
Date: Fri, 11 Sep 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789143033
