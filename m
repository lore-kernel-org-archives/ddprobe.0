Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25DB53D6A
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746139195; cv=none; b=LK4RjvIqKcSsGiiw6dJIf8N/9p7G0aU7mYhvGY2Lny32ulPo9wzPSdwbc09l7KJsypHFFZUs7cNykmV1ECN2z24yJM9qjevhI3Gg2M57E7TQRily/zvGndw4eVeDhMzBAdR8IHr3KJ3uE248l83+sQRR8jZQSfN44Vgwoe4dblU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746139195; c=relaxed/simple;
	bh=KHJTbNgxJlJz7NtIYpxysInJfNlAGOdb1Uqs1Vhu47Y=;
	h=To:Subject:From:Message-Id:Date; b=KwQr5hJ+NmxLw5D3v2JBviaa7DJjOmiKyCiP2GoY9MzeiqJCFSBQffpFJmVxmumv1lQ4NMgcO9Rsgw6w6Q4HgKy95L+FSg9XENp6VMzbFyyssQ9LoNSxkSkWDuPxIf9pAwGeNYF8MXshwEXG0TAVeZ2lSPXge9WMYH83p5hTh0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8usUc/q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8usUc/q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F80C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746139193;
	bh=KHJTbNgxJlJz7NtIYpxysInJfNlAGOdb1Uqs1Vhu47Y=;
	h=To:Subject:From:Date:From;
	b=s8usUc/qCAwcpDvecfu31UyNkQG1qSuRe6mH8Hyg+1tNLa9qE4hZNlqeTAKvmSsFq
	 5jTkfxs86Ih4BwqtIH/k28ySLLknK+2GNrCNu4bVz2hoNPhf9hRC3ScQwc15UpkIim
	 nmfwJVKoqXfqWqnsSpWoKbkXyLLiRY3EafpzXg2dWQMkhF5soQE0uwaJdpvL+6C11c
	 gVL+piJJFL0++80n7P8p4FHJfkygnj+b3L+YFz3eKRlQia6bdRYF+V004ClMSKCQQ9
	 CM/YGwlcjhriaUM/uOm59Ed4I9xMctUd+53a/hvuEUhKu/Eqidv/RQ72BfEHcZ/p8K
	 o/RUx7sL8Pl4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE9BC369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174613919357.7750.10789106407188448797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00ebad690c66b0350ae5bb83a4d4029061c6749245f5fbe201bac77bb0e08e6c
Date: Thu, 01 May 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746139193
