Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD51155C87
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759973394; cv=none; b=pnmYcGEfK5rVw4+VAGgtOchmkrj1PuiF99cmrdWwkXuRszz4eD//IZcNBlAeG//q7PkeR0Ge3gz6Yf+IzLqIBZo5x4IzeB1VOGsFnHMmzNpT7i2Hr3uSYVF2rYEGF3xuVeoA2VbwE7SMoOegC4fqiYSktQ2m221YvsFk6NGYzx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759973394; c=relaxed/simple;
	bh=ULJj5rX3x84MzR6Y7UQShk4cq1hVFbqoNEdIues9dWs=;
	h=To:Subject:From:Message-Id:Date; b=WSopoRuVk2BuId8otaW3i5iOQ+dRB1NLsmeo2kQctwY2LQBJzVNW4VNhWhBv3/ZtUp/Wp9uo1FvjzagKbBrWq4EZ6OREOPJaq44c8YMx7dsjl7jtXr7/hyaqGkNKxZ1UDfkCtnVGGHicYa9OKHU+WvD2/XH4Ngof+e9zpmsckD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iz2/tYO2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iz2/tYO2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A280FC4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759973393;
	bh=ULJj5rX3x84MzR6Y7UQShk4cq1hVFbqoNEdIues9dWs=;
	h=To:Subject:From:Date:From;
	b=iz2/tYO2qqpleo/IKtw1ysWnnAI3S+uc8oVgYQ+806W61X5GUHC+SRdFFBdwNySts
	 +ZV8BjFdZjDYgyDWt8Cxe0gbiYrJ7H3y7KYrDh2WbV2Glo3FViEB6RSHI0dd4Tyy6H
	 P8FBI+1/ftsmUCsGbTbCOUpsuQvJupGXZw1uaPkT9rJUhfW7EaCia3tGjFpt0ee09n
	 ecEsXH3omR5pRltKfbHx2s08Cep60EjAog9zhE0WQoiF6rmhAfBsbxHNx0Q4w+Zvtk
	 rEwVNthdKPQLFiqN6hNALvmKzMSV0JRQJmpANyw/Kig8BgSmnDvReq92M93QV3ohSD
	 lkJtqvkrIAyEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE8DCCA470
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175997339357.15492.15521123902455195022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 692d87a36189d360a58fb372aac061eac00277199a2473f463634c855f6668c1
Date: Thu, 09 Oct 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759973393
