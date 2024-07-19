Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A4153C39
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721433354; cv=none; b=aqYqYFhFv17+FD+4LRgm0xde1vrrAIeHnaoZXmoOQALrHH/y4JzWaZP7tNshgSCRzvRtIEL56mSZ/2SvWsA6+u49Miy/8xmPDdD0hDJCfFrFPPlYu3KFmoMlHKioP5NvrvE0ryk8qAlhie84rSC+FWl8nMHf37MaUw1B65RUEL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721433354; c=relaxed/simple;
	bh=5FvggWj57+1mn1o3zfbrg4jwnKzovFbclX57Y3qaGCk=;
	h=To:Subject:From:Message-Id:Date; b=TZIotHprhltb5lN2O8rIu85uWFkCBT1s09cp/tjdY83LJRYzwgtcLcyWYEgVMmxD90QnLfdgWZNyo1BLZfRQaDqq/bPOM98k2SAVcQwYNr3JF/OlpxofacQ0HNucwqI7wgWmUCOaFGeJQp4OonB681lXcGLrkNYud6SIaFZrNy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sZC2yfjM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sZC2yfjM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B25A0C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721433353;
	bh=5FvggWj57+1mn1o3zfbrg4jwnKzovFbclX57Y3qaGCk=;
	h=To:Subject:From:Date:From;
	b=sZC2yfjMkLO5bmiM85HcJYVPO5Djac/TqEwIbNDiXQE/tLDkgUEWu4EWVgaGhP/KN
	 OlmsrhmNXwOhCSd3JalspfxwXVOkP6nRJolj9keZmn2sCcb9O1eZs0qp6wqLhyeg0S
	 wRSbgD8gU+umXLW1DNps6qFg398IdZbA8wZBV6r411xfRkJ/f9qt0tuhUnw+N3BIIm
	 eqP4aKs1KZ+o+2/hYUKumHGi77rphuY/l2fnPPEOJD6X1QbkwWIlVHHQQhaAxscJ5x
	 onxsiS6YEHCk7wVITv7ib++Xa/bA35nXc/YUm6OfG9Cmwr6r/d1j8AavAEP61eQVci
	 pBn5lxBKQoJKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972E9C3DA59
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172143335359.30873.7424060100003947884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07dbadbd04514bf1a4f4842b8770bf0c6a30ca15ed4ad415c73ff7754ab2d4c9
Date: Fri, 19 Jul 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721433353
