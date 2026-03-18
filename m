Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242BE1E487
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773802494; cv=none; b=onTPNmp+wHJGZpW0TnB3Wc+1utE0kb613rYpQE6kp70iF/ZQX54blxHoDbHyZrf/lZrfw5whoSm1JuVhwvc7KNnQ/wWv4nUC1mDrV1MszLXMfT0+1OFsnU51+rIdmBq8mV4tW0M4OGWoux/w1VcrPAHlpIi4vxMEAMQYCzV7yXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773802494; c=relaxed/simple;
	bh=zqW/4IWB1SBhEpxIpasCyML0bjvHvioM6HmmehmfKB4=;
	h=To:Subject:From:Message-Id:Date; b=SpMq4HtRH0CxoZeRInY8x8a7XFeMZsJbAreuq0/z+2zk1uk+866JjHpGRQL8x2ywJn4J64XQYhmIdY80hvp42ACh9KO6+lbwy0b41s93uIllTqrW0PIlVkjJhAByKcQmBgXc4muQfqmclmfeKc6xEekacuenaxG1/FyyIyu8tKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uGDz4A49; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uGDz4A49"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DFEC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773802493;
	bh=zqW/4IWB1SBhEpxIpasCyML0bjvHvioM6HmmehmfKB4=;
	h=To:Subject:From:Date:From;
	b=uGDz4A49epLEqHk42ZqnzuuXXxGY5XJUyRKNwf0ZDzXmeQEnCFk7Y8kiMYKw1hwun
	 O1qtLkmjPN2ccMfsoEQHJWOzTsIlbUxCsm4Z37a1SStmqmdTU9ceBwaxpWuvsbT1Ea
	 pgCxHzSGKtXUGonvhA0wQYVceWdaEhy4gMI0hk+Hrs04ddLNyr9p5cgvHJ/fdfDAyM
	 3WYkv7Oxy5/5jYABmuLCDWZcbFS+crnuIzyMLHGHB7OBz1SnZbaUDn2NOsXmBaQU+L
	 du4PX6bTL1CpvMuKSLM48bB8HK947jrOE+uvxdH+NzGwDG3wgKtMFh14DRQeXxZSzh
	 D/dRFySOMIU8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CF310854CF
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177380249357.32436.8431047367081612757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfb9e70de5421c5b1920f2427c22965d228ceade34cca2f9041dd85122cd259e
Date: Wed, 18 Mar 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773802493
