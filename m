Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CAA2820BA
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756289394; cv=none; b=g+dYBikeTcOLgbsk1aBnASbQtdw+5B42EiycHWs7AFoCfCX+qIvzG8Zmh2npe9t4nNUCiKavmv8Gq8TFOH73ZCmEVByFlgmTYNc7L3KXKczGyG6xG04o+BBu9mZ+FuNXDigONXWwmf1HD67LCiCJhILSL710cQyR287lRwAJguQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756289394; c=relaxed/simple;
	bh=mI2kFpnEs1Jcpj4d2sHNDQW5RGlA8hm2k5rVSI9QGyE=;
	h=To:Subject:From:Message-Id:Date; b=ndbom/bDTWdsAgPFsQaiiSrR3aAXTm3b0xpH8i4tmGgfhaLQdeRsPdQaQTZngcdrGId9WKgd4q46ioLV6I5U3qGJXoabaNY0N1I1JnLYkUbeHACRxjj8Nte/c2xATyIMMOQy27Tbtx/Tl/WD4Z7bdHkYlVvkJti7a/jOfbxeeaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cd+YaspS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cd+YaspS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0070C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756289393;
	bh=mI2kFpnEs1Jcpj4d2sHNDQW5RGlA8hm2k5rVSI9QGyE=;
	h=To:Subject:From:Date:From;
	b=Cd+YaspSafsuct6Y4KWUQZhyMnMYVc5AjsFTegOnn8ul4BdNSAyobId3se6batBvY
	 Jtt6GbNKNZa94Tcf2GK05cGx+CqeQRLWuEZHVXT+K5gaa9wmI9mrGzgfSddJ62i2h5
	 TEIIrz316tqxZcHl69yBl1KHnOkMHcBI+hZvTvQGu7OIUO8hMHhAMVYgj/bF94zHRg
	 qEEBShCnrXx47vOmg4IOPW7JmAZqYkoYMngMcaBTWBKJEpYdMrGwNdzAgA/BVszx50
	 5k/LP7bYCjOdNVe/2ZMZ2OhkTTrGunS3TQ3lpD3OFNAJCMXqdy9tY1lTY/2je1hsJF
	 q6lVLwptiSIHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91499CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175628939358.8505.12594205154525027143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f02ecf0700fd3441f23030dc5aadf77db37b231e11440697e4da9ee7569ba69
Date: Wed, 27 Aug 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756289393
