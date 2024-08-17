Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74B1B256E
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 04:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723867554; cv=none; b=KY7W+r7ersfguE9jL+CzXDwGtzybEb6AjPVbqKZ+f7mTmfaGGuCyRse/Er3dT0nzKNgcehPNG+IM3TvULDC2OfHc6Lln57HhiDZSJkwbXiWn8gHORVZV+khEX6yF9mi95DEklUutUMK9OFyfm0E0Z4basU4DaOvF/TWvTSkJFAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723867554; c=relaxed/simple;
	bh=ttUQ7do+GZRlSA3mcUfAfEzJ+Znov7BOUtiMt0RwlF4=;
	h=To:Subject:From:Message-Id:Date; b=CI+yyWFrcyFQFS/XkReSM9Lgwq4X9QY9CCYCO+F4V8hz7tp6gmC21zIZRS7W6c/Y+D2Mfjy+5hcXq47SiY6xVUVMiAiGxkRvYW34glIhyWrNAm7d/KMP6BdzuKImUOwLWO46HizsZOK9m8qDaaDTXK4pifFqZgtKB+/ae2XrJfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EyJQfYOv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EyJQfYOv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE839C116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723867553;
	bh=ttUQ7do+GZRlSA3mcUfAfEzJ+Znov7BOUtiMt0RwlF4=;
	h=To:Subject:From:Date:From;
	b=EyJQfYOvijYWwmWHAhm2vKJtHkh2a/QLy1bFSqNxvKZVCQ1nmQcVqzdPXq5OGhdm9
	 ASJTn7JUd8c6x2zey4RQrUo3b3YvSvCkq2ki+CNUQNwChXMss2h3EYT83RR/vdGJPS
	 Q6zaPomOAOe2P9xbUB9uWfyzDiJPAwwQXkLdaAoYPJJWCOw8OSVg+qlGY9aZCHmBh0
	 olayjEsHCdox97cQaZExKRAgmf5aKuQ00aOp4MXWoWkWHJ1jXtJOKG0o0PQxJVb53n
	 KtDlSTqEEySnDoZdxOWYUggY4FiEiCQgra5BjV+UehybxGnq7J/MxfZIH96MZ66+aj
	 YuHmhqOVpyXeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9CAC52D7F
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172386755367.29552.1413193229926161208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6404143e259344c820c55368366938ffc5a39ab70441793b89e15bac0e587c89
Date: Sat, 17 Aug 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723867553
