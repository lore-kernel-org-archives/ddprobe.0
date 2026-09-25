Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F4C3B19D8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790358634; cv=none; b=l+jQ2hO/DIxNGPwQf/9/5DdAZ1Di9Vditi4GV35p43wWl5N+xF8CGB7pj5EHzeMgd2YJvzQrxR/P4MjzFwD5gtUnCyXwuFBbUnCtSgScpAuGbJGQiXI47yJVXSf7pwoAOa07nlIuPi6CZHjSP+bYpJbCyi4Z+JTujOBfDrsBzpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790358634; c=relaxed/simple;
	bh=N0vNsJvnfE+GFVd34FhuDm3l4NXN2pC/kM5S3YXQc30=;
	h=To:Subject:From:Message-Id:Date; b=bRU2uHaChtZJV2bNhky4ErmGjnbHWSD+pD22UqFYkUaOMvzgizOSz1oRj9fkEFqnZvZFvdu6c6HnBfFPHBsXfIfhMdfUoSJQg0Plw6kPVWLeoE+JIZgNOjfb0j7sThcLjhEv0sIsgQaCQ2QUfJmD0iTwumI8BqRp7NiK1QG0hiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u04bltqn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u04bltqn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D007EC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790358633;
	bh=N0vNsJvnfE+GFVd34FhuDm3l4NXN2pC/kM5S3YXQc30=;
	h=To:Subject:From:Date:From;
	b=u04bltqnKrgP+wRrDTkzQzkEh8nDVmfiYtJ5E0a23Z2PpIsyo4RWl0rVm/xQitxRl
	 peG8z2NiRbQJPTAs7249+R2zk1ExiHjjwJqS2wtLSmOkBOTF8Epo7r571pRcu9KFSe
	 FEWjTKZwsOfD5xDq33vLnrkWngNSl1GdrWqMmsKyNl3IGfI6PoWY/AQCIGVJPCN30l
	 C8B4YDD+EzFE/ARO9CoPmMzSC9i2ossrJpXY5hCBmAv1D3ErYjbLviynPkj+IZ/eH0
	 iYlRUHeB0WRGS0OKQpqQH8JUopl8NSN4dNo9LxAEw4jhyml2CBINgwczoSQVPzLuhL
	 w5mZCkqOWYSbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA851C9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179035863368.18210.2955158964091158874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86587188cd5d277ec8541dd8399cb495a952ad784f70f8f6c6141a9bb70ee3f2
Date: Fri, 25 Sep 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790358633
