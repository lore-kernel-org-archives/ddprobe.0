Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4BBDDAD
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746930594; cv=none; b=M7LzEaNgWt/JLN0Ln1wf55IxHje4U3BvPfsq0IEj+sJH7BVAeqDn/ySLpaiOL04Y0JMrJquBngOOafI9fZ9VFCqoFg8+Dd2EOHNH4H8dXsso3AMHWNvKmagE7G7bZKREg1sw/kZx0157GN1BHBDyA7O4nwDCtObpepc3FhdvaDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746930594; c=relaxed/simple;
	bh=1q0uLXK6Nei44vGMHEw+F4B8zP3MjacRjEUBSa100P8=;
	h=To:Subject:From:Message-Id:Date; b=BfLd+rYzBBfsEstshD7Y1p7l3CIZ3jJZelzceZqPhu59Z4Lp+3zbdrZQvNr2tuBcgmW2LN4NTbAwEuSPvde+3EWFH9Qxzt9Bp/DPdX1OmQMsQKAh6dIdVm8iy1eG9358jCfZNA6wafbwk1dtvVrBhgnA+dFiO8R4RwpRu/lWbdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hwx7emHL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hwx7emHL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21DCC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746930593;
	bh=1q0uLXK6Nei44vGMHEw+F4B8zP3MjacRjEUBSa100P8=;
	h=To:Subject:From:Date:From;
	b=Hwx7emHL8/wBmJ+z0ITVp4joc9aT2ugAu0EYQXTibaHUzrfEJsU2vLco9E5EXJnKf
	 yVvywGHwN0sXYyCGDV39PLbaWGlOfBQn09udETnYxcrZRJN2WkEMDmjVDhrY4waNh3
	 81j5oXz4ytxjDwlJznrI41iNi0+zKTio8BPhVl/f75eWBIumOIY0GRwcBSBsbZeGZW
	 X/l+3QfabLj1qSX5LD+zDDuuSvpAA/yPQMtX+0Qj644PAmE8AqxCu2Lcx7uJHvghvz
	 KegSWba6Oauvu8htW1eHNzvKnldHn9HbXXWKi2sRx5KBAW/jCRtHS/PyugEhIdycJC
	 Jbus6AgIWIIRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91856C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174693059358.14741.14870414079230157683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa4593a524125457e42feccdbf6949fc92262d66c94d6439d4bb008cc78284e6
Date: Sun, 11 May 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746930593
