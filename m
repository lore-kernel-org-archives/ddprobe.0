Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3F237F8AD
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 07:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782889714; cv=none; b=Z/WrOXo8m5H0xu40tPDmZ1IBD9kuTx01ioYWy7C73KaClidYfsaimpI9biGzfpDcqCBqeC1w4yXPjNCjScnofpWFgDIwML0xqeNqBlLxjYdm8EFZL6YW7O1du1p9zKEQAhTjkB0bB8KtejAzOUDpPFnwQC/vI2krDijwWKSZrug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782889714; c=relaxed/simple;
	bh=9TfCSg0xYD9pGB/r1pheRHdLtiA7UWDOLE1FkN7N+dA=;
	h=To:Subject:From:Message-Id:Date; b=GSN7oRXFY4eEN1nrmTD2gqnXolKhcJ7Uql/u2WZNU8Kwhn4vEqtagyPWZRQTFUwyOg8bd1dcfRM3R+uPw8haFMrTk23tjSVeZDI2zhMaH2xoHMyDjXAHENF2mAmQ3DW34hCpvAzzAxpHEQYKAlN9OTQdi+A5cZIYc6MnncpPyGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDcbdUNu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDcbdUNu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C295EC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 07:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782889713;
	bh=9TfCSg0xYD9pGB/r1pheRHdLtiA7UWDOLE1FkN7N+dA=;
	h=To:Subject:From:Date:From;
	b=bDcbdUNuoDPyiYcflJ9nzxV61ORfmB0KMvHX9arX8lOJsyACTDsfiHIAvrsoWKfRm
	 cl5Ob97Rl/wGbguOqSTigoFXcyKFWt0gYOYRkFf1vMoerYdyJ/GBehdqtfC+DpAcbd
	 3BNVFErgfXNYxD/L2++DFvYdDQtq25O4048eyfGqz7PUj13tdrzWLRIN6CAM1y+Jn4
	 fo9mLEWhkYdG1ZR4dCSPW4v/Z9mg7Yl92pRhcw5jLJm7i110CKdQ+x7mPWnV3qslhF
	 CCxFq1Z3iIBAcvv/Mj1AbwLsmyOfPL5BQcME5Y/5FhayYVaTkcs5uGuS5wLO4yfHMV
	 2brJhxC6zQTHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB076C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 07:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178288971369.9724.2928999906743532918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7b1b8388617ae0f14108a4fb16d9c1e8292b7fe21131933110371363aced134
Date: Wed, 01 Jul 2026 07:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782889713
