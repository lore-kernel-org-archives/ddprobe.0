Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5EC42D94B4
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773489293; cv=none; b=lZLHWTkHscLlujOK7iWiGc24F2mi60aizF0FGDJq/uUCTZabJHnk5FU/E81k7nyc4tarrWaZuSDsgqIeJgRaI5Xf+UkrAtcMqFetotxv7UEOXRQwr+zaTZdxuoybv32I8tOyh3Se64FIIbO8w4HS2atAJ88jy2xXtgm8mLaT0sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773489293; c=relaxed/simple;
	bh=JBwzN1D1BmsEflhb2WjvmYbR1TUcTljNBhz6pLTVlp0=;
	h=To:Subject:From:Message-Id:Date; b=O8ePCgRlR45CfPyVhSEihQ6xmLKTfN3C6rRjRibckXpwNj5EcJptwz08tUyeGGgP/OQ+VwRkjaIdNxxnmtcU2GRJlUwCNNmyuqhJr4fJGyYiu+7w2aANIMKp0zm6HNOTrZxDPzoydwLql5jgynffeWlMw2FXEXqnlOwI2kQmsBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qUKxZPXJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qUKxZPXJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6F0C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773489293;
	bh=JBwzN1D1BmsEflhb2WjvmYbR1TUcTljNBhz6pLTVlp0=;
	h=To:Subject:From:Date:From;
	b=qUKxZPXJaeFrxijERsv+ktmdPoViJtZbVtxKVj0a4H4YJhmsOCBYbdw0OnKxxLDoG
	 hO12caBdNU/Mb3vzY158kJ1icgS1+QMYEJQ7qTnyXhaCkHxlUIzUGPxtNgit4ekv8x
	 KEKN3Pjo3MwkZZ8vlRl8//ii2IwXlOG86MktCgROW6P1Qi3Mn5R+LaUFDO6BHAmwhL
	 /qJyFOgcGmixMcjaCSwBwIfJMEGyS37ewmcufs1s2uxwnzw9yfzLDRJ4/6b7qqDed8
	 WniNSx5nPLneM8cGD3iaGSz4TPA7GPiVi3wiC0J+apNDHQWGi1IF7m7JtbeZEbRLKK
	 c/ZUU65sYb22Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903F510706CF
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177348929358.5100.12451897476382852890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e79f1076f22031cc99c9ad63c2972eb4f4f8bbe23ef13929580c8e55b7589aa
Date: Sat, 14 Mar 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773489293
