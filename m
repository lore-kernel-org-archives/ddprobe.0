Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F2326A1AC
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788925834; cv=none; b=D+Fi68MIoL722GN607Vf6wqc61sZxvMR/sdC+wMzKhIM6Qnhy1KK8wQwf2IwOsSja6xyUS+c2rBXdukNZ4KPlCN+Tt1WyOUwD26RhLM/zlEViH1TFVuDZBwk4jFFaeoqvUz6DAkIvxHEtI7iAY/P5DHNeX5XqowSZtbFOC6Ra1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788925834; c=relaxed/simple;
	bh=O+FfU+ARxGY0JoUvLjSjagPcp/JNURZAlekqCeFVI2w=;
	h=To:Subject:From:Message-Id:Date; b=IcAC4w4z8f0R64pOPLl5MyFRxcYrIebfcMm9Ez9TbttMLMPjhTY5S+VzKAFqK3x4SjrH+OsH7qA2TF9AG+JbLLLAfGF+WgBtaLFRTU5ZXL+qT2xR/zzFb3q3P2WkoFd6rpxVK/xBqGcPi4zZFtS2pfXKtF4F33m9E7fcUhmmuak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lqpVdtBn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lqpVdtBn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C94FFC2BCFA
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788925833;
	bh=O+FfU+ARxGY0JoUvLjSjagPcp/JNURZAlekqCeFVI2w=;
	h=To:Subject:From:Date:From;
	b=lqpVdtBnGUcUJZc/JadLj6q+gLB+7LBhiIMzfbo39KMc9JLEW4BT8MCeLv6sOJX7S
	 MotmQN7KbVgtyxNQBvvC7ny6Hl6DOSgWfpQIT6LFpRStB9+aUvPtrh+fChLLBsXGfs
	 4Lh8f9dEQNa07A/bgyZL/Y3uUU4xoFmw+xmc6s9+Y3fQGMsriTP358iZLnt2P597NZ
	 kzN7aBQKh3CUvwwKoq1J/8imDl0QM+4D4D19R+knEI02kQ1MQsyoRk5a4zyCgN07Lr
	 soVE676m3Uc9OiMCb/0/3o3QqQgE2kXBKQKr+U4LQwuqwNj96qNfCdr5hvcJl4Wrqm
	 ikrV8gE2x142Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A957BC79F8C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178892583368.18941.11764320339933586525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 232a63c3dd0730c1be0bd0c76f00f10f83c1933505009d80153fb74b5b36034e
Date: Wed, 09 Sep 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788925833
