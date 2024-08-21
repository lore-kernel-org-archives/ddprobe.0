Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DC117C7C4
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724281554; cv=none; b=jkB5nHlSJsotafQyt3dbIS798ktla1ViGN7YmlFbIE+yLy5waixogfpDtXFr8HCkRNvkfc1wlr4QVJmBy2roMEs5Ou2Zr6pJQlaxg/WNPhgCOT2Df/vzytyGRT3DB23X4pmvsjT0UDDBsT95CMO/oAE77R1H9qUEFgfJWWpclvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724281554; c=relaxed/simple;
	bh=cx5mVCUMGoQCyJddsoeGIjZz9IZCyyNfAiBKNY+pPmk=;
	h=To:Subject:From:Message-Id:Date; b=Mv3LuGCbZ8bNWaEHyk4XeF9i1rxNEPhmEQVY1Zq/ZO1JodEEgg8GA6OkAqOQpm2F46a1vofxI25nJqnv+Vu9mIUVq+Trd8e2SLDQTWdc8R8TYdR7rPcdCs+ELVi3+HEDEEtLkikRpKDeqPffBhch/aWvv3cyg9ZM2YX8mMO5uyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qKTBItbU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qKTBItbU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B16D9C32782
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724281553;
	bh=cx5mVCUMGoQCyJddsoeGIjZz9IZCyyNfAiBKNY+pPmk=;
	h=To:Subject:From:Date:From;
	b=qKTBItbUAYqgJ0e/vrwVy14Y1y3tWqUOuR3JUbsXO19aQCWO/B2ME/gjiCXQOBxaZ
	 49k8sLMoRA7UKe5ere3zqIpNz12S71+7MfX0laCU26vjNfDZbnw6olvyzYFQGLN4zJ
	 9zVoFiShWvKV4NLzgpw+3hWufOWmeZPEbXy1Nruw7tG/orRETt+InA/9zEyiq7Bcza
	 JtL1Sfch0QwBv4J2Ehm/dMa5UQcf589GH+BpaAWcJplG71kcMMIMAPVmU7yTK31W9K
	 19bMN0HZqR5PUrvpXrrCeWjIzijsNXYtTNck0IR0+8aSNVBMjgIItYaYlCJfu/GzOF
	 pBEMx6+nLBj3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9697CC52D7C
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172428155358.10546.4299145571149032944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da58bc9711c9ef7c29ff6580f169261dc06912fde7c71a143bce623aa62f3646
Date: Wed, 21 Aug 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724281553
