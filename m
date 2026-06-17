Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BAFC33A6E9
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 18:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781719594; cv=none; b=loA9TpMFa5szauA8CujgWqw2N9AIPGb4L6geIOJEk4/f0HjYPWT4i0ahDcIKDFK2rCeKKWImNiPWrKkYU+3+HiEnFEC73KkStBGnbjaQSslejD+Xr9tc84sq34qxe4J6mKGy5BghTSr4rtvQ4CsJJO3qKzWOEuLG8lv3hXbUsaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781719594; c=relaxed/simple;
	bh=pQ5Z4Cy59+Q2PyO35vHhqCG7U21A/QChlqX1dPov9lw=;
	h=To:Subject:From:Message-Id:Date; b=t/jIKIoRa/ggr61oWDSXAixtAZo8ewwdmct92RXKqU51J6BlCvHUv6qR07O6IailqCUV7HJdi9p2f0cVAREOoA3vWnB7P35SwHHU1n+u84cLgSjeN1f4sbtXb/3oWIx0beMasY6/aTgrdVNwTv7xIQfAfdWjptV1buKCqtw7zx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKUcdYLi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKUcdYLi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE90C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 18:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781719593;
	bh=pQ5Z4Cy59+Q2PyO35vHhqCG7U21A/QChlqX1dPov9lw=;
	h=To:Subject:From:Date:From;
	b=sKUcdYLidpMnSqc1pNxCGdlf/jxdUAAHNHeoDzuyIWeKWksXZhFV/ciSq/bXzVlUq
	 +iPJP3O2EjTdUciFTl09SBcda2PvoK34Kaqn4yibrXD2ePgnHM9MrbyXTvufvLdnBZ
	 sEEgw2H9kCDlKfF/QNpvfUbf7jeMjQqxGegUmg6CqAH3jcLBiCofR+7EBmv0qcRvNw
	 H4skJwYYLjwkF78Qpx+ZquvjhjY615DLnox6Ikd1bqskcDqdCvOG4VPEz3YUhNU/mW
	 g+RV1vRapi1+D2qwvN/gJioU/BCvfOb6ZuBGhDTDrtgJpa6FQwilCYcbhnWYST9TKP
	 CuVMbxYkwflDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6A1CD98F2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 18:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178171959369.11580.455186422181824307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fe899575f817d5468c4e0baa44b69a49e493780d531e267d8675e1cdea35c37
Date: Wed, 17 Jun 2026 18:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781719593
