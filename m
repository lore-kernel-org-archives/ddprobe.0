Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E387280A52
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745425794; cv=none; b=MwGBcIe+hhTRSnSF6pJTAopENFZqYRHhisJ320LYmbHycAceVIR3MagkpvAiwSk0ynuADLbDPhgRueXTOh9MwBQckAXx7ryt+JYNBItPgxCD5SYJwT0+yDa+XzgPNxx1TqNTR64xVWCiLlvN7ngiRleXglO1LizA2/MCGxfAcA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745425794; c=relaxed/simple;
	bh=QH80ErcepNpAh8lEJyEQC9A2KREi1vJzjg2Br7kHMT4=;
	h=To:Subject:From:Message-Id:Date; b=D2VQ9wYmBQ750rlP25A6MPKWqKalzFNg8Rqo5Iw4rR6UP0tJ/DiSjUPLuflBZbbE9B1Pw9zoLVbGfA4Apta/XWLwgllsDrw2yj79K3a0MFNKz8iX+j6HD0yzoEsfhJjqrik0Y/kU5dRC5h8773zROWlWVwUl0XeqfKdJawx24lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjJz5dDH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjJz5dDH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33BBC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745425793;
	bh=QH80ErcepNpAh8lEJyEQC9A2KREi1vJzjg2Br7kHMT4=;
	h=To:Subject:From:Date:From;
	b=gjJz5dDHkhEbAGzlNhaCpGOqV2aTKSJiY3moOOVSimBxU2+ffxnd4k1gZhL8xOgWx
	 xTfUY+8hjfwyVcX3Gzxrvj+5XMeWpeceN95tjg/JyQkAiRSWghMWmMphOSoLHUbhGT
	 4BMtp5eBumxlctgyqjtvfUP0lM1WxYFs9vBjYDDkP85b2Axvv6jXXIirpqlyPKaIQr
	 etjhhLmtAyPn7HAPlBOLnLhcx1VvCkJEVAekc43RgmcLNISC/DaQf3AH1yJ4ga9YCn
	 bVNpzH/ZctmEePkO26o8R03/PFeIFTOPoaCm63ec3ZRUZU1mMvzS34q7dOfAXNQEp6
	 zgXLM9fA3yY4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942FDC369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174542579359.27859.11088831159253514954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8f3385da0ac1349171499b54651d5a621c927567aa5cdc03aba23c35ad2c9dc
Date: Wed, 23 Apr 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745425793
