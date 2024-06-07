Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 601454317B
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 23:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717804643; cv=none; b=lPl7QwCnfQqWk8PZ+9cYRHOfgdRoWPRDF9W8s5J80rAi1AxDJu8ODZyyRPP2W0rHMuhcv8PsdjU5WzBpgGXGLO+ORQ+g5JkOrb9VKTDIfHsCYbrVQ6gmn3+siznTdNrkwFIHxa7a4+ZN27fB4s7hT2dAdsF0TrtTbmx1Z8V6wx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717804643; c=relaxed/simple;
	bh=8EYBo790dtyjVvCkQUUntKYGh12IVfEyg68g50QUByo=;
	h=To:Subject:From:Message-Id:Date; b=dQYW0GLj7iph92/nfie0UXXZjHsqxxowB5/M6BBf5MjXb1resr7zZNCjB4Bfvg2Rp2hFot2T6qB+P9QBtHPLkpey36aZ2r3XiorJ0TyCI3774C+qJWZVVFwbNJomdDHlX+cGmZgyaWo2PM81tEmZpx0wiv8tcnY8gx3zh7ma4Kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jmBZk9Gp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jmBZk9Gp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4987C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 23:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717804642;
	bh=8EYBo790dtyjVvCkQUUntKYGh12IVfEyg68g50QUByo=;
	h=To:Subject:From:Date:From;
	b=jmBZk9GpWCxa74PlGEkp8B9ApbeMbaEmNVMhQ8UpdlPXV3AgAOMUzX+SexD+QqXml
	 Cv/zd5nHY4urENTUFtSzSE3JRYr7zLmjJQ9qhqRghirnceZIQT/DkU6wbGJ4DHkxty
	 CW8AWQ9tkuaBnMg1sVNgS1HkoYYUf0zXmPq0NIv+eNEKthNV8VAgP/rB3IVHh1pFWi
	 VR9/UaCNQCRQVux5APbMPPPImX9yXI/L4+4vehsohjgRFcHeBcWiUveX0+7MypM+RH
	 QFATQAI0wEcWSh6Kn9Gw+pFswE7YwvMtRxjJpz41S6eOzgCmSrwvZLdTBsNhE7I4VI
	 HflPuv/pVo6nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAEECC27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 23:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171780464282.30148.16050134962206981700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e892fea8d62b176141624e3548abf3acedb7e39c4a8a54c59aa4462a8020dc17
Date: Fri, 07 Jun 2024 23:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717804642
