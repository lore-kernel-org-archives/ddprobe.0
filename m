Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DC5243785A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 19:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784145514; cv=none; b=U86+4KDmtiFyEZ5g9eutlaXFoJcC2EjSodHaRQFpz3M0Drjc8xo2yp0NgCWNBYA78caukgr8i9bS+E7GmLMtUsJmEZTxbvIYUv8NwyjniZviEcyl/WDaq6+b7o6AHmGKEw21aLfl2qLrvESDMo2RU2L6DGg1jFFjZksAuAQLEjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784145514; c=relaxed/simple;
	bh=YWoqLdOk1XhJwFLutzZF2sNqgS6Cphx1fMLldYpET0w=;
	h=To:Subject:From:Message-Id:Date; b=cVFJr1VK3HKXYUb6vZlrkMB7pdlUuQtC55KQiHYLSJyhPRZ/wRkHM89MaXQFeDiCfjm1f639PJWg20HdUDrEUWTCoM22wLFMHd1e6GAtyl1gniQicC+CWUsMXjk0wf6zGzWZyx6gcGyFs7xe7+CLlIrU/6oZ6FrbH4TASu6NUa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MEoGFQi1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MEoGFQi1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA969C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 19:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784145513;
	bh=YWoqLdOk1XhJwFLutzZF2sNqgS6Cphx1fMLldYpET0w=;
	h=To:Subject:From:Date:From;
	b=MEoGFQi1XIu1LnvGiyOkukAc9D6juYE6TxbtI+2PqlekNt/RuZOVgAb/N8sm3L2PV
	 30u285cTqn6uTH+V2o9zQ0WEZ+jOo86xXNxX0PPFq/q85PIunyJ/rsKjL5fviRvsIF
	 i2KBpDD7gNNpEaicVRXf8jbMUDx8a5Lp99IqxcRWbjWgeVdGu2CskyhpiQzed8vWCt
	 77ngrLrE0bd0SVLosZ1KmSi2u3UpAbTgLBQSOrG25IU8rXM/JwflzT5IRoN3t2hLxw
	 pVi8usPSioLajx73WxKOa7XtQ/TsNWc7N/GsAnrd3aS0fbdhcyc78nb1pbEz8IWgFT
	 bqTFsNhaLindQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F54C44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 19:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178414551372.19787.3655392580855756981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97c95785ad508a82e474ed928e35b12743192100035639621af47b63f9372f18
Date: Wed, 15 Jul 2026 19:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784145513
