Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FC933A48F7
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789367434; cv=none; b=Q6FesJFW3ceVCEBXOcOVRrkIvT0zw43AovynXYqNmb+fKgBen6lXsOTzmseQEfJSYiz9FI5ki/LK5R6i/MDQOJ494ofLv4oqk5qCuu1EJqcQL17SCqb3UpYrxcVModhF5N7otvZ38E7B2RDZZaKELNpStWntyc2Heedxthvh9zY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789367434; c=relaxed/simple;
	bh=+ldaw3eGpogdnkZKsf8KBpXpZqgRUhXwAIvis/CZByI=;
	h=To:Subject:From:Message-Id:Date; b=KZmb8ITRnGf6XdRuXWjx9mafu0ogKUjk5JnLBbwCEYAxI+lJLzG8QhSDapgbu6fsiXwedsxQXQ64ga0OxQgoPnVCpoCFxXrabeDGqjYIBCk4aXKEOYAzFgS6gM5lMUkN6MHQSToNkrqsRAcUP8P/jlPxROjCA8tbQkZrQuCnAVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dE5G4WU4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dE5G4WU4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA9DDC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789367433;
	bh=+ldaw3eGpogdnkZKsf8KBpXpZqgRUhXwAIvis/CZByI=;
	h=To:Subject:From:Date:From;
	b=dE5G4WU4Rx65kAkPix/89lXnzaSLpnPyEfUFi03S2UEyZ+quHznHFPxk+2VsrwvGJ
	 lgmGFkGYfbkF7tg7pFSeCuno95xFksdWQcJLlXAcedAzbjk2FPhAIF03PeGkVhYdDI
	 VpVInlPSfRFI4T4mnDUAKpp5+KRW8k0DW5a2gnq4t3nspUEuIduJKWiEkyN5Wd9IIA
	 BXKMrIPtCTK4blRP8LVLpbK0daOtFK1msvMzHOtnMhLnF7f7/cTdd7gkOvTH3kYLY9
	 G0DOIg9LvvKNxSc3q7eH1cLf96pU7+ENxUrOZGxYvKFywi5qp6e7V4zf89CP+DKy5O
	 hLlHUj9M6+ktw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9656C88E50
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178936743368.20860.3937630231949300133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caf1ca2939e0d4d62a430b49cc79af316c32e8cbeb64f5ef8663aa4796b8e00f
Date: Mon, 14 Sep 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789367433
