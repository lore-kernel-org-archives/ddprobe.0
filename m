Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F06AC2EA
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 05:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775972854; cv=none; b=kuCo8v7L/QwfvqCsaB8JpJBrG2sxpXZ+KvaYN8z/bIMSPItDf+G4quVwlXwsKMiJHOURoG7ePIiRLRr/OV5nl2KPMEaUB6GhAJ9u6VcPWJShi3MJyU5cd6+K+/Wb85FKdWwx4BR4x8Uq6U4pgSMLurRMXeaGhI/gwz4pHqm4A/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775972854; c=relaxed/simple;
	bh=8jDTuINLjA54kPChqljw8NVfRhqX/kZOHqYCc0n9h+Q=;
	h=To:Subject:From:Message-Id:Date; b=frlb5TPiP2EGzgl/DXeyjXrWLtO6LR+XUNhyFtLyCiav8MkdyFzMGcDsCJqCOlB603uOo4Rph1+jcj4tmw4GlqQMoGZ1s2YLaKO/uvfZCCl4y8QeB/xtk2jfijcyF0Q2dhhKXy0QdHSrxOMTMzzastVkRh/X+NajrcUP2afvQiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4t5q+Ss; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4t5q+Ss"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C01E1C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 05:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775972853;
	bh=8jDTuINLjA54kPChqljw8NVfRhqX/kZOHqYCc0n9h+Q=;
	h=To:Subject:From:Date:From;
	b=L4t5q+SsIhleQtMszNzFyTENfY0Zr6Wo3TbMAheayH6F/1LBf1m6tlwlhG2HeWKLI
	 XSasNQL1ntH+xK7FW0br/6nwBHITzJ3XzcM43mVktkUEWZvXoeUVz1mE2XRIKAm8ji
	 zjfQt0xfTs/j9K7ZS+ZuluyPIQzVBqrPgq5D+tPRonrlnRrsTLX9afDrRIhiK4iF/8
	 W3CsWOq+GnQTIcSFtj5GYAwZKSiujlPnR0Ifoweq+0u9IBnq50m7zMGXUVGS1GwAPU
	 0E6t/rNf1y7RXPZCrTEHnpM//84RBjOJdW8ASdO74+pAlisj2DxxC1KYLec9KJauEs
	 o6AlVhs1Mowww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDC6F3ED6D
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 05:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177597285368.18461.2457492835150649810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20a1db519b20b7ae00205145b6c138b8c2c57bcad8026f3c99b080ccb09949b3
Date: Sun, 12 Apr 2026 05:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775972853
