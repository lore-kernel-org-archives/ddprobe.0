Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AE5823EAA0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771854294; cv=none; b=mUm6Hxyq5SkWmL0oXdjsQfAShWYYVMX/S/ibZKQ8hj0POSnONPTOsUBSlFHHA36o91MjqLhhHXZ+jScx4SDXpM5zZQerjipA2ALcOloPR2qrzNDz1TcTjm8pUL5jINAyvbT+VXbstAEvlVITDgurpFsQSQ2eDuTymdERw8/RVKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771854294; c=relaxed/simple;
	bh=TbXBBZA+EKbPq5yShcvJ1B3P7vXmPqdYM3MyIK2DTTc=;
	h=To:Subject:From:Message-Id:Date; b=MNBvccWz4keC+20SWKL1+CFLYZRj1+zL4H1p0j8AZioP8URjg11Dn7c2Re+gakIh8nXLs5j3evcHwgbcFceSIK0bW8w7PgmhkPbxWjZ4Hf8ybtcei2jXOmnWC74RkghlyR5rKsWDiZFJ2AXNPy4fH0P0S1jMlaETSYDXwai5sNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UKfl99uz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UKfl99uz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B955EC116D0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771854293;
	bh=TbXBBZA+EKbPq5yShcvJ1B3P7vXmPqdYM3MyIK2DTTc=;
	h=To:Subject:From:Date:From;
	b=UKfl99uzmW1TEDmtnMTPO6C/B9cFza4VifsNU2aJtylh6wuSBRuKIsJbJfIv8I4t8
	 CcgyGIno/XcSYQRaOnkO+g56beBUFeiOo6+e4HjIPgY+bgnCn+Uh8eYSn20wJ5XtAF
	 oV5E7/rc6l5txBNDrk9fqEN3ittxQBq5ABccDNkszVIs+avlsCQi4rrRn1hGPY1yQp
	 QOQ1WuNovqBq8GdnqQj4gfyugW1RwLck0iRA+x4uSK974BS5kVtrYz7CxXtECF8BDo
	 q/hFT4Z5XuBlEqcbpKHliOBUU1itNQWQk5KcR9qPMlWVPnw/SXuULO+ReSkGC7evVX
	 9rYrR8LZrxF4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4458EA4FBE
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177185429365.11123.11606519761533534019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ebb10cc78c376001d17cabd00697b1bdc56b046da4f35c1c999505867701348
Date: Mon, 23 Feb 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771854293
