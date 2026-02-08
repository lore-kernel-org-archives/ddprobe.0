Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EEF02857F0
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770570834; cv=none; b=UDiKnrF6/UpUWU/yVG1s5BUidvcb9EBHQeButofi9zaeziodSAeSsN77af7lcLRnmHRnAQTCyDJk2bkusttOmPhhbngP4VxD5V4A24zTQ+F9eLvlJPCSam1WJAVvi7CJuGUoGAHvBqNWOTc0aiWdvyWotL/IEX9LbAiL04xH13s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770570834; c=relaxed/simple;
	bh=r0jt8pZH983DRm0TlMvBfVj2BYULeNc678Qncic2SoE=;
	h=To:Subject:From:Message-Id:Date; b=AAeAqRChvonnx4MeXD+POJadvwSfyeVMZmQoQhZNJSdxVwkw8vGiMIteE5tMlIEsm+DiiEBzyndab2gxz0ttuXJNU5hwfhf+GHL1AXG5z1zmCIknr4aW8yV/eh64HeXh7w+3lRnLD4iZ8BE4bhLiQhMNirb0AuYhbfkOZuc3qWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MbksTPHO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MbksTPHO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8482C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770570833;
	bh=r0jt8pZH983DRm0TlMvBfVj2BYULeNc678Qncic2SoE=;
	h=To:Subject:From:Date:From;
	b=MbksTPHOaqMqIVFAf4saV9PzbkMvplbJB7tyPKcNjjNdW6U+TFn39xo1kyNxtj6X8
	 +XCDXSFqiQtpdiWS5FmnTJLfeeZN4bu9PC+7QUFQ5iGj5qmj/3z7NYiLNollaIeetn
	 6t09TPIYDQAMS+wJpGpMLcBHHKZ/OAn3Ht4EXZALtnlvnugt32c6CameiiExdXMkFK
	 CmZcg6FEZsptAhew0h3QRJ0j/nql0qKBVY10wQO9nHJR5/y74EioG0o2XXpPJcsmwZ
	 HWUkfbj0dyYGcSwBiNxJ3kbjG2bV9Akf4HMNrvjt+/evJNG3Gl9NBwrsCMdkwCCRNL
	 rcka7yrUOhpWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EFFEF06E3
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177057083360.16718.9865406256881105629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a1d100cd250c29fd6e327098f42bda0dff941f47006089c1d8d744cbb603f20
Date: Sun, 08 Feb 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770570833
