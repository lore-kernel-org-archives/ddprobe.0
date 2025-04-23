Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A29A28A3F7
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745423394; cv=none; b=G0xbfLvBP+PNs7VWKZqePvgj3m1GTpnDb+FN/lVNotBY9WLyiM7coQoT1WF47Of28xCNxy3affOfBsuITYkZ252My0GDERUBRvGIA5hGanhnrddIweZ3bsNfdETS4lKbnW9yN4nbtJKlZQDLJVKmwwvQh/r4WDOEcYd59/pquFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745423394; c=relaxed/simple;
	bh=QQIlDZaqnDH6cRTbLUHSRlZJc9Lw/w/CLxN/fZ2LSXg=;
	h=To:Subject:From:Message-Id:Date; b=AOGbuiFlmNfmkmnKBKBngdLoHwVl/vL+9uWnb/ypE8DMp+Luo1V0yHSi+PpbhyTkt4PbI0rrkf5TlxFYR7Ism/V4EFvxEnn+3Tuid4xZRsNVN4zoAleHz2TIMtr1YR2AQYRx3KxMmFLUpWlfjvhHgAOSPCKmG433TSN/CkrwHIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GABpRudz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GABpRudz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2905C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745423393;
	bh=QQIlDZaqnDH6cRTbLUHSRlZJc9Lw/w/CLxN/fZ2LSXg=;
	h=To:Subject:From:Date:From;
	b=GABpRudzc2rQyOIyibkAHaPWNJcy2lqv451ZDZPl+oCjxXdFGcn6XpE0+I0VWyCD2
	 8s012SwUsyeB3hCHLzxRtDRQqKRwt6uhF1oqDolGChNEOqWhnVnwqCfnHJ6ks+c6vj
	 nxHlLUU91VydJv8a0AGrWrrWmROJVFyq/oyNng9Bzhnb4lMhT9HFowfVfvKrbNOEhO
	 qa3CuGa1J5Zp9t17sJucCyhMHpmrOuyka7YGLowrKYXvZvw7rYdvlrUzFz093bhuIn
	 E7hygXpDLpc+anoXxvxefamhlthg+3l99tJ5Wfl1zZjlPdNAmZmE9jo5wKwdtIBQ/q
	 E/BtgQqMFCUFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AB4C369D1
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174542339357.14627.15718744272520769823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b08a86facb0ab6831bf6d3e0c3c3f436ac05303a2977ecf0a320cdc4207ce90f
Date: Wed, 23 Apr 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745423393
