Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3246733086
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748443794; cv=none; b=NrbopHy1jGULVo1UdsJ0iAiAo5UQlWqJIFSH57mm9DRIOfnMv3AR6YnUjEs1Dw8JfNtLkHpBKgaAfCdtaugnTp6L5rVIntttk51UzV/vDFKa07IJEx4hWqsMN4v8ZPWZ5hPgOn2h/pgNA/babOcDfFVj3oMwOyLZW68ePe+fp9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748443794; c=relaxed/simple;
	bh=B7eZMOkXRGLiJ2S+fW5Oeb4FHtjx+cxgfqfC9cQpOqY=;
	h=To:Subject:From:Message-Id:Date; b=Oe7ZcWXysJoBtZKnQIRHcPHdzlPhjHMhaSmjKedkuc7x4Q6kUxQw52I4sEUT3zteVypR9r1k9Yni8atqZULvgc14B+t7bRgFgynzHIdEfxvebuq8D/Lvf/xSLegFAa2YqyTHOIrmFX5ji25DCnBPBZZlh7gJ+o36jCM+mWhLZgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pBzmfF2D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pBzmfF2D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EA5C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748443793;
	bh=B7eZMOkXRGLiJ2S+fW5Oeb4FHtjx+cxgfqfC9cQpOqY=;
	h=To:Subject:From:Date:From;
	b=pBzmfF2Dnk2VQ1g93M4rgGiuzZYfYWU1MWVtvIF0tIrUhXnVbQ5Mv4sMdoW/UzFo3
	 AoHRw8PnhdyaU5CLABs1vhmbDkwQF22uSEuv259J7Fct46NubkT6mpWXU6Z7qrf/t9
	 EbQ9h9mxohdz4VdpXhV775t00dMqUWrk87ivbrmXw6YF1F1XBK4LMcQdVd35bAylB3
	 RAtVpim95wua/Isash63jnywDTD7dZvJCriI0MjyRRfRLMYzuunnKIbtjfbL3u2qpN
	 7hnTxPKMZaLSoyU+LKbZKnbktRNIyiGPRmz6nvaU2R6qS/3K/ozV6iETH537Yijtql
	 sw3M+9M9LypSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91861C5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174844379358.9855.6088043995458697607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed8bcda63b5993598e891a7c81970caa2d1f01d2a945484e3e583dd3ed6723ba
Date: Wed, 28 May 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748443793
