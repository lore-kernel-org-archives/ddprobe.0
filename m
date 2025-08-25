Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1670B1F239B
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756085994; cv=none; b=usrYhIj9c1bizwWJ+yp7cVJlrIkl0lRCRU7T3t/jwW1Dqkhz+Y/EZ1jt6K09PZEjMfqdl4sOWGjXSvRXmr1I77kRO5aoCa7MofriH+gBdKYpQeRMm9B4UPf1gOScZx6uB24HfQVYwsA6OaCNDsYhuOEsqf4PSxwzNS1WEED7yTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756085994; c=relaxed/simple;
	bh=I7y9n1WzBqbvZNXTYP9bCMAw7+bcPVU4aZHYsCCbl+g=;
	h=To:Subject:From:Message-Id:Date; b=NqTUWcj/A2mtnqcHMacb5BMthRHXvBQUgjUuSo/bKd61X//nj4yWH/1oVig+bVugJV3HlX4vpMecx1FLaFS3waru23VBmJzm4WXUyzDPa+HAxUv3Tt7N2/j+uQ9FbYN0mVIU5k3oUAKbnLqVTQllYOn0T9pR8bVIbfJXOOjdCr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TKH+oZmF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TKH+oZmF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9D1C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756085993;
	bh=I7y9n1WzBqbvZNXTYP9bCMAw7+bcPVU4aZHYsCCbl+g=;
	h=To:Subject:From:Date:From;
	b=TKH+oZmFQHrQcsyb6ATibgh93ouqWIee+Eu2PEZj7y8415+8pA31PurxPDKe7Y8wh
	 wUOc5xg4rlq9/jzVHQL/WKdCA3WA9Awp0Bu3nGwwLs3zt+1s9gLveXshPh0QjD/CKT
	 NYDaf8IBjiqu0xGWi661Qv3GF4DqvtiB57lZUKWkvTPbCDb2mkhIgEwLdRlsr6qM00
	 U1sj5DM1T4dd5UC8/hF/mEw7aV/3dDDft4JbSsI7PechFo+lS/TOUiIkZwDoaXYjY7
	 mTBL0q9XJJxYH0D5hQfRacZQpS6T3MdPsxVcT4s/IGSfA4ANg9xF25p2X1Sxg+i9/b
	 d9DyhjkDfPTlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0FACA0EFF
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175608599357.8798.8115354709712438975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 622bfa0591e226a10d5c8ebda133bba69d01f135bcf6fd1648d7dad34058dff6
Date: Mon, 25 Aug 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756085993
