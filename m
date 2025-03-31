Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471891E8353
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743424194; cv=none; b=RA5QNNK4wzjQymfOTszbq7+qvldMyOoRhX37K8pIUQFfw4DKOn1Cgh3DDWgea44Uj7GPJCLrQoyAIgnCkjtXH7lctQbNGQ7MCKSegUoG1m9QRP40ypMrhP0yG/iEHVHEW6izZyiRRbLNZgteYA384TaQFL4wQb9f5hZeO0d7AEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743424194; c=relaxed/simple;
	bh=dOkSRhzH92xkj0dvcZ009RtKRrhVmpkwi5Fi+DDP3yI=;
	h=To:Subject:From:Message-Id:Date; b=DDdI0xBcIIf16YFY73gjYNKh1yEfY10ksdU+aUx4T79xTnqZ7NsAO1JXh0tuW8gADMlmr0dY5fNDj/fDUvgJfULO7jtOCSbYnw0io5MCMV6Ozc8ZA7sMwU2+paLLTQzngl0FachJiednc6xZIqduSiQ+Ic463tEmkiIIPNAgMY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p71Fom9O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p71Fom9O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B0BC4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743424193;
	bh=dOkSRhzH92xkj0dvcZ009RtKRrhVmpkwi5Fi+DDP3yI=;
	h=To:Subject:From:Date:From;
	b=p71Fom9Odj2q0eEz4m7FxX+LRdRsYFY3zwjD56LpqMg0pMhDUtUSKMl6qEhL/9U9U
	 HdS2batNDKGzuEh53HCqkjQzwStqAfw6j6SeCZGyYa6hGrloJ9zZH7g3gmx1U7SALr
	 oWn12NdLtl+Q0Xc8xJxPE0cDllT3QBfaeVJyZ77REFPKzWFB61XT7aBjnL1UtuVYPw
	 cGQ4X5KzoqArC3kHDfwA8utpY3e1KD/KJBROY7AF1Q58N6awoUJiMFLTKe1/TkCH9F
	 4g2SvTCW75dN0dzVOPzAOZ6eQ1zxWCI9Jik0JRtFSNU1CKzL9R8GfwglUvsHDcTVcz
	 7iWcLgKszFT5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5B0CC3600C
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174342419363.22638.18359026148405811989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1ae3337232ed87a53a392312edde2930b08d038528b9cf15da028f733684f1a
Date: Mon, 31 Mar 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743424193
