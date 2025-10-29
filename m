Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227582E0405
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761781194; cv=none; b=ATJsxkNA5xsd9THKQPyxNgqWetLqTRhu7UknIrQD8LWlPPPI6Gc53X7KsCAnAlCb26eZdA6SkGSgdSCRVAkFUwe04GWrXwwiioRpdDjjWBp0SQaMkm2OZ/Z9B1xQ8RlDAPRB2PD5PDFE/E5XZXdrIKL3tQVHYgu0k9IW8qlPs1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761781194; c=relaxed/simple;
	bh=xEPUYA7T9WDMkSeydcY1GHt72erRX3HhHs3z4ZNHhhg=;
	h=To:Subject:From:Message-Id:Date; b=GKYzE/rS21KAobCNyfr/v8iahpm/Bn5gga14iX3+Y631M/C1LOAcqF887N3uhdZrdyU/Y3ZiE44SE86i27vK5mH4PgKCaQImeqa0ZnecN2krKOU2VsTwt7D2kE1rnB+LCtiVq9VOSq9NTjwsarMp1FnW/cPLoS4Shc296T9csMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bAYcZPFv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bAYcZPFv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32F4C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761781193;
	bh=xEPUYA7T9WDMkSeydcY1GHt72erRX3HhHs3z4ZNHhhg=;
	h=To:Subject:From:Date:From;
	b=bAYcZPFvIKhDWKyETJsmMcJiGLsP0FZPunWB/Ulpbb4Miru3l94rdgKBjFleOcDIQ
	 Z6Pnu9mvnKkrwV2U2e7G+JI4890Phlp6fv5P+42k/Rv8xiLTVqEFSBbUnxOXMroNdQ
	 xV78byPKnSDsfX8zycO4ZOCIlkU2ZmoR5p3XdcRaeHviXmHVMGvk3hR65tR5Scl4Cw
	 Zk6yhXr4LPaLd2r8BAytqe4xcTfz8PNhhlFxmCWPyTo2OGNM9e3Sttuu+B7kzQ96Ub
	 CPKOWXbXh8Qg02/Vg2em/Em+Y4S8Ys8wi8WCjyvo3gLLsFd+LJuNL9jJqCR2STAKwx
	 F/mPVZWfZ4dHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903A2CCF9EE
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176178119358.26171.2251026687515506035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d25412bd7433f22f12d002c6feea65fb67bcaa2b23870ebd5a20fffe3e41465c
Date: Wed, 29 Oct 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761781193
