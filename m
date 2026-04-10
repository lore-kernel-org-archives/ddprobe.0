Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3006F2BE034
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 07:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775805454; cv=none; b=HQmCZLQFokDEEIPg4TsTgTNtVvtLtrryjy/q7ZWuY7tq5PLJmbGuTdsu2ShkS1dfB0RJ6ZFaBs/jF0DrKOv6ND395X6qeAk81dFMNXUEpYGo1yqjg8e+gSBhrqWbWwxqfPQ+xBCb2JFz5yOhck+Jrh87hMI8iS22aPs9OjHdVPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775805454; c=relaxed/simple;
	bh=Cc5mK8v8W/xC9vWng6n3XIVfqJMUCpRApQsM5y22hzA=;
	h=To:Subject:From:Message-Id:Date; b=uURdAMgkUVa/VjHlz5qDMnwN4G2ja9as99fWEPIvjLQ9mxR1hAL/YTGdfKom2duu2if8F9Il1QbkuYqHRZR9LEKdi6WgbRVTLrxj84qa362w/XEH3vd+tamS3JBkYDkfYdy+wXUtceCVwD72duoc/2Dl2QWEck1fzYNIB4JTGHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dz9h1V+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dz9h1V+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9775C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 07:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775805453;
	bh=Cc5mK8v8W/xC9vWng6n3XIVfqJMUCpRApQsM5y22hzA=;
	h=To:Subject:From:Date:From;
	b=dz9h1V+fWDfC5WwYrErKSRhzM9tWQZmW8qux6YsPmuYyxCGzHgxv69xI2STYGUvst
	 PJmanpBzTMTUl/95QMhGlXSFvENLXbrE+qszJ8AJGUZdz9mC2hybX8IfeS7nYPVciO
	 Q04jpcJu6dP87CGUfdc39S1Amjb/hCXJj2AUQMK0olDhNsQSU/iPmIisHxxndv2yQ4
	 nAl6w11BGeiof5T+3CkE8e564b1LmawpV1v1eO+qm+s+IXKKpo5v+4Waro6i9J7tOx
	 ZsD7wIkdejlk+YcWgBMgNUryxULL/FsHWTBtyHeRqvE8I6FPAxXfgYY0Afq9ssDHc4
	 sVL786mJjNNiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A907BE99049
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 07:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177580545368.397.9679688164715508228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b3239bfb14e7822f05e67325e000dfe2a283344dd5d49e44569a0adef7ff9e3
Date: Fri, 10 Apr 2026 07:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775805453
