Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D13425FA10
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 22:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779832954; cv=none; b=XKJoRXb4eJB7yrLAlF68T4z9M3QiixEsAHQ+7mf6tBpAK643vHjZA88paxd1gwJ8BxyjJtrXwmuzptkvm259ygOUVJhdUL/V6TTTDPrKZXgrUK65Oxhem4RCMdF1go3fDrA3AlfCPcQo0vK09JHUgkpAxQbfKoqz4FLTlrFK16A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779832954; c=relaxed/simple;
	bh=xVoJU1vKqp40gv92palDz+oH/DlWDJCLgYgky0B1pC4=;
	h=To:Subject:From:Message-Id:Date; b=clANglfncNz3oznn6G7lXHKweVHyP2RT6Y6gLNKG9IyKQAFbk56+QCOs12psHwrUfkc0jrSRrebTZ51yrs8ggHvdNnzQuJjY0QbPgxWsfgPUbvRuAHgAi/CdXr6pNckyvNCSVRKdA2lpaKj8R13+33S3SU9tJih40MGLbrDWlYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6ytvVYe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6ytvVYe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C454AC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 22:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779832953;
	bh=xVoJU1vKqp40gv92palDz+oH/DlWDJCLgYgky0B1pC4=;
	h=To:Subject:From:Date:From;
	b=U6ytvVYekk4jiN5I8TraNZ0/0Pj5jRAQABFuRrd9vIeuv57JyheVzMEiPAZm+6Xs4
	 v0nDPl9u0UEoxBeiJFGd/LWQZJwZVsK9hD46G28+eFAejuDlD4kDJtrnb/WuQje7Mw
	 iwu7v7MSOMaAkVK6r9xw8ukK5CaJAO7Bdc+cQb6l61kX3IPBEB1S+tpIfy8tY1fkxd
	 EcQgaf0wcAvELJvRjBuEAVSH/sVa+jCl9CkJ0lcK9yDhNDubtUrGu5qmklG+n11RUl
	 0rOP3b8eblcXPaYbVYLYwuWQWFu9VDMRsBHPXRPeIP1UMBDx362SJeVoAaF/ReIwwr
	 sNtlJUT5Z0vmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB868CD5BD0
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 22:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177983295368.14849.15761612867028452605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83de2b9334fe1f3008299cdd33653a30bad5fd3a967147ccd73f123ac10dc968
Date: Tue, 26 May 2026 22:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779832953
