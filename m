Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156F81EEA54
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757819394; cv=none; b=CmWaOo6x/KCx/a6rXHAXR/jMtJX7VaB3SKrnBxJ8rkz+DiiIpV7HHhAV0h9pAqxnNCVGsKCVyc2WxBGDd+GPjH94R/WnmSpbIoFdbyuR1wKCvW3IHsjgggkbRHSwzS9lIbo1kfvIAu35AhatPMJdS6CVDxZJfI0ZkoiaXfCu1g0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757819394; c=relaxed/simple;
	bh=fjt5g+zLxqvTWPygK3E9++yw5W3lWaubIc9Go94vfLs=;
	h=To:Subject:From:Message-Id:Date; b=KfwBzOPE05PtcFW34p34sG2L+NugTqIQLzv8Q+nv/ju7o1eeZwflIPzOYPI0ikJXTHgWFuo15g5Q7YGLRbyneKqz4P1B6gkppmz7NXzqcY7Dmj8QtcAkYTFQpoVO2cWhf123ZvADs8eAct6jROmIwBR0+ShB8Qou+6PSbOOVnJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LMnUKqR0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LMnUKqR0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5477C4CEF9
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757819393;
	bh=fjt5g+zLxqvTWPygK3E9++yw5W3lWaubIc9Go94vfLs=;
	h=To:Subject:From:Date:From;
	b=LMnUKqR0hAufesWMDojWx4yscjrIlhdO0hD/ziNDe9ubMzxwXS8LnkkQ7FVulMrDh
	 4oOp0Bvv/RUlkBbKEtf+bUxmRqu/akKtrHkr+WIApyTD1DAh3veeKg/TYoKis03mS+
	 sfyb+iUrb7WCKtcOCVCG0XEqPjZ3JwHJabzVwy6PdVYtLuhv5nwaND7h01oFjtrG/S
	 KurTULWKmj8fwRaCflv2Q5SAQFPoXyz1GMZ6Q0CWiRcpXJpcyryUGpCvt63TGk+b+u
	 nbMCBn7CSc6W85SmN4C92hIpJ3ZsMclfS3cLS78efLRTWSDdYCGRr2ySYYsbnENJRL
	 AMbC75NCvtLoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933C3CAC58E
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175781939358.22707.7635903073967709338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49274ccd2177b168702445051474010a2e345d5661140a379616c22d95367811
Date: Sun, 14 Sep 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757819393
