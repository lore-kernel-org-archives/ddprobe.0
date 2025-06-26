Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DA52E542E
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750949994; cv=none; b=LAUsiH2jZOnQn7e2Jzh5fOdA8mJMJsacqxcmUh5omooik+L7+DqR7LDqwV8UMISer01qarflqwqxoZg88/eCbLqnq2t7Z3apcdgj/M3FFBtA94agwoNR9oFxbpAc6AE+D67/7noibthJ1ujgEEdL4WMsFDw6KKgPQP64t5vSqno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750949994; c=relaxed/simple;
	bh=eofrtcJYXVoHYGVSLmeJ+J/NoG8+uLsR2iJneTBQKis=;
	h=To:Subject:From:Message-Id:Date; b=DDwyrE1PlqcZV8aoSt5pSm0GPJdcj1zytoNslAA3TwRMlip1OMUxfxmap7oHmEoHQDCPxG/qmm6uJfjhi0YqiYNkOiNFs1SimIiCx97WwUQP9PcIBxf1GQuSi+De58L/De55xPFeln1pfTEfANsoQQsOybVJ3EdBepcupuF2exs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aJ0D2VyI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aJ0D2VyI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC18EC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750949993;
	bh=eofrtcJYXVoHYGVSLmeJ+J/NoG8+uLsR2iJneTBQKis=;
	h=To:Subject:From:Date:From;
	b=aJ0D2VyIhcUEh/igYkgHFvwwRivkU7ZyU7Fn3jBvO3OOK/xK/vzFqFCh2DM1o7aCK
	 10ivkTcZJsJEYOVt4LKzpmYV12+LJCH+QMcWv0y4g3bCfyKwjeRDitwwax9DFjtMPU
	 GOVf2jU4BJD3ljFS/qNhJE+DN1c0jL++qYcWK/V+WKQzLO0NvX4p7HdUuXyoUz1G+s
	 a9RblNXg06qXvC5VXG1qksDVLSCJtLKo3FzGs7sxpa5dDyhD8lex6efLLAc1oXYUXA
	 Gv/JVlnZWDFLb2sW3HojcdeSWiGBoi2m+Lz/UbMch9YlPTeHZl0tzFyRobSd/1oEUt
	 B1xUG1dpYTnrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC3BC7EE31
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175094999362.25586.13195991978133002909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbbdfc40c59375f4d9392aff176fba7be7b79a61de0dd4d9bc2fca9739e575e8
Date: Thu, 26 Jun 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750949993
