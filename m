Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFDC3B47FF
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 15:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783783714; cv=none; b=cBJL97J6lRBCAVbKdMhlh8fkYyPvxz8j6xkonlyY/Rqhphd67MtXN/d9KCu4AlIyNAaxv4VRzEa+qdVdxvXj2TwXDS2cbq3hhLiI+ySCrNK8vBAjyniOlQqYHDSdTSxgzi+dRKn6w3QwjEcb0bvkDH6zwvoQmxgoPHdi7GX7b7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783783714; c=relaxed/simple;
	bh=pADLMg6HlqAJa9kNnZPVFzAstUgGYLW0k1l7Dks391I=;
	h=To:Subject:From:Message-Id:Date; b=EqZ8m6IB1q9C3ofNKgLjiYlE6Fz2Ilq6kB2mECNNAbi/2GOkroJ6uhq+7kjLeO8lDoJwAFP9k3q2bafrymsqWk2s4HJcdvTTe6JqRctR3MetYQeNesGdy6Ydi+TbclfOosEO336NDubg3w4Oj97EMPIWHfkoP0VGndB+5ksEyyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qaE0NR/T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qaE0NR/T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9EBC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 15:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783783713;
	bh=pADLMg6HlqAJa9kNnZPVFzAstUgGYLW0k1l7Dks391I=;
	h=To:Subject:From:Date:From;
	b=qaE0NR/TG863OJes+2H/9HA/K5QQbSr3l2XdZc70L2MYTeAxJERGCHzfG2T2Ry3nh
	 GXkALzTW4Hwd2SVTgdoUEMJfQ1UT5ATZvsbxlzBQhEfpSE4nLB6j98AKt4bzEFg7zm
	 bjNlJihrSXmFqIG5hpF5hxmEULrzunz/yueIDVthiDkJIOapWPFilS3aqMoEyyIKg2
	 Pu0Hv4DGEEouaIqyUnSt9E+vpAwxG1VU9TYKadVIi/vcPoxzWKPzUxwzzul4iaxRLI
	 FHaupVcGnYO1Lq/VkDHtAVzs1h2xxrVF09HzzKasX1rsGEeaziBBwZNdlaIKKlu+mP
	 esgjWU8Q3ZNCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB21FC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 15:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178378371368.20307.10766209895619253820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b940594d7a70d64109d24f6030ff253b7913c7994f18ca25f86b170811ae7125
Date: Sat, 11 Jul 2026 15:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783783713
