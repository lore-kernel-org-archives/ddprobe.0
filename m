Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C673D71
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710567497; cv=none; b=AtIKTnOCZeTs1o8jvh02lvsVBRHVtSz6zJfA+ra5d2vDq1v8cc5tmLlbS6K4qvhaNXxfrdgknT491mCAMgmkfqMMlfFGQ0mAZTddCVQb4FbqV7aPYEPtmdrhF28sZAyCviX1IEseWorccBX8eoAUFNrIlgSzeE50T3P16LHThAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710567497; c=relaxed/simple;
	bh=Uw3FFYrFneWdr2Alh+wqCYSKIZESKWWcz2vWCOEC2no=;
	h=To:Subject:From:Message-Id:Date; b=XHK678Qw7xBwR5Jl+Me0WZPMf7p4OcQNQ4qsvxChH2FXB4MtHCd/h00RUW6cYMO1O4caTbCfbM+fhCrWOIvHQEoBMK5JBUIWT+aklMwiRPRmXK2RPnbQaXqABqYcTPHyMRKnu+QOeaBWAVJNBQOmOPWrhPKJ/iQo1D+YUjLVu7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O2l2z4de; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O2l2z4de"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91157C433F1
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710567496;
	bh=Uw3FFYrFneWdr2Alh+wqCYSKIZESKWWcz2vWCOEC2no=;
	h=To:Subject:From:Date:From;
	b=O2l2z4deAGvdGGadalRXIZLVGuSPS7hW6AikXTWp4Fm+NR7CNcTIDcnm1kE0LZDaL
	 GicVZzb/I6ONlYJf+YxzFpmmQFCdo7TPJy3zoAu5HP/lnHqKHKqcoFz2EL66cZK8vh
	 +RCu3jJNiK+V+6iG2u7aDdMiJy1xlTaNpj91d4hgc50PMQiqJMsQ6nKIa4iEIXCIbj
	 eT2+OWmbGquMUhssv7zcpePZJHsJfBQkH8ElNglSVXHh9Ot8RgoKQjj59wj+R/N8CO
	 RpVr3zmTDkXXQwc39mWu+02VaZvo5D/giy4m6nhddAVkn0hYrXw4cW5ZtlGvALdKtc
	 1pAIXWU75ofSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A45CC54E60
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171056749645.29286.7004974600812490557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 043ab770afdd4ea7ff2b86f846d0bec014de71116796378cbcef8c60a7229fda
Date: Sat, 16 Mar 2024 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710567496
