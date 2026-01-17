Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 045EC27E7F0
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768686834; cv=none; b=F64A4iXh1lvtGxwZ1ZtIdTTDJ1qfTFbX90Yk5Ya/4/rlils1lUBDl2H3KFHniJiJgyGswOQ2xGtIj8CB7d9GI6jtjf8aTwoLqUouKBS/uNAIfO96Eack6fImK34Y/rFV8yabjJvnpa+BOUJvzDPn0BSEXY2xExPZNRhlyoxYiVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768686834; c=relaxed/simple;
	bh=rNz1QZqEE0eQ9n8vVbs9RIl4XcPkGH+UIVCfCZMKCwA=;
	h=To:Subject:From:Message-Id:Date; b=eqthM9l8kTg3rxsE4EfX9hMMhvXI64xMlqHA+fkbM/T1B49vSA1eQ96t8MccAKd3w+8Hv+7dxiIFAaH3O60YT4yAkHXuzgdCRnijlVsNTIQX1lQ/hEUif06UD6ENxx1PZNLmAt5tg2lT8euYmeRCCUQKw9J9o9IWUlykwnCkJPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITUK+NbP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITUK+NbP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2ACDC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768686833;
	bh=rNz1QZqEE0eQ9n8vVbs9RIl4XcPkGH+UIVCfCZMKCwA=;
	h=To:Subject:From:Date:From;
	b=ITUK+NbP9YhwtUeI2lIw6xDfNthru6BKXWQLlAQUt+v0S9I7KNKqBeJ1cNmPUardW
	 Um5hf8m41Lw6+EZ1mUjtUrv8EIlrEC+LsTQ+DN2eYuZS0hs/+BDQriRbfgL0YECHIP
	 f7/guvFBhL8pjW4DikrfNFPzxdBrG7VeYZwz1xd5VnnYxj53waDqG7zRwpLKBlIM7D
	 eMFFhUQohhQd4vtl6cx0TOonTv/ODgX78lDeGlrBFnuTUeN+4/r9uSXfZ5rE4zvu7I
	 rxlHXbbFzEB8K8ZFLqjKlYt5JOOdb1vec7ELnxYxJxgNQlYPkLM6QccsOGsxpwjFOX
	 KXCyXAt1gplTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92341CA5FE1
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176868683357.21001.696230904803696478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e11d22c45b2fbfc0a240b028b4a21704521e7b66e16abbbc793e23c58e08cad5
Date: Sat, 17 Jan 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768686833
