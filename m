Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDA81E25F8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735764954; cv=none; b=eBsGeXUJOs5kyNOxlAW5FOlpl/d/RfkHEcVIMGGOXO7rHmTkspKOchPIyRTi4Qvs3jrnpxpOYV9UIwyBvK8KsVzvgh562SR3ag9tlRkjI38Ay6ityJKioNwRjPHCh83vM+VUNeIEBe4jLw7GnAKisCiQ10Uqz0aN9m/UllGUK6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735764954; c=relaxed/simple;
	bh=En5p+lSG+uV3xO4LQXDJ35y5KkgtdYpphwjrT3mio1o=;
	h=To:Subject:From:Message-Id:Date; b=G9rNxfd/asfnMiWVHZ8HDUrlcsh0CKd4CwLZpZInZ+4K4atc+4v33ASMMuKSyjxQYBBuicXz3tfOPsoWdA2eRjOHyPoHVyiSLaeQ2CHX+NkiGIxd91YVtFgnEVqMlLSNTgO7jt0574GbcBYHrafsxExzdSgLykdtpfRxdpxJoTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=edOlJszS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="edOlJszS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26A6C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735764953;
	bh=En5p+lSG+uV3xO4LQXDJ35y5KkgtdYpphwjrT3mio1o=;
	h=To:Subject:From:Date:From;
	b=edOlJszS5sWb5SPKRDgxYH1LmFGjwH01ZpbOb8EOAtBnb3sqXdPQCPwNlgAwTk0u6
	 Mq2nPWLlcG2De1DQG2OGBjC8Dp8FgSdq32VoY0vhmL8uZIfTkReIDlT1/2jxqcCMV3
	 exB86gN/C1og+L9+Px8WQIiknk9CsZkIkrHmgx9+HyuvVNay9WfGxMmuz0YiWcwPDt
	 5M5pTC2QIUzJICXyi8xUmyN4DUyi6vop3uRqtut0YywCPbRpGY6BhH4ujJdsnXP0M0
	 RSdTpKkZxvgZp5qq1beVrpjov8DJ9gO31Kwd+RocoaoqImf5KG+M54hoMxpGKpUhs6
	 9PrPPKJNQFSJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BE9E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173576495359.22520.1170954635031144664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab8f0aba045d858b3544dbaa832c69250fce9dbebc84a7d72b113cfbcd3bd569
Date: Wed, 01 Jan 2025 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735764953
