Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1096627934B
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770788094; cv=none; b=p2wfDwu+ViccyKPcLwLrtVtT/zfteDs4ABYV7ycU+GysSenYLQt7Rts0IO+DQjR+Jy24tFqYLSjSHDPNvPFJP2cE+ccQVI4pNYJz57UyMZQSBgrhmjzLecongKwI40yFKMG0ql96baSdTYSaeohWPNmlR/gL94sCjvJVvjmE4CY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770788094; c=relaxed/simple;
	bh=t2wv7MQdePogGbVrJqK9SKSguo8ooEmlu1QtkBFDJnM=;
	h=To:Subject:From:Message-Id:Date; b=MdtbBKEWhfJWfXZ8d21UnxMJVSW3vE8uRGBGC/efziBdzmKUp3vt4MiqVAcRuP2EapKfsDoyaauXwCVShqlJS6/WqS+u8Yq8AsdbiorxNu8EaGs4DTvEWzEhR7e22ccR39xt2/260M4RXWd0QuC0JQS4jnsfxd2ePLVA9XC6fMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KjWwKeVU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KjWwKeVU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB890C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770788093;
	bh=t2wv7MQdePogGbVrJqK9SKSguo8ooEmlu1QtkBFDJnM=;
	h=To:Subject:From:Date:From;
	b=KjWwKeVU9rEiBWSchTj8nxYZyOptdkgiszE/c/fZgiCtxUwL0ryLJy2m9eFU2BJqt
	 wuLPfzk5kBMcMc8iz356vqQxFA99zB/I1jRrS7EDeMKxWShUM+wN3N+gU325xnwmne
	 0OVL6E+LgURVrW1qhRCdC/EW4r29F9y+xU87WzPHLsUzB9i6Kl+Z5SdYaLgu4Kbd5a
	 ET3gI17JrQLo+REM1U5v5rvYT1lISklLMx+aqXCxIOorPiidP36JPmLJ/0aKvXqlzG
	 nCcRyz5NyHV5CKFwnbSUIFzQR3lFFOPo45AUzcCA/cYWDLYvEdhxop01XhrZeB5bgo
	 Dro22L2vwu/ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6A58EB5967
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177078809367.29260.6512487990659138172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cfac472af3ff0dac18025b9797debc431f49bcd420d2c99506a393b52c316ff
Date: Wed, 11 Feb 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770788093
