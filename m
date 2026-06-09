Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3335E35F16C
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 04:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780979074; cv=none; b=WWOQquOScVoMavHWLoi41cTfwQgum4B24n6IycQ5w2DWwGe5R3464p/paZQxODbXEpEBoLBeX9dU1U8dbZg1P0lmndIbuiStrOa+7jMOXEmMexzT6MchG3Fr2wW71hHRO8DEqMKbEtBVzywjutsg7DmSQRh8qg9TTR9oyWqbLCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780979074; c=relaxed/simple;
	bh=W6nYqv9eSRYjf0T9irqIwYQjnjhO2lY7hZimKZ48KJM=;
	h=To:Subject:From:Message-Id:Date; b=DMq6/fi0N58cYCg9vCDjqCWBY424q8YJM3f/r9C1uUv3Zb4Mx78yyAd5yrOhkz9YwOFNB60/ZbHQc0AMo8Pn1eCMGwSUIo0yhT783qbi0Pmxvv6B87W4Mwf0sFA60yFeyMZL8LM7p/i6brvsrAIWBM7CTe6J8J+3BJA/KF3JoBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fUtHHszj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUtHHszj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF3E7C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 04:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780979073;
	bh=W6nYqv9eSRYjf0T9irqIwYQjnjhO2lY7hZimKZ48KJM=;
	h=To:Subject:From:Date:From;
	b=fUtHHszjZosnTz4DqvE7FSN0zG2FeXAn4lhZgM7E4UpMyP8qy/1kLAWdR1SrstJsJ
	 7V4IsB+mCD1CJMz2MSLaIVVlKdJeAC0DQAbryqeq2kmmPdCVUit9gVCZJVTQDoMIot
	 8cTr54I/eYntUFK5i5EMqlWLsphhAW0e/+Go7tYRY+SYp+lgJ/Jbm7LSM8bVpVnjgz
	 OJ+4FXBldbwgEMvCsm29vbT2hub5Xr+pK+soKHWnOIyl0j9iHLkhLuWhXPCjjKtcvh
	 FqYNJxtFMiqShJQPzmkyeIJxzMu4tFbvwJSjmp8GcVgEj19U2PUtmk7sQUITE88fDe
	 JnA2khf2NbYCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B056FCD8C85
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 04:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178097907371.32592.9494877055527377357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf156afa2c7d662ff4e6a1041f68957d6798e3e04a77a64e48643f91fe3dec36
Date: Tue, 09 Jun 2026 04:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780979073
