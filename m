Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0962D3557FD
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769518434; cv=none; b=qMTSu4TQgxVkv2fQjKcXxPAgS6h2r9st0ZrtIoTkeqQhzAY5Bl7C9MdHCrJDmb8v9jqYrobYkOzQZLthdWafyk8EoML0h/hRv6XHUdXqHRj+8brnDjRxtefpop924PPezlObr5pAzJfn/lYaKLCoGzNExgFegluJsqC9f1CycS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769518434; c=relaxed/simple;
	bh=u4aW5qs9DNhVDRiRU9hqDlspu5kuY9KLJNJCt4dIr00=;
	h=To:Subject:From:Message-Id:Date; b=frI0u0y3a+YXEul/U+0e4rRxx78ur2gc7uCWvV4BZ1w+8PZMiYjem23iNY4q2csFZv9VXHKe72GlzsFSxS4mvTe2ujX9uBuCAFFnwja48Nq+qzGfSBRhUVgsLxNGPYOLIeZoL2F3UdhX5fkAoql8g6XUwpQN9m0rdCXujpW7fiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXkNqlIt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXkNqlIt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F36EC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769518433;
	bh=u4aW5qs9DNhVDRiRU9hqDlspu5kuY9KLJNJCt4dIr00=;
	h=To:Subject:From:Date:From;
	b=MXkNqlItQNtxnrDmkBb0y8Q9qixUnZVBXcWN9vR8GK2C4Ojibb1h/94zrw4nbq+GT
	 jX7u/Gjyut4XxOXL0snWB72XFCNwU4RlajMOsUgfDYykouC0S+ElmyZ1C2DrkZ2l5U
	 w2Y+fSMmn09q9h9jLxogfTwpoghtRPU3c0A8e3IQ3PydH8MY0v3jO7pqDK20QmhLvq
	 JWz++q5g0/fXPu/ZDvbGd3lDUC2UqmlQR14ziDbzQPTRxEnwd1KeZtyi3A7PiZhEdP
	 DO3obeZ+z3Ss6c8sIPrDrFdhyLArOBwKlyObJvxw5pmAhbPbLF51ePAAEAZjZmWnPu
	 9Omg2c46DmY8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90432D2F000
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176951843358.11345.15581891250050904644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 501c07b39cbf3a59dcc3b2ef03450caef792be3137929cb6b46522063a3bd00f
Date: Tue, 27 Jan 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769518433
