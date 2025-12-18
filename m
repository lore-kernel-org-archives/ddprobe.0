Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 049122773F9
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766033634; cv=none; b=QO/EXscmJEa9ZENvVWanIEa7IaY7J8Wk+TBKUDWw1y5t50aWbO4obaASjyhj/XeaHRnsPLM5S5wFaHpbNDUQxonEXqF8Z+ip1W2wex6WfxReRi7Thae+1Kx4zRB8qkZygLF7yKrLqBy/4V03sktqIJ+o8ZSf3OJVjx4iPbvJyUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766033634; c=relaxed/simple;
	bh=MEQDmL03J5g86a8kSXaa1Vu+frr1LOKO1fSJkvXYhGE=;
	h=To:Subject:From:Message-Id:Date; b=Z6H9UR5ONrsmngRDiBiMW9LfWCtaxcmeI/makuJtgshxMaWpD1PeBisotIzuu7cHjRgFV/zWBxQWCCJfpYZBXVSljJffdzsTWyRgp12fcngAeSoz51rsAvqAP1zwoYTNFCVKx1Mca5+ZKpO44QlgeK8Qe5IDnbpMdZik11cppkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hojiy7+4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hojiy7+4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E24C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766033633;
	bh=MEQDmL03J5g86a8kSXaa1Vu+frr1LOKO1fSJkvXYhGE=;
	h=To:Subject:From:Date:From;
	b=Hojiy7+47Oed48UctBhWhykviRIOJMgW15bVR8yTMpwBA1kv1cshmIWNbs/o3KbD0
	 GbDGN9YzT7cYRVy20DsaaFzu2TmhAM5uhnlAfqasVaM8Bi/gn8ymgXtS0VMFawQY8G
	 0xSjgTzJIlxfvBbUZ2g0l1ZGzqOvHKOtmPQEsWwIdQzr6h0fYMfWEQGiokUtAo/sKU
	 Id2gCXxe5DqRWBssbXqkP7pvq/vvuZ6lZLx/64Nlq0x1oNN7Yv2O5yiZqFYB1+WSv5
	 HcJ8WzO6omyTsdL1v9TIoVpn3iMA6PQRlqXL/8R0tnxKjUvxo6b/JYQXhn99t5bS5Y
	 8ZicZoEfCverA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9247CD68BD9
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176603363357.12420.2468744847070445512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f41c7d5f2d3dac390f4676033db473040f92e0ea2dd37b0ca581545a0cb8e0a3
Date: Thu, 18 Dec 2025 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766033633
