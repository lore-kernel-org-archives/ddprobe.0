Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4588918D658
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763180394; cv=none; b=IebWxdE2b+WDhVFj4Q/5VqGqCub7Hrfl/h2RXP95fHPfaYSCC3kfI0XBBzzZbv6SkI2aIe3p1eTMVFIq3UsIqAhkSa5hCV1MzBH5/nRbw35GR3UhOAXmiq54vQLaPN54GTM7LEwq6PvpFynFjuK3AeoyeIV10WqO0oeR6vaADnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763180394; c=relaxed/simple;
	bh=98jiRLW6/Orzjudkoi2DDCDmILkhMgO1eSDyxkCQUOI=;
	h=To:Subject:From:Message-Id:Date; b=CSrRJX19XpkFNBZ82MNpzlIHWx3Abr71NW5a2t4yRatem81dQ54xiRNO6N3yuFBZObtf6kD1RvfX9kpGQT9G0Kc7qbXiQVKGVWxGXWLrmuCRnHi+834yQjq8ftbopSMzIAuT6bmCz9GoVG0HWyi9vh3CZNUAQ9cn8rQFUx+02w0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZ2Kj6cv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZ2Kj6cv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3EDFC113D0
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763180393;
	bh=98jiRLW6/Orzjudkoi2DDCDmILkhMgO1eSDyxkCQUOI=;
	h=To:Subject:From:Date:From;
	b=IZ2Kj6cvfHt0rIV816xnlK/nRuzJU+pIpWG6fphGjv0Jw6xrQpJpstfzi/tLlWD0w
	 DfAVkD9ZQtfJEDxe55GnrDE8ttjU1vG7I93MBCyMfQHFpzvdPaCEsvmd/cAms+en6x
	 QW0Ggv7u35ApnWo9JmcA7FnRT5hdDUDFfvFVwvp+oTARs/RZgkda5R0ZKvvXwyLE1c
	 nn132GjUOfKcrMq6K8f3SO5PCNFyt1s9CMiCTYsFOwgc+Sx8HWrVOevyMXBGaBYoTK
	 KkvejpbSTcmi9RlPBLeUTbODFggSkUkln4XsgHMbShb2SfTxHz8FXqvuAm9kH4qwRZ
	 DOKps1N5abxOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE941CD4F48
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176318039368.19440.8954151415265111024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fccee809dc75891d00675090800093827fd5a0596f3b5f8f7d12c4b630ffb074
Date: Sat, 15 Nov 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763180393
