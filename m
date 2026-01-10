Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5931F12E0
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768041234; cv=none; b=pA3GoBucyMllK/CeVQjCp9Or4R6uVVy27r7d6t5eIy5Yn3YKlVpZSoEFp9n+umA6YHuxciVt8GYGijF64acaut4KjJCmrqTvvesJShQNM4cSQDSnJTbTy5/yDOPDxw+OUXq1brW+emgKZ+baYUtQdZG20Uz64rEvWIG0RC4sGjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768041234; c=relaxed/simple;
	bh=Zgl6U8LzibxDW43NRWhRZ6GUZYRyJ60aVP5miTPQ7Zo=;
	h=To:Subject:From:Message-Id:Date; b=HQ0dSYPx48UyYjRnvnlCPmGujgwVdPNo0ulTumQpuFhABxw3SjB1SJmXiNC7kn2ev8gKP6vjXzGclGBFReV0iknAM/Rl2u9KUL/AYDvGFxk230a8do0awND4ot1PIKqGq+RTCUq1dKpe5gXepCtjaDtaQHAf2Hj1vvib82PHIq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LQLZzrjR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LQLZzrjR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1508C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768041233;
	bh=Zgl6U8LzibxDW43NRWhRZ6GUZYRyJ60aVP5miTPQ7Zo=;
	h=To:Subject:From:Date:From;
	b=LQLZzrjR5zaxHo2PS7naMx1sTcEawlVqsEK6kLQzC69BxAf1FeUY2Tusouo/Jwigy
	 p4VEyoJuDQcr/j1TL9DLKfxoWqLcqojiEHNMpsQSrvQwW5Jf7R38fKGGsDtVaepEhH
	 8k9rvInNl+TxGzuymTsNyv8j9Llh4I3RGqhuc4B05sAdIxjIKzJXka0IBQ8qWJENjS
	 2WWh9yUoYlxb638oDtP4FE0ZMmDzLS1uIYwuIU40Q/pB2OuUgjQhavUxUWK0YP4wgz
	 YCplDLNKv418TbjJl/dlKB7/WhCvtJjtzBuGQlO0oTC+d5R3hWlqzuIHTFBAFJgJbf
	 fvZFn4NxAx/qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6CBD277DA
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176804123357.24084.3198541481436691483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e47859a54703fab9c20870af98dbce2d246a7af97ba3884912a033de16917f8f
Date: Sat, 10 Jan 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768041233
