Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180792206AC
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761659994; cv=none; b=KRg+A2EQYei+ZsffWB9Y1pBE4IqVPtlATuMMF3XfjJBatpAtwVGaR5zPkGj/0Yzu43SfCO3rJamUfJUXVzfBcmfKDR/07BtXh5ztq/4vCY1PpILm1pVIsB0iLMTsooU7JXXCdEIM6dx3wRqF3CkjwQHG0jiM0fQ11m3ihxz8Efo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761659994; c=relaxed/simple;
	bh=1dKRIkFQplLtwUGVguwcarrqt1r0XENyuEKnvBhfdmA=;
	h=To:Subject:From:Message-Id:Date; b=IYWsEsoo/7TaRO6ELQTJ1boexSfFY8/367z9n3gjXJOv9ChlIA9PmU22ir62Yqf6r4YelPeTubLxP+kZIWodwG4BHdJUcVTiZdIUWrVI7Vk4bQQUEcg9lGL1ClX07iPSjD5u9esHPGMLn9fVsTte+lvODZJpsd2wExIeXwUmt2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/al8QYR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/al8QYR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3217C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761659993;
	bh=1dKRIkFQplLtwUGVguwcarrqt1r0XENyuEKnvBhfdmA=;
	h=To:Subject:From:Date:From;
	b=R/al8QYR5so9Yo/7sG+k/1RG2oL+9Dp5km3FrfrE4EU7I1GRpujLJBPDXjhCb0fDc
	 drh2YOC+NXZpi28p/xCFY/87aQBnh28R5o0W+Ix8gIkfpa3CULfSrRmzpJpYq0eyib
	 sCEh7Gax99P/FNuQ7M7KrAPBZlpaMRqnE1ZNLbabAFTjHxyXJg3FaqP3ZihMa6DRbm
	 m+ubQ37vGz+SwSO+IIujaekRAvANI0y2eDOddEjsxISLpOqqL0pJfdBHKjsmQ79rxW
	 wZSIUme99k5NxhxMSET1+ydrpB17CuXmXVHshG1ARrOrhl8Z4t+O2zoJqvibLS2q76
	 WWMiOkyj768pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93890CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176165999359.3956.431251717097901957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18c42eb4c2485b5eac1f49e495dd0d5611117722ecc865f81e61a6b9487eca26
Date: Tue, 28 Oct 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761659993
