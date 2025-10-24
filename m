Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3A42628D
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761269994; cv=none; b=lW2uDQ2XTpMlkPUTtRYcpMG/tAmvGj1TWo65mvxV2VrAs4ImEsTv2Zq/oEYSox7SLYjGz8nLUR090vDWFfyc8qKZGIpk3GxaUzuPDVmdvGy2WBM5mxsmAKtbV95+Ig5/CvJqtZFB9L8X1wQgCDWssq4/r3g+cT5i/Q8sx3whO5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761269994; c=relaxed/simple;
	bh=oRVvqZG0ks9FUAP4r7wppV3AqxFeJRU00sT/2eaIhDg=;
	h=To:Subject:From:Message-Id:Date; b=SbSmb3x1puaRmQ+jOfT5yHqdqrI5OMpMMlSTwNJ5n3H62eZVsNavs16pSbpvA27hTrDbrRo1+YBMEuOiBNpReLhC3sz61YOTZ3IvlGr7/Vs5vhXx4OfT2YPeLdOmGbvGXQTgJaQLQQWkAr2ZSnk170cWeRVxDDHhtrFHV6cmO2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kPOMJJgp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kPOMJJgp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C82C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761269993;
	bh=oRVvqZG0ks9FUAP4r7wppV3AqxFeJRU00sT/2eaIhDg=;
	h=To:Subject:From:Date:From;
	b=kPOMJJgprEgaj55CDU+MLwiDgsTuuhq1D2knA+9WkP0jYczB/ugKMdltKqD94HfFV
	 /DGCrbmNQxlRmraebVvlluwZ86P3aoTU9NumYbCaoA1sOW2g6eC2RSfNd9xKW44z9j
	 5NgVABSUKwYXVgHTF9avtXrow2j7uRKwcrtiHFtkqSjshPKizBxtPzvL+RJfou3btH
	 EKvDzPsn6pq/MtB07soOm2LdUnGSgyf9LgU7R6SuWORnbWNrg7e6E76BOnN8v9KgJC
	 z3fAKVmxy76pVUdRFnGyfJWWh31a0apxmk/qdAq3LKamM6SaGCSPxbTD1kkXfMBfVw
	 15FiHSNnnlimg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927E3CCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176126999357.14009.11281297483336378542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71084795e251157449fd0371c497ab2113193cb48dc51e8ed35554ea9490f9b1
Date: Fri, 24 Oct 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761269993
