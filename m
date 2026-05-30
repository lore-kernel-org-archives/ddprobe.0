Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292153438AE
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 16:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780160014; cv=none; b=C9hDHAMNYsyvXxuoo803bB/EN3IM1/bk3RqFmVEtugxcFrKlNLrMpzhtOvwcBGIJu8Kg7ZGTDi0kFOoEwhSprJRRl71Ybk7jFJ32D4U9zfr7BDfc8nS6UeGpeMfuqKR0npCwYbEK9q2viJMLjZe3v46dko7mawQ9wrDw0I/NT9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780160014; c=relaxed/simple;
	bh=CwIxgTy38t03IdIEZjrjceMj9RPlp00FjXxn8jVoS9g=;
	h=To:Subject:From:Message-Id:Date; b=m1DBS9CG8sm6zrbX6S4ZNK/2jVLHiQd6Nf+MU+j4Jczw/k/HJiFGMrB6U9uzisxAP5erbQm3KlvfI99Yx/XGz7ZfXsYN0kmfyIXVygXWRKuv9ixbPRxxqku1a2LMl6mFA15YIWLguP7iF2glLjRTNbjO0uBcmfZ9zHun9ZL2KMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bcWjzmBE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bcWjzmBE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1AFBC2BCC4
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 16:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780160013;
	bh=CwIxgTy38t03IdIEZjrjceMj9RPlp00FjXxn8jVoS9g=;
	h=To:Subject:From:Date:From;
	b=bcWjzmBEHmYM5VZv6R7GZxorCWOX0A5qds09PgSCFFLxMllhy4fAwWQtY88/H8C3/
	 Eo9kcS5TGslgoLVKY+ZdL1ncYxWIqqwgS5EztU/EbqZfhNvK1l8OsCRbdQpoYahOs2
	 6O0ik7fBLQ2nq+I2AogU2Nk+9HJo672BcgE5qtyEAq822+i2vCWN4bWZDM2dmM8YO7
	 FIysqS+kJe5tTHdfoDM8qcb0f0wAUYcG0F991oGb56iXDc+CjALLZULREsAmLGdZ+0
	 E9J1gWQ/bC3k4441cgQM3IDIHBsGsiGjXL8HWmmOH8m6DJyFPrePaalGu+Anc6b/uu
	 kAfYxrDJkehNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB31CCD6E49
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 16:53:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178016001369.27273.17267950558487886134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 534bb88ffd2a9747574cb4ca63d2ba89e86f42040a2add696bce7e84aae245f3
Date: Sat, 30 May 2026 16:53:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780160013
