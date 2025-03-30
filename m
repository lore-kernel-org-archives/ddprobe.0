Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493CB7082D
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743330594; cv=none; b=KF0suTdKo70zJTeydHO3B7Yktcd+0VnmIOt+fvtYhC6RFR9Qh5HvOFGk0jej9xKfKRkzFFCglq9l4U6Ku8ZrVO+Vz0SYM3+SpAqAuDM/z0hBHO9sucjC38RTBmn21nN6aoKXjeZUPR7XWlQmwkJhU0Wwi8UPDci0+S5PJr3KSiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743330594; c=relaxed/simple;
	bh=PgJIu6eX7MUs7fKeFezMb5myzpkoJKeCFAQ53LHaB34=;
	h=To:Subject:From:Message-Id:Date; b=r1RVYY1VX3FXBW8Xu6eoh10JDC1IQvBt1PTyzF3mLtuFgsydNXx2o0xh7aQmwSoh82KZPkS32oFP2+OQNKL9RCdEeCLu16WcwH40sju2zM73CuqZbI4L5TO/lUzK8Sv1BF+6+rtJJAEAHI8z4UsDOSEBLD2PAqbT5OYNhp8GPgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b41ZmjKd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b41ZmjKd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7829C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743330593;
	bh=PgJIu6eX7MUs7fKeFezMb5myzpkoJKeCFAQ53LHaB34=;
	h=To:Subject:From:Date:From;
	b=b41ZmjKdER9m/sgwAigLDCBXBZOwHMoFul/gs+kZq8Rxs0v/by5sQZaTI112EAibj
	 f/99Vo43LoztCiSxODDQLGB/rBEOFid1Wy6nsDDW/+e00lmMe+XgltIUtHLyI8ftPv
	 MmciMHVyip1knXnsGf9c1xHhb3hkshw2sHXrFI3EWHfus2B/tqlXoyhPcG77qs0Ydd
	 esUr2etxDDAZ39YQnJg3OG+66ly1SwS7JLYD24dbivCNlfUjhNJmsa6p8sqNC3sKnw
	 4tmuqOx+PT2bZMxUBtIbU+H0YCf4iwatzZJKC6C8mUle6ThfAcNkjB+yld9HbLO8SY
	 VKpCVLB+O0MRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EA2C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174333059361.2035.7171226381306127259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b49883052195f99729e4a8df291147301e980fe0a58bd57e60a190ed3e0f3457
Date: Sun, 30 Mar 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743330593
