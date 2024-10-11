Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26320192D77
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728626754; cv=none; b=A5iTGAfaZOAMObrMyu+THjf2zzqLtcITEECwgVRT6CG9nsdikMCousg2zU1apWVkIq1WDrLFTZfz9jht/wuscUazx8gNOkosLcwzOdg/obALZQE1lq4VF8IfB5txMaxFQ0JcZq7fEqYotmiQ3WUxY7ZcAimwg9M8Yk5UjAqXmBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728626754; c=relaxed/simple;
	bh=7zaXy2aOS0bmG7855zcyUpm+sQutNbO3brOE+nDEc38=;
	h=To:Subject:From:Message-Id:Date; b=owvuB+57s1hFa2vGCQT/bR+xcdImiVcH1eHkJGMzY/29p+AGngRiYIfhdO01IgSknZWWyxv34Zf+gxwoYOUTxEa3J8KNnASsjEt/NPFIaE76Lc4DAnHC97a961FjEKUtfHiclD8LlA3JVxWKJ4LqSLlHqsoLkmzJhe2bveJafUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dHxFlwLM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dHxFlwLM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B82DBC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728626753;
	bh=7zaXy2aOS0bmG7855zcyUpm+sQutNbO3brOE+nDEc38=;
	h=To:Subject:From:Date:From;
	b=dHxFlwLMnyvHWynJVaw42RGEN460KFYU8S4IWagzQxFqzGONbyzayo8kPy+fXUZU1
	 k3u2vjJPKtpMbrpKc0Ei8dzB4lOFHLx2USvmSiZUE5Q3GytTu6E9z9dedGFOHIGyRm
	 TVsFD+N4p3hmxtTR8+Ev2uBhIfBMg8zvGaW/xDVIelnO9QDx8AETVgOT1hZ+wrREJz
	 O5imH8nLB27g9lSMxJEW34+MY89f+NBngaiUinqrAw5ZwBSaN3jfUc/NR9Qfw9hOaE
	 LGrGhOSHTx80d/9nx31qOKh+RAmfBK5mG3X4l0y9QdSxIK5k7COTfxXT7FDaLKV8CY
	 tlKK9MZJFoC1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A33D2D2447B
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172862675365.11459.15210008427293781269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5415b8d277020a959cebe93ae939dc3675580199a722c721dba745341d5af034
Date: Fri, 11 Oct 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728626753
