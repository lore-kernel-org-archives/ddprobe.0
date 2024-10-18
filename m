Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E923C17
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729262154; cv=none; b=Sh6gcghWKoOKHHBu7/qtsf6s5BAGcLxsXicP+J3uhJD68ZqtJyHAkv761LsgxmUCRODBISu6zMZzff6mDNEl2jy5hEQs0r+b5Cd/qjnLrQNfISkPIsmWy9dNF6qf+Ew2sOt3Nr7rVl2OHkNgEkl/DHtQQwMwmLtQL73RFsaIJdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729262154; c=relaxed/simple;
	bh=58rk9SsrsoDNKz8yRZ/o1dVFLO8VR0ZZVopVuhxHuNs=;
	h=To:Subject:From:Message-Id:Date; b=OIZfIg9BQAZSIOVHwJ1/XY/Z6CKtQVYg7mFdZ6j1vna47/kObX++f61PFT5OdCeAWl2qFgYuLMNbKETVVa/jqW6AtlJWpmnBiTpKYkSQRq7YtKkwlGPUXGpr675NQooxJR99KR+b7UvW6bK2pYC+SDc3CVP6lNKITL5YXEK1VQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TDkltp+b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TDkltp+b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7B8CC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729262153;
	bh=58rk9SsrsoDNKz8yRZ/o1dVFLO8VR0ZZVopVuhxHuNs=;
	h=To:Subject:From:Date:From;
	b=TDkltp+bQqXIQ+rQCls4Taw3B44R59Acdf1T7AX18jxVZXyKGH2fbkqF3CSBZTFiO
	 MPlpUigt7E2ShfkJeJyaIA+wFsNFCUaMw2m2dC7qIOgivAXRXBEEDzIGXGQv7X+3FI
	 calfzapOSGHcd0zyfWV/gSYEPjDf4hZWCz9gmeXyf3bQAoDJxSyPExw7e5cSnignMD
	 oCIy4rU3fQs9s0VQYwagg48IwtG6IILex2E0osmaPwSti3SbyU6z4x73c8AI8z3YIl
	 pTitin5ZM/dW4afMuALP6tYXlugwZkCnNHd8YI76imo3e0QDUCqhgXnzKAY8amNA7L
	 GUImo12T9K12w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F744D30011
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172926215364.23283.6354531468145926675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a601c2463b07576c41f561be14eb4de2190a8eb1a4270fe9314b735bb6e7fcb9
Date: Fri, 18 Oct 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729262153
