Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9BD42AB5
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 17:27:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720718843; cv=none; b=V93nKZHi+YQAVipKtSBB2Ga5sxw9kzTOUXwmD2xxHJ1A0iHch9a6w4SZ1oE6/5btwhVVIVpzMVG1ee3I2Q9NNCD0PtEHlOM1H+luEk5hX1OPiPRzK1b3irl7iCJBDeIkUFkOd+s6SveLPpJbRJqD7vycyXE3CtiPgiVa3DyDeQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720718843; c=relaxed/simple;
	bh=A+GxSP7Un+LtC6xqDg5GUD1TdhS696jT71/KEb1+Mm0=;
	h=To:Subject:From:Message-Id:Date; b=JYxgvoBI8sJ3rg2RVCmSAVgRQHc5DGIFXkcHhWveauMP8MKD6BDpR2qua8vzuZWmI2DZyMpNq/g+bgIfJnUowGV6Zx8SlvghUUAcdHlkm4uc85oH9hKkb1bz1C1d+PS1n5gxvhZAF2NlomF01C5414uNBWCwIeONHkDHXIbgdtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RCeG+XZf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RCeG+XZf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2CACC116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 17:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720718842;
	bh=A+GxSP7Un+LtC6xqDg5GUD1TdhS696jT71/KEb1+Mm0=;
	h=To:Subject:From:Date:From;
	b=RCeG+XZfG4mpyWUPwV90rXlIGCKVR4XkPG+8D5aPE29qqyZ4dz0OTXLbCHLDm9EqL
	 QYwdn4Zq3B3z12UnquUTnWMxc9hZDyGOBPqM5zX9IrQQ0Q7A/5cLY0dI047KhOFATI
	 mkHVZlOr6iFvt29OdvKBt2YKb+MBeTwtWlLHEXecuqgO/8zBslmWJiBgWmh31Avxb3
	 lKEZUmkHr8VWVSYg1IsUnRPWDGo7BYsnoy8Imff8RW33EMLQRkWvkVkjull0V6GSxI
	 l7dcSB9sMimlO9qmWQ01+1gh8DDpH7SvZsvDZMgSZwSq5VFOZGF8ceQpotxoqnchVK
	 eKq1vPOTlabLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF5BDC3DA45
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 17:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172071884277.13762.13149244170209727193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bd53b9c0018769750ebc54ccd822fba0827d1b4344fbd20d6840f43960ede94
Date: Thu, 11 Jul 2024 17:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720718842
