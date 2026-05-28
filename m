Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0AC63E5576
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 12:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779970354; cv=none; b=cZh/f6/ei/N8diFpm58FlIvel2oBejnGTbZRq8rB7yGDUgXTvp82O0vwuYIdfsDOozbp9HnLQnTQH/PtXfWtDSO5zI8+6xBKqSaEV6V7cJp5D1JctHwGJQ6EpG/B5Ddi+tnYEratQ6ZsjKxa6auMtvr0LYmni/IYCTD32bTxua0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779970354; c=relaxed/simple;
	bh=vUVlll0kFeZV2zlGqAd3WMTEYqQrKWLCtMHg2Q7OJfs=;
	h=To:Subject:From:Message-Id:Date; b=UVLV2mU7bOfkSE5cv+GpcB8L71gmwsiJ68UgzBgQ4HYTB9dp1vD/cKGsbadcylfuCulY7m78Dv9p0FOQXhfEbYkno29RDvih3K/zufEnNAejmVFoQFP0kCpx84VRj2Z0cZa6c8nE8RDhSGxssOwIeYtpRnBZbtYPA8PLxdQiixw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U3ysdw9N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U3ysdw9N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB26C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 12:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779970353;
	bh=vUVlll0kFeZV2zlGqAd3WMTEYqQrKWLCtMHg2Q7OJfs=;
	h=To:Subject:From:Date:From;
	b=U3ysdw9NNXMsCLwnlt0+aMYQ8BNEns7tF3rhCCMKnfswgiiejWvtD/jAxH2AtLYS0
	 qd+z1/BvlVowdB27FRQ+W9cvygidZ7q111qqI+hoWzx+C0u+JcvWna3IXAb7MQkuE7
	 v1CML7zaL0sm691sl4TpBlwWpndo9HMNtXW4lc9jPmBg3xbTj3TlUEkBy32ICXX0QO
	 stjZb45nsJ75Wnexs6197NLFgG+FBivePiswQA4zV9+yQWxiWmoTgpG1vv8T44JwA8
	 WPJ8ewC+R+Q7d3wtoWnaQ9y6eCjFLKb7cUmNyZSf7g02m0HwRTXtOTx5VDf3dnCt/p
	 hSTW0I40Y36wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BBFCD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 12:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177997035368.15374.12364895539672599025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 641750249e65920a89b35aec5c7589aa487bcfb84d669225019ee7fbfed6d364
Date: Thu, 28 May 2026 12:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779970353
