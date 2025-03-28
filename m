Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4709B1D7E21
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743157195; cv=none; b=uVchWLQS21YD0J1Nk9knN8uDZXFZAx5G5W/Pcdoc3Gu1JC1aBWIMXcwPm2O6F9y8Kq//7x5Ykr16sSd7F39HIgg/OSQeegoBu5QGU0FYW4d3HipouZeJOO1CZKepEDyJF7Lol7ZhZrbLHUCXn/QSN3xJnG5ztQpCMzYHS+0layc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743157195; c=relaxed/simple;
	bh=GFwfkbk0vdQyJ0qNPDyurPdkGjV7l0tPQFhyw9RXotI=;
	h=To:Subject:From:Message-Id:Date; b=U/+rmLYFxPgfEx1S34BMoedn5qMwypbjOYPeeMqTakA5EW8TJZmz+thIsVhSq0FU3abwX6nWsNSCO/tTyfmaFsus8xPYtZnUQipcTKpZgh5icOOcrTIuiM70buj6LzlQ7/qXXKerVAzpCd/EHhugeycKMta+bUe90ZqVcbsyH90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h2xnfdwI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h2xnfdwI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DACC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743157193;
	bh=GFwfkbk0vdQyJ0qNPDyurPdkGjV7l0tPQFhyw9RXotI=;
	h=To:Subject:From:Date:From;
	b=h2xnfdwIzJrzlTK14osBOX8VDSIawS1Vj6TzbXJIBotqwJnLJ/gy72r5a/NCfPPSZ
	 jaIcU87Y4dtmnAL2l+xPnnA1gIpipttz+zoyT8dwm6NzDnix+6OoP+oPeAs4TploY7
	 tFqnDvlkJ3npWUAM7sGyw0Yk8vvVhBHJA6p/h9jkrZiBKJPZGu20TxqpLlukCsm3rP
	 R1os7PN6QYv/FbKmslkPzG9Rpvc9AxQIPQJ5qXc0tZbcxTHsFidJ8dq2WpqCzWgw10
	 iaH9RwRdTG3I5x9odo0YmTgwVdio4jvzoGfVNDJHmMpVEdFHS65xhiPiY1wG6TqWBX
	 b6bdWSCcrS2dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919EDC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174315719358.15143.16556553676435916991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a77f65956ac67706ef5c045d2231cf6953008cf1388f6136235e2a3c4fbd0d97
Date: Fri, 28 Mar 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743157193
