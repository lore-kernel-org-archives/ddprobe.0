Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434152236FA
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 04:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782362854; cv=none; b=SryfAfBp+sB4RGFel8WMAXY90sC0Qa63TUu8X6SyUBLvSnkfCxZlvX6gzNNxmDXbrraTrTzo17WQF2+JsnpajCusk6WU+eHsH/LixZInrccVNOyJ9VfA1B/vPCLjYp5afLE9P17GtJiljK+qm8vT0dpKgulahFLZQuOl0OcLCyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782362854; c=relaxed/simple;
	bh=9cM54uAJHPlPGi3joqTcwLUXy+XpCjwhe9rXQsco89o=;
	h=To:Subject:From:Message-Id:Date; b=WZDdjmnAKEXV7XNOgvtaEVTltLhNiopYqKdr0y+46AB4y9P1Kum6/CbLRnehPrc2D40jLNI2cZUQ9bh8BPe1DxSf0PZra/rZ0ZwxuZ9VkQ0G2dcIZt7UW6HNWRh7JaJIHk2BAPMjfwCSDEpxxqdNK9q2/VH9HvEQ8U8XI1oV5fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wts6gM4s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wts6gM4s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3244C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 04:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782362853;
	bh=9cM54uAJHPlPGi3joqTcwLUXy+XpCjwhe9rXQsco89o=;
	h=To:Subject:From:Date:From;
	b=Wts6gM4sj+GJNS2ilhgJYwoU8JdJgZCJ5RMJ9QLWabkigHhlVFzsfr29t52lD9DyH
	 YlgbYcSZKv6owg+U3D/yitHHTj5yr1vG/dL3kcpBQ13xk6DKpVfA/d6WM1vuyLJbnj
	 is9Rw2piMe/sdeaVHUqdPyKOJFyVBstUACibcQk+lQYd3KWiy7C/Ty4HYP1tgBUNFl
	 I1M4iyf7Ou33Bdq6Y3+EDE+OmH0wvGBkcEdPcskdT6UdGBvQxyePB+XmonPmMRD79f
	 Q5oVzIsUHPiqnlec9o+Bt2o4iuuODeirqHqwHk3ly9g4jqui6InSHzbQjJnOa9nm1D
	 XJHM+fszeAxHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7152CDB466
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 04:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178236285371.15804.2321412400161842218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1f138c26fbf51cdb0ae32e531ef75986bd1dacc648af5d75133fc4ce8dd59e6
Date: Thu, 25 Jun 2026 04:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782362853
