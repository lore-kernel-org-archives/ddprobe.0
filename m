Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5BF404BCF
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 12:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782821314; cv=none; b=oI0EHILqu3zdF0lXa+WFC1/yrUAzOcZ/dAqXCHult+mdvsu3gvwVCOLzTLTd1XbBQRHnH7Us/oOUkaGT94/zpCT1aUu49TKSNvVN1ZEr0q9YTtviJwExSx0F2jy+asQX/wPtPWBfC81qSiayWOzaQPVyzfWfzPE/0Ox+BfNMSnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782821314; c=relaxed/simple;
	bh=PPW+l7P/N/2d+E1smrt/8TTmpAtUW6wuSj8efJEaM68=;
	h=To:Subject:From:Message-Id:Date; b=XpSkNALRUhtDNPAxZXEY5glN16wptkDflMw/iHI62Y2bCuYSEPbWDglsyJipBC4CiJfVg81D7Oi2I0NezZTm5Rkl6SKm52Yu5P3XOX8YfEq8x6H5gZrShSUplnlRUhknTH/e167hGR1GMzBYo3NSJrr1BUnwdH8urOVyjVSWC9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EO5cje5M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EO5cje5M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0311C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 12:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782821313;
	bh=PPW+l7P/N/2d+E1smrt/8TTmpAtUW6wuSj8efJEaM68=;
	h=To:Subject:From:Date:From;
	b=EO5cje5MxCJa91a9htdy4gN1hQG2RMLpA8iM0iTZ1+h2NYLcfzIuhKxfAUh0OU9Dk
	 6Lp2SKjyPtnf+QRoCaxQ/b/rPTtsefl6I62xGFLFFsAfdrsmUrM9Anj4b4lUiQTUXp
	 tEGsFJfBPZ+E/rZcn+sSOq9PjD3jxz5rADWZ9AQ78MjViZUvFrUo4wZQMVLJpz8hnu
	 YF/gzz08KgHeES3Zc3dpLleJ3mtliKbgGLLxCKiUVkzIE6uC8b8p5Xrdb9/5BowA6/
	 qwlVwWihKTOlddliI2qYMkpBNsdXrx242JPUQGs2Wj1by3m+Cfvt6feyLWPKgVktIA
	 YO2wwdWKdi1ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8953C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 12:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178282131368.16437.15442181903981382111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 382ad767da516cdb888a4ecd785dd484df7f094bd132855810684b35b5f9b2fe
Date: Tue, 30 Jun 2026 12:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782821313
