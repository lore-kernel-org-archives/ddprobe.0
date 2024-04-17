Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68ECD187F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 02:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713322163; cv=none; b=Oz5RSQ135ogyVciDAce1RL76NGZqH9CPIxO7qNryimN7WJu0mLp7w5f5+OUm9iEkcqB3OMEHpk2u68Ho9TU7/ZVsJCd+B9a7o+OI3X2eixVuQXUr8XLXJyRfGOd9HFUTMkB3sb8bUZrCOyqgB0SbEtCv/8NlDATfe0U1R5iDwgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713322163; c=relaxed/simple;
	bh=WTVGTXI/ohpTziOhsefQbGD+F1XVxV78ofY52ESv1iA=;
	h=To:Subject:From:Message-Id:Date; b=bEJWB8bKLwSuYOvV2BacQki00BON20N1cdsrmaTCOxkvFEiyTPuIPkMmzZIubJHVuCOrPR1KNDwTjYVDAkDLr1QF88vhdyTe+AmyDgIkV4J2j+RsvOQEWqYnNqdLWYH9I97+eAy3htGCMRxiqu6Pk2Rhdsxw5CXNrSD9PSa2adw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nRdbBrtn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nRdbBrtn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15F4C113CE
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 02:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713322162;
	bh=WTVGTXI/ohpTziOhsefQbGD+F1XVxV78ofY52ESv1iA=;
	h=To:Subject:From:Date:From;
	b=nRdbBrtnIwu2TQ+6XjFT8FIRAvg6VN8lQyQPuWOUBsqxy10qRaeR+T3SymaTgEy0w
	 zfn+sSo0O/Yxj3aBc5F9qDbc+zaKDdeMEFqcOo1L+BqQiXrIpoMjOCZc37hd91pKUb
	 En0Fgjk0pGrAAvdILaRii2nJtLSCNFK5OUrtpgBfgIOOs913EztILrf5gNdA2kkXiQ
	 wrMIiO9YQM2DWSzoA7tJ/W5ZlA2kQTygyX7pEfiTe2+bUd6Z97nItYvYSNtQBGB2zs
	 H2vmgR7WZr8F69mI0QERr/Mtk++LK3Am2XPmizsAi8NI0CDuBwgiVhxGcorQndQjdH
	 2cdg/sMuMGHwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCE94C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 02:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171332216276.5401.14560569586567003043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76ae677a7e195c7482af5a87523064d6c09b3388b310eca0a26deadc20b9c3ba
Date: Wed, 17 Apr 2024 02:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713322162
