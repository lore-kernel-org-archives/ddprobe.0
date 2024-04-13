Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABAE1EB31
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 21:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713043763; cv=none; b=G0I4M2JPfLdmeozL5tjT0qaXTDJKRP5Gw72XLAz6PYN8YEiazwLrDLdI9v0qNxS74C0YaD7fPZ6oqBrBei4AHyg8uXWxfODCRhQfcSCb63DcyINCoBqCO4TTtN6NEN4AC3XaS45W7w333ows7ZJCSV1+EJNf3r0NqpRIprHmQek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713043763; c=relaxed/simple;
	bh=8undQO8UeoqCsc5VPBSeiS1NdKerTayna+/dPr4G0Aw=;
	h=To:Subject:From:Message-Id:Date; b=BMcpc36LSqxsuMgLki7JFH1VKY/WeLR2+6N/cutJqMohsWTO7dVjL6RdTCXfoQ0sfwAxYRrtiWK8LkjI7RK0h2P27vyZPHqrkmu04+ZiFZvmQqcF757QacbKB3E2DJPkGVQrSSlpDxLHsDrpL0JsWKKd3E9g8X2IFnDRiqxWsIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYjrD8/F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYjrD8/F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA9C1C113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 21:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713043762;
	bh=8undQO8UeoqCsc5VPBSeiS1NdKerTayna+/dPr4G0Aw=;
	h=To:Subject:From:Date:From;
	b=aYjrD8/Fd0gtobZufIuMx3CrgsoT5mzLBrgb9Bry7qSdyaeuuSoIkhhzLsv+eusAI
	 DWgsl9oFCwXGHFR0r6O79mixr7Gkdm0GBoR+emmGwDEm1t5SpnKJBwepouOpAlqE0F
	 UqDhWav1lgOUu0hI7HTfh6ZfATd88cfP2L3yIqiEl8beMfuGU4d762XJu/nQpzfbXb
	 1zIBtNULPx09qJFqi9eCm/TfkQncYwYATSStAc71jg6JTGe+pWlVIubHEqwJEsQOrY
	 g9G0Uv3X2DaIRNt1DG+Ih7YItZuBU5gXAKCbqHdLNjZLj6N+q2ss2t0K7PoURorUBR
	 8Xh3kD6Er1G5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA7B4C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 21:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171304376275.1796.12858133199774474190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de8f709e2cc861c4dcc0029b43520711d70da3db3ceb73a3a709ea21d6229939
Date: Sat, 13 Apr 2024 21:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713043762
