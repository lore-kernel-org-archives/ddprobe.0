Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158B71A5B9D
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767767034; cv=none; b=iICXv5Mt7JAm2GN60H6DGyp2Wq6zdahra/Fp/f/+2Ef6yYO8V66YjsgdKYvI+4Z3wYSRTwYjVfsMmf7rnLuvhUFkBGXUuKw+eYVhd+MPSgaVJMIawoNbT//uvXTBHH28jpnSs5ntlzzUI+zY5uBlfD5sNLQQzkSDjtcUxtczRv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767767034; c=relaxed/simple;
	bh=7xznM3ZEIeZ2wd0SyUQdhBFtskaPwQNYDpJ3+V8QDEg=;
	h=To:Subject:From:Message-Id:Date; b=M5LIGFLHOmKs/WBSxiUjXZomZSddT7xyqUhMBF1zWGj3uFzcllf+1R9cxZhDQQLa09Ve7l2i8zBejHqkPEwcfB+1r7knzMaHfni5XtqxK2eqxx+IdR4+iP0PLayCINkhOwewV+c9v+KXD6KLlK0x82SOavewJse9IwBDsQWCtHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wv4m+Via; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wv4m+Via"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C028C19422
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767767033;
	bh=7xznM3ZEIeZ2wd0SyUQdhBFtskaPwQNYDpJ3+V8QDEg=;
	h=To:Subject:From:Date:From;
	b=Wv4m+Via6xfqoIBonY+Po/zfxbBsBLwM1rzhmG73mR7OdtUnR3ymo+VjTWGSSUAo0
	 A+/kNTUjU76eYEpRO6yXjxoJMYRT8o1+OHCA7RGlLydu0xvyDIaz235glCfp5U3EWE
	 2CbIeCMSbOViHbb2wCe/83pfIFiBH9Z2FgpcuZ8St65AfhlL/M5bJs3/0Bi0qauzMP
	 6Kd8rfc8MWJIQwMGbnIkMvPcWeEgl3bYZuz8Y3jwqTKcFZN6TyvIxTIn32sMpfilCD
	 YjrcJUYK6oIhv3TORhayxAG45fZ4P8jiE4Sj3wiwi/avfgNoezWCRg3o5kTzFHCYXw
	 G1hLnVrPLIUBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC4ECF6BF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176776703357.22326.477078877683115775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9e15eb58f204102aa6ebbe7957d62978dcc825a9453e78cb33e1e6a51bbbf70
Date: Wed, 07 Jan 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767767033
