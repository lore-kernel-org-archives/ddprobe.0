Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0C734D3AD
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771835694; cv=none; b=mrGFSSFZWO5EjoOEhhB7JXsogzJVQuq0xebzRABo95OHGXNR4zBRoCHjverbONohm6zpaDPo3FXL8g8DCYKrkqrF5CuHu+2EGXSxcYiZBXyCS8BS0NSSa0783lrw/bKNzZrFbS1NnpaTFp08Krs525r5RD27qVgicpy2H01p9dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771835694; c=relaxed/simple;
	bh=MizB5WAjk4f9aalFSTHki2hQTi4xqtg2iKtqG1y4Wmc=;
	h=To:Subject:From:Message-Id:Date; b=WO/tkHPLqbFgwAy9xkdCcpiqU+89YTRlYJrtpcGfw5XKUOccbhm+w/KBitNuQuAoGavOkRFNV8h27o5DwQtS3A5Mkg01bvMLLDEs8VRL241hk5GcHKTvmA8KEtDVPGBJoqVAghq0CEKoRkbrays/sdy7+pDS0A6PjF1qYqSmKMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MkWN23Cj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MkWN23Cj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE4FC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771835693;
	bh=MizB5WAjk4f9aalFSTHki2hQTi4xqtg2iKtqG1y4Wmc=;
	h=To:Subject:From:Date:From;
	b=MkWN23CjVFID7s6WVwuxrijXCUz7bsj//RFhqblMrUO+S6KEVp+85M8iafytuVSKU
	 W1ezv8kr6wLjb5bTVIHmBrJi9WznfkVfOu9s2yg6qQtjsocLO8kFtYji9pIriIe5zk
	 XJeOv3o+stW6YWDYONoCaQmER3uMA+9pRccvABKpa+9dyMbItg1X4i2exzE4ZprmrR
	 rcgmWK0aRiXuJ34d2HtOpSMd0Tm6jZz////IZ9aRt1EcQpPkIKtMfo/YeiwKC1JV39
	 xIBSxOx7RvnP1WQR9PLHe9l1tXIfIAE9W39auFenLOyti+rVXR2OLYgeJkj5pnRWIR
	 wgI2nwu3MtkZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966A6E98E06
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177183569359.2693.12823269994608342098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d10fcce9d4a55c34a7ce109e5633c217edea3c541c5c9c1d01c91a092b0f3f08
Date: Mon, 23 Feb 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771835693
