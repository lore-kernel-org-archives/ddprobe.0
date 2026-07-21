Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B9E3FF1D0
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 11:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784634514; cv=none; b=YiH5wQjVHRjDGIs+xkeBl+P182bKjF543ixQ42mtibKE+Oyvo74MLtLqNhAjswwgZXSohEAec9X3cT2YUyRJgU9o5NdAgE/sp8paO4jlvu9x/nJKWMsdb8/xnQx+0vUrIePtV7yIGIjSYbkf9smE8cMhZXZhQ6+D/ZE2Kqr7W0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784634514; c=relaxed/simple;
	bh=SHghatS61aP7fVp2Xn2I8JTGwmm3EDzzhJmrZ9iUh+M=;
	h=To:Subject:From:Message-Id:Date; b=rJepVRBzXDz5twmAxzP45gzK1Or10jesUXh/w3Qt7Ihohu0X+IdIV7IT1xtFn9g9gJimD8d/AQhz2IvpFVmz4W4dkpP5XNHFIJtU8fuBylmjYSBR28yQFhOUzAejTsn5JrBPue03Z1gxZvEbgPHILkpBPHiGlWkCT1TU+dthIM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jJ/wlx46; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jJ/wlx46"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0E54C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 11:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784634513;
	bh=SHghatS61aP7fVp2Xn2I8JTGwmm3EDzzhJmrZ9iUh+M=;
	h=To:Subject:From:Date:From;
	b=jJ/wlx460VznZEz9S2INXhcNEQnIRsJ+N9vXCE+KBIkRDywXl/YxZU+gmtaXFF0Ff
	 t24EkmX3P1DvNKAvnesH7CCL5mT89VjsOZZV8Cz5XIyU7PNgqjwp3g4rIHi6cdHbbt
	 S3p8JWsXkYHef3lI9ztjUoOLQ9cd8ceWc2cJ5m3GFUL+uZz00fEDWfdIeAPYzVhl8e
	 UFHvZpV7GrUvwqoxFWlBcAJ5HXcc98eW27Zpn2Ht8iNbMliW4LOkV437U+/rdsD6Y9
	 y4G+g47MQe+L7q7mzv8/grhdLPDpEk/93FrJvS2fiFq0feWfuBE229WXUhvFLfOz6w
	 bMFN5TbZ2E8uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B971DC44529
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 11:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178463451374.386.13510795822912195970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e443cef9d201d325f04c1180a91d730eb05e49d039b1c3c0c84fddeee0b7f6a
Date: Tue, 21 Jul 2026 11:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784634513
