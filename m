Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B6626AC3
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757269194; cv=none; b=qOpKJy+A9dwLFL/tFLcBAUR8UKs8xC/2DY1oUCExVn0z+u6r94G6dWxmb4TR/qiojj7cP9V8R0P5cZoQ8Sv0nuYXNIPRmdjvdvz7jPmGWSAYKkKIUXF0JXxB4t7TCKizuFxljDxtcJrEBmo36HtVgPKE0195QLzb8MxWubryzCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757269194; c=relaxed/simple;
	bh=xyoT1fTs4apfW+IxT3ww1Kx7YkJK79Pa9tRX31bq5zw=;
	h=To:Subject:From:Message-Id:Date; b=CYdtpsGVUMwpKLVd6xVc7bRQm8rfXUnO5oH4Eipx0d4bMGyW/+JumOCfCmg2IgM+ml98LILUrSy+YrAiHz21kQF/ZDYpmysK5xxZyV4+ZvJ2SUo6qh4gkdxwiMZ7ZgZSR4gqBV3Wp2r6R/j967tof1G9sd3YpHQG/i5RgLmta1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=twCE34p/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twCE34p/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5282C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757269193;
	bh=xyoT1fTs4apfW+IxT3ww1Kx7YkJK79Pa9tRX31bq5zw=;
	h=To:Subject:From:Date:From;
	b=twCE34p/U0Jf8/tVjHa7ZZz9ymZAWTRhvMaMZXMRAO/nViLt8ZGcFVYCu2MlfedMr
	 aI5Eqi5cGADBaWrduSYOIx+sy2KGR8owRzm9wf4Bd/XhnYqLqxPbmZt8XAxQ3mP6SO
	 AHiaMQiH32d3T6I2JLJmETDsfadYUpY6V+AC2nsV0/O8+1guA9XkliV4EAXAaT01b0
	 PdyAL92ebvwoS8bAuVYFJMOh9gwH6C2N9jaAyTD/Kgjl/WNuV5qEA3vnLbBEXKUQQV
	 nM2M9ocRZc2GvnH9h91LaZC6cIHYMQyMxZYDCxFQQHDBgiDextRCYHEHNNE+dm2UyX
	 EYKBrn+lIu/JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B6DCA101F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175726919357.18916.17548559346906545370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f74661fa66b97bc6dfbc31745e2ae9acfa28381f24a2db6e75f3002e7bc98824
Date: Sun, 07 Sep 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757269193
