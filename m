Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F33119C546
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755004794; cv=none; b=PW5H2t23HDbQw3EJrPBR9knRbmFw3N8e8I5Xw1gzQMiS84X78MuEob8lkCwEWU9tu79B+vDu7v8OF8o30CQVhAtOyoEO/pREmXaeCh9e2dfwWkJ/oRAH8GUNnU7tQT1Rrhd/YR+JvpCYWkB5vHQ1XwF/yskyxkzZEhwqKecTEOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755004794; c=relaxed/simple;
	bh=VqAQLeqivSeFf7BTizVahWlyJpj/4mdG1ycOKH4xmbY=;
	h=To:Subject:From:Message-Id:Date; b=th3S99hUi1kC0ZRmgiRQ7t8OQG73X44eyweeGbLlttVKEsVgOum/0psEV+uaXtn6Zxw6MbfNLsrV0kctbR9R5LcQhk3X5/A5CDZBQOU8KbDMdgO7M6UUK+gBouytpd9n8nQm6plK67TK/PYjp6hGdJQkH2TLVJaQiBtQW4kGduI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I9ry0sPe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I9ry0sPe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3835C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755004793;
	bh=VqAQLeqivSeFf7BTizVahWlyJpj/4mdG1ycOKH4xmbY=;
	h=To:Subject:From:Date:From;
	b=I9ry0sPeMdQBokOsIb4UtYgFIqir3pswpXxhee4rG25n3eVsyh7ALuNat1gw97jND
	 Vf8nlDVc2s/KEUTYrRDZ73iQxiR9woWGol0bQO9WiDiTW5i0lLvGZlmPpCCt1IvgPU
	 dYmJY/OwOyKHHmDxaED81uN1YrAAZJrJjsF+rOW0onquQBhWa/OCtwKH0NM9bHZglG
	 ocFSLqrexohWKD3DjbelaY3AkNc7ewcXjzTkcqUlppEcDynonWv6RBFEtB+Vnn5ppi
	 pj9mL8UvFgkbZOzx6yDHzUU4UMw3ponMSdkdqpPknhWR36e3Ug04QUMTxK7L2ETe/F
	 hr7Vuvb/xA5yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8EDC87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175500479357.1335.15549396115575781456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 818f9939fe7a901d2eebed03e127b47d3b508232e92f83ba8f2ff65496c200f7
Date: Tue, 12 Aug 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755004793
