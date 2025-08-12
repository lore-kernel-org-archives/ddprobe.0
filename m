Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27ACE1AF0AF
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754972994; cv=none; b=aHjSkR75hJrQxu7P3DPWexHFtVa6dUsF0GsrF11FDlh/o/uO+vyF/c9BuJYO23tRjHiAXqGRmmtj5PGcbaveoG3miptlbskV4h8mW0EmKqD65LUrKDcAnMi6h4taq+VxuOpbtHGfiQ4fa6kkV6+lJCTr0LLaQrtBzofVRzzh3og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754972994; c=relaxed/simple;
	bh=q178NXXHY8fGdPmL4vV4RjdQGaB31cFesHowUGMVfRo=;
	h=To:Subject:From:Message-Id:Date; b=gK1zbx7tlo1tJw1etLOOkxdH/yuEd3GrEAXLyYh/AzQMxdLnlaK89ZjOMVGSyowtTlTu/yDbMyS9+rLxO7Ne4jVELoB/9vMPPCwiCrN5P9QhCMHun+RksHn6XvXDAXudUr2J7rV5mAuASIcAH7vWtsR2SLyZY5inE5/M5u3DSfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U4BkuA6x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U4BkuA6x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CB7C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754972993;
	bh=q178NXXHY8fGdPmL4vV4RjdQGaB31cFesHowUGMVfRo=;
	h=To:Subject:From:Date:From;
	b=U4BkuA6xvCW2SAujuQgs9xIXNTwOO8rPBRUlHN6O7QAOmTphDZQKrmTDNGu/FjM0n
	 mIdSe7GSd0tsLeCi4+9YZKA7Jjc3CnLyNg9qGRnfWoG8vsiFyBMwXj18/joRy2+6Is
	 cQBxeGLg508xdtSeLLtLvnS9sqXQvhc+UfRgo3ebj1Lx+qT3zUppau3yzfAjbSHVLm
	 tmXr6uQoEhYTjPcpnw/dozPyif14+jH82c1b9ROGGE0VUyrfmf81IjCucLS+tkI8pj
	 d+9Zk0Zp9lN7jcuAd6XA2+FTNHp+ZRJyMww1ku7BOWjvIB7/fdlcGuy+/5MxF2Li7i
	 6pBtqMNlS35qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F309C87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175497299357.29264.7879143726682742023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26f605bee70a6a186da372c4c64041ba00736233841b1c8f7f12ffa2a9562691
Date: Tue, 12 Aug 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754972993
