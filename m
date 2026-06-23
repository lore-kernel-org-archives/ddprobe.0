Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114E02DCBEC
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 18:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782240394; cv=none; b=J5Z9IdYugvhWKyf957GKcgGh2lJMIzEHu1o7Xkx00Xo5Th45f0AlVAQmdAiNw4St0B4GNeTE7XJ3St7A9XUwInCtfhj5iHP1VzvytWH/H3LegGy+M4MB9TM3ylj0a+wgkG7Ie4AP5xHn9ZJAv3g6piG84uQgiOTHhVtrIpIe2ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782240394; c=relaxed/simple;
	bh=NBe2mmVS3D5heyveCQFjEHYSAJQquDCerRFl6mWZJXU=;
	h=To:Subject:From:Message-Id:Date; b=IBeJ6mJ0qdQu6Wt5FJ5pFzZbKQXVHDmk+xaE6fjQp1Ka+FzieafB9SLYbdSmAdPHTHYBXB8dOwWzWe05+0niCZHwCn1cvFTZs+CeYp816mzJYH0Ysp2xW3WlmOIOtpnG3in4XB40PlqypncRY/62OVuFkxZRLnOp6B1+JPwHlF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POGPLMlI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POGPLMlI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9AABC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 18:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782240393;
	bh=NBe2mmVS3D5heyveCQFjEHYSAJQquDCerRFl6mWZJXU=;
	h=To:Subject:From:Date:From;
	b=POGPLMlI+d03urORujtHmKZf/BUDi36+tCxFjV9ubU6W1HAyKbqn6QUh25DM0l+tv
	 PQCENPC6a1JE5zHy2GZcNmj07htFcQ9udDB4OcKobqILa4t33wXPg41pKQBrm5mht1
	 hjwk/ZeQZbrjPQG6Bs+D3ldnhNUsWWsI0hKqlWhCrH70iZ7JZNQYm74YuJ8BVaAf15
	 7Hlj9X/3p21Xg4hwaDjNLTtkedow+yRp8yrH42pMLqOJZn27yLu/O3aAfyBBXvGXk/
	 8ZdiKjHclu/AsxKETmjq2RAOoLuknD6Tq6Kw41JnCq6DZkqDlcEsg8T25qCKKvo3Gs
	 Axv/egN9t3lGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE51CDB471
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 18:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178224039370.24071.7226809224069919108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffaf5905dad4f0f4f725d7471047be4259b55477f76df931c0894a061324d86a
Date: Tue, 23 Jun 2026 18:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782240393
