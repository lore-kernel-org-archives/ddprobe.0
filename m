Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E384738C2DB
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774359294; cv=none; b=DKgocNisJxMCdesj1ESd1tjoxx3kl3n5lLWcUsCZrKbGLA+x0RKVaEXklV7rbY1rPhSM1QkvU6fNAtwdi0tJg3/L7kmUv/z1sF3Q3xHrD7C1AClE/bO2BfewmFrSX0Naq7EMoMWZl2UE54AwObjsp86+1kyuYxOve5aaXL2yZfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774359294; c=relaxed/simple;
	bh=dtfEZD3nFZ6jwfGAq3pxIihnhuJoxUvAQu2HiUSF1mQ=;
	h=To:Subject:From:Message-Id:Date; b=hrqOJxKxxxRVb+owTv9jrwQEPIhq2ObC7pRI6OZSNkxoAP6kLODnMdzE3gXVNc1jYweACpciMXOVHuLpkV2P56z3LKUnn5MuxMy5PhIKpzvg4GXaGirSS25TRchlBXdhca4zZufYDi83gjl+2Effha7NBsCC9oHa1pKLAGdeHXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EMTWjWjJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EMTWjWjJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16F2C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774359293;
	bh=dtfEZD3nFZ6jwfGAq3pxIihnhuJoxUvAQu2HiUSF1mQ=;
	h=To:Subject:From:Date:From;
	b=EMTWjWjJTliK2yuLoUqMlvEdMPs63qT1i3zOWs2fUvGbwIr5s13QstglUo/PZ1eBF
	 uWIXsszcvxBhogogy8aAEjJJq86UXrxMwYbO+lcRzhY0UBSch7UvA1Zq7jQIZbkdh8
	 nZuWJaf1ZRKpoAU5BURwcXq1/r2zT52iIMzFcuAJbbb+bNLT2Mphfr3o+k/lvhU/Tm
	 TNni5fivchQKc+qhOKhnp6h41a3D0FAypcA6ALp3xKMxjGQ3DuRfZxvBU3ZdlAgYtr
	 vLyhsy2MV51vbBX5iaU73pRBknZjUW/i2E7w+jcYwdAugsWMzPt+0geFB46WYMyWi2
	 DdAErJSsWEFpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D1CF54AB9
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177435929359.24255.4774238187145382579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30879cb18d70a2a2cae9ce9986cfa75bb68835ddd73914d9e3fb6801afb2cd86
Date: Tue, 24 Mar 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774359293
