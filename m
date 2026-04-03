Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2273E350A0F
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 18:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775240134; cv=none; b=jWA4XED0EC+7D29f3wL6iZJsysDqvfZcOdamPx1NFHMpo/BBHArztzih8QgEe1Xp2MnVlxYnwZzWnSqYUb4UjCpgQwmjGkVSA2lmNqAi8uHHvw9+XX7mWZ11b7PNmNOdXrWNeRDEJfu6ne+goPFOunT+gkK78tKB9Z7uV9Ae23A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775240134; c=relaxed/simple;
	bh=1jzCPlyY6lsG+Ep8sXIKrHtqJ+hGbb40f3yuLszh2ts=;
	h=To:Subject:From:Message-Id:Date; b=R7nOGa1o/9vYPAhBV8xjxzQq9+8RpcjWHQVHn1tRmuCVKhSH05U/Epiv6cOLzr8Fr+9N4Kc6g2GISbQQcD/AKBQfAx5IVQWQjA5dp6OHsHCi9v7AmlWauPEZvJkYLO6R5LJZSEiXjm3CLSCcAYc6pBGcXxXDqImn2MAfsID1K7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBq7SbEO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBq7SbEO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9AE4C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 18:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775240133;
	bh=1jzCPlyY6lsG+Ep8sXIKrHtqJ+hGbb40f3yuLszh2ts=;
	h=To:Subject:From:Date:From;
	b=dBq7SbEOcLVRSgO3Kl0iekqeDJbiRlJgzE5GGePAP2U13s7uAps/IpIUVQGIAku3S
	 81JrEJaRcX1nfp/L/jVP3pVwHdUViysSMkbJVrqy2JeoKeep1lrKgz7Cx9DmxhwyO3
	 PzVYIX0NdNx7kFjTDMB7tTLjhCBKO3VxnUo1eNqZCtCQuwHDwQsP5FTyhPDbWA4/x5
	 ckxWE9KGq2PeStmoFWQxnNGVsl1D1aVf24xjzWMReJiwnPHxZRjU95wbnB35S8xUOm
	 SMdFpAuki3bIfO81SI1UrlP9IEUylOZGLI+5xvWF0mqa0jpXrStE7IoGsfENiAqwGN
	 +BhjnMil54INg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A9DE8538D
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 18:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177524013368.27015.14656344234545610723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 502c1ebcc2ae6c6fe20fe608a07aee25928fa4380e7fea53dfad544226263002
Date: Fri, 03 Apr 2026 18:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775240133
