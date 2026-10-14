Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E5822CBE6
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792008634; cv=none; b=hqzQ4PTwdfn5WRR7vB0IOPITT/YLpw86mPi8JGuhcsieY22kzK/iMkgb04mqSsVwBTIZ5AppV2sc+pm7ZftErncpEPrzQy4qHxkgHeZ7sZ1plC20Y4o1XxYammatSatuaqM0g7HpOztmladLkx8PP4H76AqfQOKvdwbjxfT2CRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792008634; c=relaxed/simple;
	bh=RSdKwPtSPXWlM3ZhvnYClwyzaeHEvS0UtT1Gq6G4WkU=;
	h=To:Subject:From:Message-Id:Date; b=u95XGkj3jU9YK0CTclh+eE1a+etaAAbnFqbid9aHpsdMkhZVNfVXvhN5ZSJq3bTfSOJVW9UwZEf6L8Y+40GpHuRM1qX7059T1vwrlXyS8K50zJdU+oX2kHLsVHKt7sJTknlTdwPMMZbFoVLZfaWUFLdlqnS0Of1PNH5uaaA2pTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D04+0PpA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D04+0PpA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AA6C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792008633;
	bh=RSdKwPtSPXWlM3ZhvnYClwyzaeHEvS0UtT1Gq6G4WkU=;
	h=To:Subject:From:Date:From;
	b=D04+0PpAg/p4kBcU6c4sSeb9xgomq/gw9y1TyEIJTCad1h2o0kyAkKImP8I+jqQW3
	 D/zbI/bQG3UiANvUIblc7R8tNcTM3MCSAU03B+uUbQrZGXtPc9uI7CKMwBtdEEIGwA
	 bcHAdXOh495HjzRTRiI2OYjokJe9gDEr6pjJ56pdKpRbFQ6184Jr3Yjks6D5Iqo3XU
	 DS2hMxsIRnv4XZhTYQeHnQ5JVMC3ic0VD10AGdhxkeQb5BfmfXcdEk3pAJJvEh9AIU
	 VBQnHwtHSMGneRYt9Mmx4LJqLHuQuimo1kcUptTkhpFbVzOI2tNroxGDpfDLi3hUOQ
	 zXPLOMvG3j0Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04EBCC6B2C
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179200863370.20320.3867869534819880182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18dda08d3755500e517b4a755fb65fdd1c87e8b58af6aa4c4d9d14ba1b267641
Date: Wed, 14 Oct 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792008633
