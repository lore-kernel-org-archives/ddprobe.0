Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D41113AD3F
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725529554; cv=none; b=Ni8rGhj47Nps3gn/BUwkGWSzOrQL3SwjJW4lVY+3/i82FjLjZEvHnh4YNGSC0kzo1npehFTSkWqUFiHt3F6ymn1DuH2fStu8AL0Gwmb2egbe2KvSDXW+3qX4sWSURYwP7/DewvKSDdmTLNMUDUdKpUf4cPOhx0YN7optW0LhyR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725529554; c=relaxed/simple;
	bh=vhIGwZ5RwPrEF3ZgZdY5r06FdedLiVjrmfeM9lErdYY=;
	h=To:Subject:From:Message-Id:Date; b=AbwCjGgWEBoyIA8WK0ABi4omFxP90WimAYOQia/lP2KxdfD36IBV9zvPv23WOHB1joa3F3/lpqakXXDUPRD6oDBASKvtuQwEbZZvVMhWFXBsftp7EWIddUtzAzyeEOpEl6edBZ377RzNmSquciFxe4JguC2wBN7HkfOGrwVqnEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cOT6DUay; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cOT6DUay"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AC8C4CEC3
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725529553;
	bh=vhIGwZ5RwPrEF3ZgZdY5r06FdedLiVjrmfeM9lErdYY=;
	h=To:Subject:From:Date:From;
	b=cOT6DUayi+SbM4RATSUCt6Jb5xQN3zaO8Tb8304ENBVRHdhIHwYiQKtHj3tIBhHTB
	 6IiiLJPF5LaiK3zZvr7blE6tMIgsHmLpXoD62HpUYcklX/+TQ9tB9/G5JywiqbAxDs
	 hx5DOD1CxvQGU4tzJp+PXyhyy8HB1iHra/dfLOaFnRbmORj7/3WNv1q8xIwQnTUvQh
	 pwmqifw67r1kBnKxUIStICQ65AgY/3GqrlBV5DbYM/1Djb09414WbrE+lmzYdI+WnB
	 QWU22XpO/1mS1znDOS6GJAzdXkP/c+tDWnz9r8uaxzwFJfP7jcpV0uDXxMNbtWzN1U
	 MpPYywiMr7j3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90925CD5BA1
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172552955358.21993.8861964467157968339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96ab0d9ccb0ebb73cab233306f0ba9bad4c531d41c2e15a3c3c6c56bf6ba41cc
Date: Thu, 05 Sep 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725529553
