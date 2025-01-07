Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C591E9B2B
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736246754; cv=none; b=fxRb3sBZILrgMMoDtIoOD+QEK6FHGyKPA74IlA5k4fnGY3N346lLSvGLXOD4qFTF7O9h2mG7OKCeaFumxXZZUnUBsYl9JZLOCLkiwBsahi5CnxqGs6JGG1fe614WaDujB2mwsyJKKs3AJvfzH6FeQ2k7P1qQA9Drll2LdGOxqCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736246754; c=relaxed/simple;
	bh=Ze8w68Bv8158RUdFjzQD42phomSmCByOBTLAWiuDyvA=;
	h=To:Subject:From:Message-Id:Date; b=TuI1nT7FdybraNVJ4WfjXEbhzboWvYZy16fMBywZKnl1yudPHDL/kWl8o54qu2QTGoiEl6Rn8YmDkkM0UnCpgiaBMobUtpD5wv6kXrbaG/p0Sq+ExGZat5IQp+rCdYGy205oDMsLmbgx5QbfBY9GglwuVDwG8X/NNj4Aa7h2lW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=otZL5OIm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="otZL5OIm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A480AC4CEDD
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736246753;
	bh=Ze8w68Bv8158RUdFjzQD42phomSmCByOBTLAWiuDyvA=;
	h=To:Subject:From:Date:From;
	b=otZL5OIm4EXDMTNHzztTFV/5AigcCXAcit9el+XnIGxqmJm+lEIrkpFCSIEekorOi
	 yIj3PAzC/ZyH3Bm22GBRn/eACWo0s89aa6lwQsDnmGDoJhV5R9lYG31402fJKJyspB
	 8Rp3K9HfTqb1leJwD3p1Rd+XJLse9eePxHYiCo7N4pHWQtJTAEvEFmYq3PrBA4ELeS
	 lq9eCsWTQM86hJwLbvlNjr4xTfoIGN/kqeinwtpjV0JMB9lmxjKy2aDmMQMwVo7OiX
	 LWV8oDS42z+HrCNi9s0pN4VBiMsO7uAu876gUsuZzyGCTIP3ts+7+8DdexnUlhXjgV
	 yRwjS6w9yi/Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9315BE77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173624675359.2693.11878697093810827499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab2590dd6b96a3d281278752364fb2cd1e671abea6ee8416b2c525d135369556
Date: Tue, 07 Jan 2025 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736246753
