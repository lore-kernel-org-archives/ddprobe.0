Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BEA332919
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 18:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777488454; cv=none; b=giVDJXsxOG6Ha6RvEgEXE3hxU4t8dpQ0hk0yzXoOhkfKvkNCfcIWQSA68Or3VdACK7WNp7PTIpusuwmAosihtfbSYcnQxF58KtPSWs9NyagAEVSbuTTym/8wXPxfvgNa0Spi3H5LfztV7LWXl8Vq2tL6hOAKnFMy3np8I510PAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777488454; c=relaxed/simple;
	bh=wQzN8XVYTAJZPblGmY7y0uqeoggv23OWhLBtjRCPAvk=;
	h=To:Subject:From:Message-Id:Date; b=lcipsGK0+KV8v81b161ClYgZiS52YgbR6nufQDoMebL3gudCw4r4goeunPKygGAxcwISZLRiGQ7S7d87kxNYLMFpGEZiM1as8vkRsN97JQ4jLzzis02FaE8bwIFdhBnWuYS5pVy9zNHsuh/K04Bhk8QNNL/pxEdVvnnOsm4XQl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cjAwjq6Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cjAwjq6Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1494C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 18:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777488453;
	bh=wQzN8XVYTAJZPblGmY7y0uqeoggv23OWhLBtjRCPAvk=;
	h=To:Subject:From:Date:From;
	b=cjAwjq6YJgpM97jXrcOcjRTQOEPiRBglQ8QAEiXExlvgORsA8zTEVG+jrzLk7hy3d
	 ipRj8rr45KLbvHMsB43D53VfC4Nvdj9Rktw+WSLvDsBOmcK3xCVjZBTudmFwv3FE75
	 h78LzcGjCDl87hJMImaCtg+PVpgCsHyuxCgxeBMYj4HMHDoRlL3005hoq6VYkwMy8Y
	 Iwdid7aqp1vPFjx4mbxMSW7kad+rmRw+uPKmk+pAfj7dqlrk6PptDpJy8OWIOjvMK5
	 ZKt7d2fcT6NhNcNdtuuJaVaHtKZKcs+HLPppnMREkUIGjM8y4vhKsPkmLdo3c8Oyc3
	 Kd1oaD/ouv7zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB803CCFA13
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 18:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177748845369.26553.5721074197701646916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d257d33c8eedd655148e549552162ec92551a1be12aa618226c0ce38125b5512
Date: Wed, 29 Apr 2026 18:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777488453
