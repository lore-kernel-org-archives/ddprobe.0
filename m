Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CEC1340400
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 06:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784701714; cv=none; b=J0DHZeVYHcC4cmQIpRl0zOHBIeX9yzhqpPCtUv9sajaipy85oSRq4fjpnotCs/L0UB2w5JHEBVi9MuuRItWRvY2sC3ObzYmFG6mYEpQR4BffUB/k1wEuiVIJs4ugQ7SnopL3pniRV/KtFt3FRvTPaL7k//0+VdbFCOy16kXR0Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784701714; c=relaxed/simple;
	bh=yq8nYL94UfFtWeqmcbcGaz2UC8yvYmwftG0yDSqSgYA=;
	h=To:Subject:From:Message-Id:Date; b=YiFwYqTfu2saBZZLWFdoml4t5f0r8/Kr3lkUCJPDvO3o6I4tvrUUP0IIr47xTe2E6N7oXega3cIATD5tqYp+DPjfycwxKzOJZ7q5/4dm9qhT8+fcMlkXbOrldz1yb9AyZPjQLzgBuLMhoBs8An1aTCNGzMk57Y6hAx2KbngbDEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S9O2h6RJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S9O2h6RJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4991C2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 06:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784701713;
	bh=yq8nYL94UfFtWeqmcbcGaz2UC8yvYmwftG0yDSqSgYA=;
	h=To:Subject:From:Date:From;
	b=S9O2h6RJTY/WxZ5hCFrv5mz70Eh+p0WrCfm6Bmcb7VASrPu9bIZ1e/x6aC4Bl37q+
	 AN+LGxyx/BhBrLK3/mXys0bOXsI/1p7VwyrexrxBzc0p/7j2JsJYs7tgZQIW1HzLW4
	 PQr9pS0yo812g/CgPdYL85Qhx+8mtdEoGmZglYKEBqGAq4CFPlAetDChqgEGKlNTyt
	 qvQSwVVlzLnsjRTwGSNq5qIn7/OHKFjONEijP8P7k+wpPozq9RjT4ymPTY1MBY6bYi
	 kvADOJgiUIMoKcb/rnxAFnUpfFmsMkbDtsiB3a5o7KjjdrEiExznn2KfdLXKBQwoKS
	 bNN4A1dL3KIpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA48C4451C
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 06:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178470171369.3970.17061342887155864189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 310ed5fb2ac17f0dca5ec6f78d0bb1276935356615798b8771eadc5e3f6c1301
Date: Wed, 22 Jul 2026 06:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784701713
