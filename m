Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C24A7F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721693754; cv=none; b=H17bg9sSuzC+BVNzFE+wewBCENpz/bl7czFK3hYoXdZnCTxmDMxNGbkV8x/iFQ6F0JhAVml96zubDJp5z7DH/aHhQQZ8Tg2oiIspx1L3UoXyQo9WQtbRn/p9JOpjIT3yEkqvN4rnHi6ZffSCvDIpZQ4CEEWviZyhnH4muae0lAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721693754; c=relaxed/simple;
	bh=Y91WtquDwYeCBgG39kCt4oXHcD+QZ2bi85npUYFaly0=;
	h=To:Subject:From:Message-Id:Date; b=lN7SVaa/5E/meWxyDjTJRo6qGnY5tBNziwaqtePuuBylkyPh/EYtXhMrrkj8uZVGSes5cH5ZTbZB75P6MlJb5nQvCUv3yE3U/smHFjBKaJ/KwgGI30278nf0zsaFnAYPlPIQmH4nmkjuX1duI/HidrYXTrlX7w91ICpMWGpcYh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Si5nL1/V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Si5nL1/V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F4EC116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721693753;
	bh=Y91WtquDwYeCBgG39kCt4oXHcD+QZ2bi85npUYFaly0=;
	h=To:Subject:From:Date:From;
	b=Si5nL1/VWZ9ktX/3pcFChw0caPWYrR5iIqHfZITsDo9pDDNTCEMuyRdS3nJpXGeWL
	 x2dJQ6hv7CEqFfxozQAZ2405xr+BpTx7T8GXiwnpcyYbgqKwzeRCjuh33L4NNDFJl1
	 KOcEwf/DivO1+CtxZjbrXDgu6W2oImND4TAu7xO8xxfvaJUQ2RZ5T6rfvmK3L+Faz5
	 Sv8crQTZBJfj4Q+sKSHzSRKgXrLu3NNt8ORN8IH/T7R/IRxExdhUAHRareCxoYZiUf
	 JP6F5XkkyPyvKgYzsp3BidGEG7mNQ43zFiS6v/ofN/nxNC6L45/dKlYkqF7bwumyQm
	 k/De9zerK7f8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C839C3DA5D
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172169375363.8095.520179703148339526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a952047a85576c1e19a2436ea15cd7f5084dadaf4be42dafc11369a44c692515
Date: Tue, 23 Jul 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721693753
