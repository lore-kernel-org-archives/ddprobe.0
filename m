Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0E344998F
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 07:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783669114; cv=none; b=GBVUQfREXaNskbn2znQ8Hc8Fh59RYgHHKtLJYquM/7wcf1oTnzPtykKxSNBQZUpQIzkIXGid+tXaC5E+Cpfcead0Bak5eGDycFF7IqW78BLbrlPuQWSsMv28wE4H76w4+0zNBoXosxPUfnbqKbCV7uoccDe+0aoNYurxcaQ3tIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783669114; c=relaxed/simple;
	bh=yexsWk8FbAMvGC7EhKqOFhuTtJjeewnYsQWZEOBZGkc=;
	h=To:Subject:From:Message-Id:Date; b=jZB1NOUT5JdeRSxYs5h2wa5ZqRLnhNgotgthe43Qg5m1rttyi1VAczVKQ2wzsU0E9e4SCZydeE5XU4hQm0/fP6kHa7iAQhzdC4FjFbmtczfKPVqSecXwEimCwuYRHIuuaidxpue257A/rHsp9XpkMeR4JiwroBFWrG3ssJ/8HSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+Bz7yzf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+Bz7yzf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C902FC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 07:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783669113;
	bh=yexsWk8FbAMvGC7EhKqOFhuTtJjeewnYsQWZEOBZGkc=;
	h=To:Subject:From:Date:From;
	b=I+Bz7yzfd6LXqSm4wpvvBWSGWInoN3KAbX750g6ByXaF78qL9enRgnNeDK1xD7SH7
	 bQa6JUqfRX9RJbKkVYbg7hl+Z1zb9E5lZ7FUcr+FLb+wweVc6+tRXOvd63jG45PSxl
	 hYkZ1JxF2LaqOyedCEpgWw3ruO6sDd5cw4B/tyOLfqNZ1vQtMStOX3D1WGWRkzcvjv
	 QpogGFUzmx31tp5KQspYGzAasw7dyMdaWadRj80bKLujOrlKDRwEga2LLG9clbtmQy
	 qmUJKmTiOItOQKTjgvLUTOsrpuN0xo1F9P6J9RHdKMtdg1FcT1ljz1UpHt93Xdvg2w
	 mjIoHqpicCuXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8490C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 07:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178366911368.24205.8464250490384263245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d21a4f7fcb0d2763dc2dca8c5b9362651ef1eff620f4cbf054be7593c0dfb8e
Date: Fri, 10 Jul 2026 07:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783669113
