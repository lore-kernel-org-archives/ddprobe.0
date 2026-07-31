Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D6E2E62A9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785526234; cv=none; b=bvHnY26p+pMgwUDim0KXWD0B2h4gb66pUQgNPaE7w09WWB47FXPEY6q8xnAjBNuJHCfl14lL9osTjRfVx6Hc/Mz1zJodFV+tchHwQc7ztAUVeNbbYYecWdedf/PPNTRttvEgLgDuvCs8RdbHAEYY/pAYVlW7wEcJKSZZ5XgTnAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785526234; c=relaxed/simple;
	bh=RJ0wu3eLWGMUgcIkyAmOpKTFwFeT6xB1L2shYsOd0Pk=;
	h=To:Subject:From:Message-Id:Date; b=cVYiwQ9KJuajtrR0CBHR2XPqygmi3v9DN8t+u3ai/XD4lczd7P0lUM7QSTRr0v4R918CYmoLKUsfQMghVLyUcO7fVaacuZuQ8QGoKRwh7LIxzZo2MYSm84Im9hmkjZ3/y4WTBxflC8EyHaqXBFf6K1CgULqzxY5rVMNqTrrU8EE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZSLDbuo5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZSLDbuo5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE92FC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785526233;
	bh=RJ0wu3eLWGMUgcIkyAmOpKTFwFeT6xB1L2shYsOd0Pk=;
	h=To:Subject:From:Date:From;
	b=ZSLDbuo5/4RyFLudsrVmGvhzbrX+z63A7x+YF4NZDT0xr30SxAFB4kjCI7b05V8Iu
	 yJBvSgXB2wY5MAYl7Fl0G4SuVWYPDRbY+oWGVTB293u9d2lCwBsCjvqgxu4UH4z3Nn
	 QPd3SwZprg+Shh0MU/CuvW361AymQ0h2fM0HJ4NAtrxRpJX8Fi7gOJXFTpA/Ol7AyQ
	 1V2SWT/P3n8X1a7blVklz+H6J4XuhyzjElHB1jV5FnJw2GCXU3qOydL7g8IyY04PZ3
	 RM2CcnFd0FVkqB0MNyrgmg4T3wO/SCfaa8BYPQw5nRKLcObXYjl6sPzhyffNfnHfSo
	 QYO5C9Gh08+oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B706AC55173
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178552623373.2963.10415795342319895958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f737a2fdfc1fb1221c99e18adf29e07bafe4391cd8d5ae8bab6897d4dfe5b71
Date: Fri, 31 Jul 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785526233
