Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD87382
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742361594; cv=none; b=d04cN1Vdoe2aZvj+IyoXTFk5ff70NC3GE8vEx1xELlkPlikXuqm0cbok+xkjDkwJW7NwI/L+MVstJBgVZd2X3W2hiqyQuTK9HPtUvBytg8My11aJdWdsgNfaI8AlFiIGDqbj6siXVN6cON9K79EAJFCsPbC8zk/oggQFvQT3VZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742361594; c=relaxed/simple;
	bh=0JY7eEBsycVAiCvJ5TV5/cAiaKY/goHnV5VvFSJLtAs=;
	h=To:Subject:From:Message-Id:Date; b=QqK7YQJHDEGDn9E3rFuFcTtXOfnLwlh+tVLI2/NsdWDHRy440eawAQfGzSAet+Rsx7apHCk1Qk+olnX8vMPheKOI3iXlaIv4sE8EDy44xvEqrj407Ec8yNh3vhYkR2Dd+F5+GqSepTf47/RAb291w+HxnRFv88W9IqrOC4DTUrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AIZ6FFaY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AIZ6FFaY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C38C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742361593;
	bh=0JY7eEBsycVAiCvJ5TV5/cAiaKY/goHnV5VvFSJLtAs=;
	h=To:Subject:From:Date:From;
	b=AIZ6FFaYjejp0zsGXjwzGJM2COZXj8h7lQ1t3xx5ipmoI8BKFHFo25tSfcDfTc7TJ
	 t33m+SjR4RBfgYuGcVK/Wx02+IpEd+VbcV8W60JWmu6HSrglFGGS+spP7QVHNBiVeu
	 nsPn6GDZVJzM3Lh5orvPdHp3bUbGDKaP6lmhr8f7g9Ztt+H6PFSN92yV6eNL29qSWz
	 1L9aB8Xrqm2Hp23g5bOOXIz4S9eUUIQbnNp2QkhaAm0qaX5PIrpCPNLmv0Bs5KfC0m
	 a+0SNZjHCokiipQiedVjN9PMiACjdYBA4yJpfU9gmrHwLChVtK4TySgemtEh0ILkZe
	 WB0uhq3alnvcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F39C35FF1
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174236159368.2389.9852447413511241632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d69438b0933eaef22288dc3f70f1146c9652386b1adfdf068ae0542e0b9f297
Date: Wed, 19 Mar 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742361593
