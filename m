Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFD21DDD1
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752143994; cv=none; b=AZG2jfUYptHBJqe/SmyTrYRFCuHWfqoNyMkNSilQko0Kb+aISkgcPORNECPPFNN6Dos+Epx1NOQC7L9nuSMnVNSovnCdRM1BdjA+RYavKoHehBAC6OhXi4pF5TRbGGYCOVWgXNYCCXep8Be8Kzpv+VFfcW6+fZovXwin1LJcuP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752143994; c=relaxed/simple;
	bh=ho12a1ZSwzNhiExH/YdPEux+k2SrrZwQj455l3JWHZs=;
	h=To:Subject:From:Message-Id:Date; b=n9ADD4qd3yjSnTx+StBRMj/SMfNE8Iq7U9obY19qzkMNEYVM4J9gCGmtWJZX6Y6Z/4oizfyPk4bC+snYRDEqimIDhId8G8m0x9RmOJmZmvtZUpalifyj0my8v6FKHq5ltgOBgArOKOAZyQx1Ttfxa7mUcO0u8EFWKCkPlC+0jdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tW7Ios70; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tW7Ios70"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA8DC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752143993;
	bh=ho12a1ZSwzNhiExH/YdPEux+k2SrrZwQj455l3JWHZs=;
	h=To:Subject:From:Date:From;
	b=tW7Ios70A7LXjxp5Wj+vx2WYGOyHXE1OwnbhMsweJCZBZAoVNVZqfIIEWZk0FQeRZ
	 yiB9pXA7b8MtEHf/2Y39WfupKERc/ZzismkgJQlCiyQjbEOJIVW86ARBSHrzmsX6IR
	 Vp1yEPwcxMwRuoL0Iyk7sJcNG1r+760LyRPESYx3VMDbH3w260OgTv533HYOQ+9nYO
	 DGNvEOnwfjXEpRPk9wxCSuIMyAiIjYZo+wcVLS2ZHyPjZKUoKYqyAXZkrcViqYwuuS
	 NIarUW2WCseWRMYblniQ5vkYxe+SplYCw8qJ63zFLaASlCWfZB4hq9OvXQ3WSu8hcB
	 qkuroDC4KN1Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E617C83F1F
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175214399357.19473.9059636000721788385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6666ec649894f00ef66dc524739601e66b5c804c58cc582e1ffd53e60b4da5e
Date: Thu, 10 Jul 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752143993
