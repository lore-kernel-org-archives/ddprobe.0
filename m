Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E9A4BD373
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789646435; cv=none; b=fLPmr74U8nO612sYqnvskcnRleyigrqWWJ1HqmT+jikaDWsoD2kW9BfQ1T80HPzLjGjzUs+kdmeqRmYZJP0Wuwh3cdGPIZkc7u8jQSFBa1eFS9q9V9CCgTwmSjsbbnRZccazQxhlW2Ej6rw2en0SefTqExaqsUQgy1qFg82ceBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789646435; c=relaxed/simple;
	bh=JMcaX3wjNPfwnA6C7OJF2VyB5ojZku0hAuBIfP0PlRI=;
	h=To:Subject:From:Message-Id:Date; b=ijLAaVtXx0pU3IwdrP5P6tCvkCOysf4Hh1vNQ0oBCjxKdMm4mi1tPmaEAWV1AG9hTyKdD0cppHBIgi1vo0Ld94JxmAgfLIBohJL/rnprKifMlfLoRq7mEYUKb0A449MnrA4gSuaJf93mFgnCLS9mjSIxaE0ihDTmkd/OM8eOENg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Am4lQMji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Am4lQMji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 181F0C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 12:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789646434;
	bh=JMcaX3wjNPfwnA6C7OJF2VyB5ojZku0hAuBIfP0PlRI=;
	h=To:Subject:From:Date:From;
	b=Am4lQMjiQpBr9TNg5Rspk+XJU0HOJsJgnRwmryzzBRbkL1QuHPbb7SD4ljowq6UXJ
	 twYbjrM+M4aoZZdzqHQ9iPnyWob/Jz9eQbYzFsm1omvOGxp2x8iU0lRH2Vaip+MTOc
	 DPbdF7vPoLUI33UnA45tdOfzyh4kNuS2vKOIbXo18tRpRzVN1+1oWmLDfQmWAhK87E
	 I26O1DFE0gtuhcpAP7fgwIQXgagmNDFKMyaOWpmdvYlIA/FQBGpZ1OXWw7PWXPLOU/
	 AWSD+IQRMwV4T0SF7oPuXCpVX9rvsmMrvpAeHFZ+kEVUarKuvxBz3X43uvL0zhKI8l
	 GcolhlpmG0iGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA628C88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178964643377.28669.3307448922246170226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a35feed012e9de79fd75a41d7f14b0d6b5f84f1a4b9f0430d87f7a7d5e1bb2b8
Date: Thu, 17 Sep 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789646433
