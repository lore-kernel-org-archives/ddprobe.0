Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2193C1AAE13
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768769034; cv=none; b=WmvWYtn0RBgHOQCBoiAovOeb9CPFMvjLpfWMDLN09iWeJPqm4SsZ1nnoZZzZgR5AuYTBwEC+4jTgckiDi+FuDgXVnxgXzcwrckd6hSIxhHzNHL6SfRGzbdR+pxlHM6JBhxfzorCMdhDqWJO78j3U2oMi9E2dsm9VphbJG4rVoJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768769034; c=relaxed/simple;
	bh=IU7I0ZSq/rO36I1CNuHpo8vHUvCepGjedt4vHSEM6FQ=;
	h=To:Subject:From:Message-Id:Date; b=W6106OLyqAJ+LLUZFLrb6RmBKb79Ne2HALyGDcX7Y/HaR8XLB6197AcscFYX1TdkyGySPaSTA23jqQ9dmnKM53pSa7MZ+34u7GFZzVoyVTZ2CbrInIm1cqqcOW4GNdMI4cwbomrgVbpnhwT0kpmYQWJu5LbDrgUaryLd10u9BbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TItQObbS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TItQObbS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C76C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768769033;
	bh=IU7I0ZSq/rO36I1CNuHpo8vHUvCepGjedt4vHSEM6FQ=;
	h=To:Subject:From:Date:From;
	b=TItQObbSuj9/yBwHNCVvUFvYLlBvFMePr+963/wr9pDNCD+UiLZRVCpekzf+Hq/XG
	 WfFwK32o9bhnOpxbCsM9KdOSycXKMsaj0Fe+v1p5LE9zTrY1Tp/3LpiN86JGrklT8b
	 JlIIfdFprBO8bxiwErk80lpcl7gRH2nxilrzs3t/x8okV9OYGOwbPrslRdNjVSSh73
	 IprRRr2Fgps/ll8Jf3grTVUP17HdBFcoxPlnEPhmgoLKxqMS9wEUI5IpSfQcV9Z7rz
	 ZRGzayDj2BIJtpHAuG0C0ikb6lQVYY4WQzT3647nGfsgJj4Xj16yjowIxJWByT3zeH
	 asJrwHjMDiybQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9230BC98315
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176876903357.21171.13235650073612296107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3a02ece46ac4c8129abcb2dd98593650fc2bcb3879b8d937f317f136099208a
Date: Sun, 18 Jan 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768769033
