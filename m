Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E375126BE6
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726259154; cv=none; b=RviqnFQERJwz5FzpYipISo1PZvHgjuHbzLiaA693HitzYKyPKT/AjxGYL1c72+obXCNx2lBbLheCVnsn1jVoMsmc7EASoX0yHrKT8DiwE7xFEaocjyA8GssJMI0fqM0qPaQ1aiIOPCWx8S0IjzsaygrHPASCYaY0Ke3Inv1zy18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726259154; c=relaxed/simple;
	bh=TXxJTy8UrDpDr3T5BoiLgYYWM/KXSkf4DaylZyhja5E=;
	h=To:Subject:From:Message-Id:Date; b=XAITqoJBJXYw1IBTb7UxGFlL8Cii8IbLJF9UHV4gD8qkzXprAGFwMB1hURIPDpfeSxhdbKBtWkpay+LeYV5gqbLGS6biLBBHKWAyXtfJbO0Q0nkP27P3AhOsIclaQdxAB+GSFQfRwG3JmCB21zziQonIZ6hCEpULDEJzwZbg9Io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AOFUA8i0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AOFUA8i0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB9F2C4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726259153;
	bh=TXxJTy8UrDpDr3T5BoiLgYYWM/KXSkf4DaylZyhja5E=;
	h=To:Subject:From:Date:From;
	b=AOFUA8i0KnEarOuXbIbYRxvTiYFIBNsxWUV95lRqZun2dRjAERCWmYvKuLibDDtfZ
	 KuJnbkvAJRiQ2xSYrOBRgvo64xQL1erBy1PcyacyEz46L6wxEIKq/bEiWtY53wjZEa
	 aRGkVHptkACGDdhuiRpfiU0/z8elQAIhwsV1IG/0kklurw+iz74Ve7HPsu+J2Vc6+q
	 HOleJljKveDB84w2vvoEt9yWZyTcwcON9lcs1ZBKelEBUI8oLurS0mbwA1Rzj1+A9Y
	 b2KpXOelrOzl5QLLA8CHdPxTnyWupEfJDfT6i0mrJmmg38k9HE4C/Rn+7dCSdwgSS/
	 4HtRUkxRmTVKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A97BFC6175
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172625915361.29109.7153245037497877936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22566cc82081446dd484428876feab09b4a101dca65b12df0d75043bdb3442d8
Date: Fri, 13 Sep 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726259153
