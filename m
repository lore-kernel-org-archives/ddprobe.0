Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3945F43E495
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 09:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780479874; cv=none; b=af/YndG09S5LTte0t6OoO08qsAQ4p0aJe4Q/b1ibwwjBddqgVkx+RsGkFcBOQwkS01c0fdelXcKrpwSXzxOU0dcEayJct775rNeLp6y4Ub+WzdYuwBM2tjPw34v4Jw3BLmziK867RLUYwAiI7RXEy8Jouxu2XEfoZsPImIBiaVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780479874; c=relaxed/simple;
	bh=fZzxcJ+dRR/p5z9ZXh1evHnzU/NIoMcDAlremsrdzQU=;
	h=To:Subject:From:Message-Id:Date; b=bBufPwi2lj4Idef96a7XoQx8EExoehZuTULx7Y/i8pwfzx0QyvhNGpLgb4vGKosUWJBJVNwMnRGdw3DYfUMVsWHmZ5Jypf43WHrC1+pYL2e+xo3+F+klG9rOViYBkJr0EDQDELLNEhps7P7pycjFy2ndZcgBNjAPjLkwaRu2ZUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=McPWgjF1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="McPWgjF1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD3BDC2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 09:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780479873;
	bh=fZzxcJ+dRR/p5z9ZXh1evHnzU/NIoMcDAlremsrdzQU=;
	h=To:Subject:From:Date:From;
	b=McPWgjF1RYAWBm9fvHZC62NHSYvjizRYtVp0f6ECoBGp8z9Dg4OwtgaVYZe3a50V+
	 i3AUkP1xBiGusBI3uIMXPdW9p+typwOTvAIX78+uRSgAl5eNnlN5y46HOEzhlws6jZ
	 VXHD3kY2p+IgvK4BcU/gToO33htjebKEpxNlN4NywKKGv6NJrMmFpE4ai/3TFfjtWP
	 KSfDQXkW0V9JWEZQKYid/gSRXaOOoFTsekcZKnZMIR+UA7sDKpHwpyXiuAgSz+21lZ
	 KbcItGRUJnIpOJ2eVSuJEGdgNWsQh7VRl18IM4b9Q5DMNOR9SYION20BDg2aLGxWJN
	 PKsIbriToLzpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB13CD6E64
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 09:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178047987370.3827.3497654826121032845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fc657742aa7061f196ec12c7850d976198fdbdb2f701fcd7d2175e6d20ff5ab
Date: Wed, 03 Jun 2026 09:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780479873
