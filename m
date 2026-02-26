Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460D5318EEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772103294; cv=none; b=d0JPCCoVfe4dLFsaHmUgaNPlAnAufwHbKTGlvdeil/V31+YHCyUFx7ov+8lo4zsQIKx2wXMTxZcUyIinFxVwMjZ4NlTO8pOHXdqh6NtUMEyvs5CZQIY19pEp7VGTKMqKsOojyxH9QKtZguLjlclHE/h+VW2VZmDSSEfAkoG8D7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772103294; c=relaxed/simple;
	bh=ToLHWR641VSJgnARkjUipvRxz9nRJN/rr0LxFVuqZNw=;
	h=To:Subject:From:Message-Id:Date; b=ijEXziGSOLtBGUCpcogtqlZFeiuLGF9OiMY5a17pMDRD+XD+bznPqhu6toFLFS11bJR2gcFSAa4Rywyu9TAtXhGFQ/2YOYpZ+ke1FxmXig4a/h4yhUWG4+9YQDoT35//GjawgCCqrS8EkQlxwpPEhwrpTRQzfKQtZOQm3w3GO4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fvfgN2+X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fvfgN2+X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B78AFC19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772103293;
	bh=ToLHWR641VSJgnARkjUipvRxz9nRJN/rr0LxFVuqZNw=;
	h=To:Subject:From:Date:From;
	b=fvfgN2+XihifFVvrZ4sOJKRgdqnWzeBPueYVU6ZW/BBlh/8NQ1xI3qpxUfH6wPUec
	 k7uTYwweeZpPYig5XNDy6Di/dkzR5IwzK6M0g10/8Tu2PnYdSIrlXpjPh4x/qL5BK6
	 7iKsnVyrqN7rRaZgNKCm3eHXWlrloDOkKfpxXnj8KVif+Qu29nU61W3b6QRVr6ssCs
	 dMfi8BqJNAvARUGC1ULt3OAIXcllxHe/PFxjH0WghwvGPJQXw28E+3RtCdvRM1nezz
	 8iUGAaTDtbcyxQQkq0wofrqfui3nj1Wvyj9PWkt/S45pM8+GhRZsM65o6Gm9+VrF8M
	 Y3MxBoVtW4jzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A159BFC592E
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177210329364.31492.12371581299885905235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d119e67e850d7f5c7fb104750aae4d77434c6798b1f73d87e124dfab5d1bf16
Date: Thu, 26 Feb 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772103293
