Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5803F2EA48F
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785318034; cv=none; b=YEG8C+pGG6zPAgyjjqXfYAhOV5cEmPcF6gxjllmj37PGIrm/ag+6rYZoNdueldx1l9Y7fJXJPBIeQZM24A/Bdw0Do+tN+d+mYvy4T4dJphPSVnDO5lcWrdrX5lcXas0vWgn2fVWk1uYrsKWiRcsD/H73nu3fJ1N1Vhhvugy7Jq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785318034; c=relaxed/simple;
	bh=YFMocicg0xaB3cQTep3a05VWcKGLuhx0O78DGfVQYUc=;
	h=To:Subject:From:Message-Id:Date; b=HSsrz4ZlI9X60BBvfJuEIkugaKcvspJTUa2uZ2Jqb3uxaY3z4fk0mGh/3gVRv/ztQWcWaJsxmzeuE3UKXv2tjjtrUKyIRFSaumWp+hsfgQGFECuYLydxXee1PWce9kRsj4rbAsbKtDzJ1+fz7LaiwMA12W1Yko7JQkuvIDEfaas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MxzKIlEr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MxzKIlEr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC04FC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785318033;
	bh=YFMocicg0xaB3cQTep3a05VWcKGLuhx0O78DGfVQYUc=;
	h=To:Subject:From:Date:From;
	b=MxzKIlEr3bIXwUQZ58IZFZA5jAsOWz/9R1qY5qpO9la5VXj6j2x8ao/whKgc0otvj
	 H3bnE2fpiYOmQdsepZY2UnbzpyRqJf9hMcWbNzgMVCGSzw6gCSrDb8omwXrP9MTlFP
	 e+C0TNyU7vn8RsLNlBGSKhBTGKWin7OE3m2kIZy8bru4PL06QPvhXQTZn30Du2sPdy
	 MowFhM4FYv1E6TdfBKEQV8A9ZTUc8ZorBeFjnWpMrz6WggFJGdENUq7eAzfvLjkuKb
	 E/cPVkrWija+Oc7iB+O+rHALMQcmmX13+kMFBs6ft4GGOtYM/luDZ0jBTeBV9t+AXB
	 iomdfST0XxB7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C71C54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178531803368.30513.2248436256239088823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea1ad047b18fe945c953f48dea50d2bde007c95586cedb150e646c0f80b67dcc
Date: Wed, 29 Jul 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785318033
