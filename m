Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48CB34A0EEF
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788295834; cv=none; b=dkCiD10TdGuhfRM8yoRl93Dr7vguzxrHa5383cbW6utmDG1AwGw4AJ5yxASMP1Xic/HaiLQHLfV+3W9TTfHstA72vbdNA8ZiH83yla7OW8kd3ScsK6S1tBvLPgoe75hrC++5fOuFP1tNm9rvrm/72jQLLjugeysJyBP8w2de9nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788295834; c=relaxed/simple;
	bh=Qos6G+305Ka2h4KI8o5XtxjtaKaV/LS9GIfk8jrMWyQ=;
	h=To:Subject:From:Message-Id:Date; b=jNrgKlKwcRuvAYIVyFOgW/7XuX/yxfG8BBm5bf2FOe+dywfbixTt9OevzM+IdVzI1JHAZgiwNFl3xTG1a7KpL44OS610yrnATvoZt3iROY3Qmx5D/zl4/DSH7e7ToNrVuql3Nnr+ogaLuGA+/8kUaHrF8wuLlxguRz8CFBPwri0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q/8cGo9Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q/8cGo9Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8D4C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788295833;
	bh=Qos6G+305Ka2h4KI8o5XtxjtaKaV/LS9GIfk8jrMWyQ=;
	h=To:Subject:From:Date:From;
	b=q/8cGo9QVthQXxxxSo8TZGKnGwdWhtlrqnnxlp3tZK+rM0NpAYBIUBObjUGMKSGsW
	 ptPsiD5Svme3l+y9qVGn4cZ3C5tYVR6/ySVsyTjiSidiuoQMU+WRAOiRibv6ljGTo8
	 lC5gtxc3Pj/dUi6KHO4tR/+hxJeSnQGpHMTrc9Rl1pYtKTGLJ7HteJOpbZHG37LgBL
	 m8A7i1raShtNz8Zbu2o/8RBmCL1Y/1PeFErJnrjy5XEAwjKwYCiMGjjNRL2KnbpE/E
	 9+RCv4b/bx4Azuc6OtK22YYOv8PlVJKQCxOd2GYk112jlHJ3M+jJyJ8TFCD1dEtFGA
	 VPQfhVwh1HryA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A16C61DD6
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178829583368.14020.11856393189013242871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d4a292f7132b607d1aa0d9b05cb5936f194eb8c940278d2559ceb84c80ce886
Date: Tue, 01 Sep 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788295833
