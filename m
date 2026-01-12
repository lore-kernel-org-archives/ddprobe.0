Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134FC296BD7
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768212834; cv=none; b=V/aomMCfbFE45YNo03gzjwKaBnxU/SmLarjSRJ9YRIGSlup4wx92Zo2UekfigBmozmsGZHqMWuOztMjK++QNtMO6rjJ+dHf32RDlkeTnhYUHPDHk/0bzat5bDccwP1CMNB3mOXU/G0hPcOn5O8zL1vqsqD8Opj+GJ+ATJtxeJnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768212834; c=relaxed/simple;
	bh=uFpP3+xR2p4Vgpa40AxlksZ2jJ9LxPtUtsYaoNf1PKw=;
	h=To:Subject:From:Message-Id:Date; b=uTin14odnojs0I27GwIrvFhr1Gsi+cHUhQA/DnvvAyRwoX3nLAEaeJr5yYNuKMx5K3NeARfS2TSfy3OTxXv6VqJXap5J16SjzyeelwYG/b518UyXCpGfdxGz6/cDeMA/t1XhfeX/L029ZHwxe/aENTLYdxZeN1OA++ps5zNxOHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hw96nvg6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hw96nvg6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32B5C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768212833;
	bh=uFpP3+xR2p4Vgpa40AxlksZ2jJ9LxPtUtsYaoNf1PKw=;
	h=To:Subject:From:Date:From;
	b=Hw96nvg6B2KlTprP/7otQTSoEaQUp/SY/MEsPIHixoP1OaJSmp5BsTFZ2QLYBbbdH
	 yI8g7VuI+FEHsRXvOPuowyd2e+HY74G3pddOB9X7KrHkpA03Nf5iG0t1bXj/ikuujW
	 eSnap2QgI4mdYNiazmujxcxhc3hCTUM1rooHGlGVNOIyeP5C7VtAH6G8lTwHVveXH+
	 /SZLQbBNbiCX36vOCAbC8XOlRtPnf+obfIGMWX9aofVr7TirLKDTEZItyPh4d4bGJ5
	 6KemPgmsPFPhlFiauSAWhI3v9ZS0aAqasWHU2sb4KJlCWLqdZBVI7DmpSV0+pOVcjB
	 o+n6SwAEjUVYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE87D26D97
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176821283358.21566.1473057117913842148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4d33586378316d5c148b09df1cca91a0cec39d05c6504007c5ad4c6c87b79f1
Date: Mon, 12 Jan 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768212833
