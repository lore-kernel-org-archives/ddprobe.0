Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3721F178CF6
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726698354; cv=none; b=kkx+1ZxaCic3C5XbM5mChf5WAtoAKxIK+kaPdC1agry9nAZGDbb4Lp62VoSScljSoQW4rYiH2aEzjp7jr1mq4QuzedjGSUYud9T5oo+7Sfi5tB3vWUwu2Q1CimaFte2vJM4iq+wpGm4IKK+iKPQKM/bTzt7VjywHf6zYmWLIh+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726698354; c=relaxed/simple;
	bh=vWoaPptLXRP6qHNTLBYObcF2mRsClez12B21L3W0OMw=;
	h=To:Subject:From:Message-Id:Date; b=p8lbnr+vJ8upYaSFvRJ/2TKKiSJC5mblqPD0ciVFw2Zm0qRwnwmTsc4Fn02dTAElP71rITsIjBFEQ3N0cqpgYwTNdPulT+cYMgxq9V48o5O3TBEm4b3ZajQ1GKIiB9Xx8Db5e5gXUPH3L97hZD33y9d2yNbbOF22B1+W8pWZQUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=joJWNByp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="joJWNByp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F7DC4CEC2
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726698353;
	bh=vWoaPptLXRP6qHNTLBYObcF2mRsClez12B21L3W0OMw=;
	h=To:Subject:From:Date:From;
	b=joJWNBypMntfPp6W2ESW72fGvINtFqizNacAsGuYmo5J5qzwMi1C3LI4CtbBtQzhE
	 7Zt+ktQeCkFXqkuAg0PpVHHZ+7ZjS2eufSH31OUoDhN/tiq1e+zkn1MUWviRCw6HUI
	 EpZFxg8K/zJw630e8O0ICvi8erwdIPJaSD6pZtcQM9U/iswpyw3f33yrlmRYNw9a3j
	 xgimXiMaaja9vyaFIPv9Sf4QMc0UZ3xhnyyqU3RHCwnzdLFHqURnqXZZemnwYE6rgS
	 KfzhUNvsGSNwpEm2KtGgGTmiUJUgUBtl6tfR6QC25x7sBUMFxfrfHfE8QV/niwnA0y
	 8QEOgZ8cSJCFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9359CCDD55D
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172669835359.32492.12245341286232009056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2d123a6266028130a51181546b09d0e4c5bc75ff8d924f41c8faa5563cc4175
Date: Wed, 18 Sep 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726698353
