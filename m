Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3458536402A
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772010294; cv=none; b=kSaphK58jiE4UWuNcGJGN4UEopY7V3am0qSGr57ksoMvzjCphh/hfc/eevaOYQDuEY8mQMfM2ATj+L5f897zquT1LpUqnay933+IAlLFEqdBKTpfDUyDkVdYOWfnwBh8osPQhcffwFh2EkLDeXwFal2YBsC0+y8ESatqPKWcUTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772010294; c=relaxed/simple;
	bh=yGPV5VVzp4N88uBJG8pYNZvHtWbvM+UM+Jh0G8BGS5M=;
	h=To:Subject:From:Message-Id:Date; b=N/i7sM4zYgTYidda3mhwnfI/jZBoYKw5KY6XAj5MiDAo+WZVmVMOdSFocVIJokiQrDtzrHit6+VC89IUQRdgMyJS+DNEBmEHGigR1MV0gWSjpPR8JJH0fXsNxqD/cq0LrbXz+1FEe7/96sVuyLXqd0YVG7qQhPtIRLazZiOrNBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iBWJlNmK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iBWJlNmK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBB8C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772010293;
	bh=yGPV5VVzp4N88uBJG8pYNZvHtWbvM+UM+Jh0G8BGS5M=;
	h=To:Subject:From:Date:From;
	b=iBWJlNmKU/fN5ORura3A2UdHdLCmZUKhLoJ4gs5MpRcUeB8VGjFr+NKcOGTTzEGFS
	 Wss9l4nLtxLyLTcL1MUYNxTUFE7PmWHuwhfgxmaRVtKQc+3H3l58GUsgSCav3mGViE
	 PvOmauQIYaLnJrA1RF088G0rZeZjjMONJxWHRyul/oSz9yRWyyaL1IWL82jyJsCv1w
	 h9HbmTHqw2OZBBilbVUu7qSSDPL0tTtoMAqFA3KaqMFWYxhTSYrJEeBcDa7PrxHlBq
	 lleL3F0EiZZ72f+mCx9LVYj24JfqhGfwt4C6Zr7cQys80Yzry3dwyC5Y1Lq+zk8U0e
	 UwftRgwpYPx3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90460EFD20B
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177201029358.14101.4295726010743299741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3095b3aa281694cc26c4914253418011dbbc6b221d8ccbdcc420b3aa2a0d9b76
Date: Wed, 25 Feb 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772010293
