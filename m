Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BA71428F3
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723937154; cv=none; b=NfUnpmsWWY2EZXldG1H1QGFzen4HUTTug4yG3FXXZoTxQdQMMnu19ZpHVRy73qpsHFKnZ/vAde2e4XvdZ3afpFBKZRXMSMgthigYn7feYpzRRAYs0v8t7tbLjMobvuESAEY4oZroxxERzCGZO0CZkcthD+uVpRsL9KLXYTE/HA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723937154; c=relaxed/simple;
	bh=KDsScCk7RcQssgdIHJvARZJLVn2TZv42uJGJLB/DAhU=;
	h=To:Subject:From:Message-Id:Date; b=HJJYmSwQkpJt7nCuBX/8QD0KgzU0y/gdnQhPKmyjAPdXuTnifX21vOAY4fEi/r/NNukAbDdqyyqSvbLdNqVNUvjpMUzLMeA8OZFVi/mB2AoZ8M4IoUCqo9xRL4roUFnf5Bwe5Jt3fW+JrMy3ScsK//aYq2FEmlYyXyR578/FLY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nig/QI+T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nig/QI+T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7627C116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723937153;
	bh=KDsScCk7RcQssgdIHJvARZJLVn2TZv42uJGJLB/DAhU=;
	h=To:Subject:From:Date:From;
	b=nig/QI+TgkbkxD8kjVojy6Cx4B0W6s0j9svPqy9JceEA1jn0+RAwoOiSzT8rIBnKP
	 MXC2TDcxaq9LvavWHJYKp10SL7/94e1vMSty4YxSWCROy0vW6pBYmRtq9rxnkLw0Q7
	 4MOoyrFOiIl3NZozSjyexVrWJhXmAY9IPaMFTr/iQi+R50MXFQ8nKr+bvs4E5n0zpv
	 ahpzwE8G0y2Y5Z6ImsOlJVkKVUTlrRUdkT0oQ0CJxGElPlYjcvEX2yPmCdx4s4WRDJ
	 qTEjh6Ya32cjH9cR5Z2k2Q53dQaDZCbG50YtMhCSYKJGy9HlvG8P+7YhpG8hs1df+b
	 wciCAsVn/vxdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A105AC531DC
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172393715362.18692.18218044408688521514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4b68bd17710f3939931f2df5f15e8b6fcffc742464880fcb14aaeb06bc1a954
Date: Sat, 17 Aug 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723937153
