Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195722E5D17
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769939634; cv=none; b=BCp8mcUeCeLucDnWPwp3iW3/KKRtz8R0grRpWpRfkJRP/VWojm17j8IRM5rvKW0Qn02Tw2vgHE2R+yJQD96TtJICEtinIlyEKbC78srjlFmI6iWa5gt0ZUWSCiFqY8a1tnwS66tf30MLS/vNOTcjYngMDIhvDJEMz7M8qFK/KG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769939634; c=relaxed/simple;
	bh=Mtpwkwk3vHrZ1kWFA/q+NpaveUQgKGDCdmojrhq61DQ=;
	h=To:Subject:From:Message-Id:Date; b=SYieMdG2PeT4JS7K2Bd/Wb9fUxtluy3pGgoxrJZmasm2Qy37aycLEdImdBcwy2KF4D9D/AdJ/OQovLTdeOxGZfJX1nyVsYuO7XDLnt/QhA6pzoKO6DaqCOcZGkrqkfxqAppBQJKz1imG91gcTUADLmsLvhI1mZRM+PuIDgMGeuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N1OE03KI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N1OE03KI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F33C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769939633;
	bh=Mtpwkwk3vHrZ1kWFA/q+NpaveUQgKGDCdmojrhq61DQ=;
	h=To:Subject:From:Date:From;
	b=N1OE03KIROY0x2bW6uzMDp/jkoVZ4TxFxRePxHTCcMhgxsNcnWOquFSy8NqugKavT
	 qa/KEPMwUbDo+Lc4/qLi/whamA43Rbiex4uhoMD+PCE9VzVK/JLa0YvSCzx02yBwae
	 0WnxcSC/KMnLlYF+5x9BeKmf8h+pZ0h58pACCYuCn7WJ/Re1WLXEC3Mwyq4vknkBa6
	 wgOb1ASdm/uGwNv/huLqNNWNc5s6/1HncEiA1TvTV2Edm5gKtNsArADUDNrxCNFj60
	 J7rJ/ya8alyvdh3DUnRIj1mfxO7sxqrEdqcji71Q9gAIuepZJznGkcAdL7sDzKSo8K
	 NyekUmX8uODrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94410E7C6FC
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176993963357.27304.526562508408467263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14744ac91f282a4406ba3e21ad5dfe5353122c933a2d5ec9a25266c93259fd69
Date: Sun, 01 Feb 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769939633
