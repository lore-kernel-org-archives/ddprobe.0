Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 652D513D63A
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 08:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718268503; cv=none; b=iHVG9/7rq0Alm1m7frbjEut6iLs9a1iZAEQK6lKstRAtBD4d3N8ukjPAD7Vk4cZ0FQD0oTQO2pKN6L8LXZ6Ps9BHgtusJfdJuh9XUf5+KvZcndo0vLWBD9hagUNgQL2aNuKW71VDYJn7Weo+OD6pq2Ne1z4vA99LNQ2A+ZoiIKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718268503; c=relaxed/simple;
	bh=HqjWudncGFspXA7A/2F4emO0PnY9UsdtKKME55EgcA8=;
	h=To:Subject:From:Message-Id:Date; b=pkS6RAvk6RD881QovVNBHBZVt6TeyzwSUNKdpnMHgvM+V6FREhbBSZxYHW3XOtTZ/0L8+T1UrrsIBe3M1/fXNfZHoszfJc3kHy5mZoxia9mOe0s1thS6ouVlmDWypfAlQBw5HTf932VHVdRfOcvPzExHZ1wZK0HbLea/4rcsHgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=trKQXOgb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="trKQXOgb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5324C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 08:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718268502;
	bh=HqjWudncGFspXA7A/2F4emO0PnY9UsdtKKME55EgcA8=;
	h=To:Subject:From:Date:From;
	b=trKQXOgb8BmQwk3Ws5M1O62AsJ4fOkmoJAUBNwvU0cllCb4gsImI+kAfz1ehHFKxC
	 kX340o7T2pIO3wEFqSoJ5wEzXSdsQTMklunwowXmF+61gmG4pchpbbt8Tx8QKiDoPs
	 QlqUW0UJ+ajTqlfU5qHbokWLv+VzqNPR6VOgPwMCq9BCjScXo3rUEXeI9Suv6XkCoH
	 aprHEPizXa8CtGgjXiYsuMQtmmCPPEk4qLqq1X4ZOIM9BrO/+3yCZcrrES1I013Kry
	 1kZpyD9mJwxmHHXSnck78gmKK23VHZCBRtp/Vno6mGT+vOq3fY2uh1S06sy2fF3Tw/
	 hOcC0xf7gPnjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3D0DC27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 08:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171826850279.22273.7080297484172475822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4581ca895f5265daf90c82933c5181b3a1d7ff382c068118147a5919b7d152f1
Date: Thu, 13 Jun 2024 08:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718268502
