Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42AC62F39B5
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 20:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780949074; cv=none; b=C70GxAtVlJAptirUkAJrbYwp5tTJCOawnadOybhbIwfMjTNGCUQY1g2/BFpaC0ErQq8rxZkILevWzjGsNwayNWK+tWuap+oz0Cu2CUOPJup1bO8DscfKCiega05Y+Z265q+fWLoiJ7R9Escnet1FEiYAmrC6E9ugnOVkPjgJdoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780949074; c=relaxed/simple;
	bh=w0fKI02wk10M4JUO/SpuKgA1mShpcajS4XuO0EvxNhA=;
	h=To:Subject:From:Message-Id:Date; b=hkBiVRu1faQiOXhhpzt9UQrLOHPySqnUxX6TfjDb7k0YyMxdFlMaBAVbadnDLu9QwEg6ptMj15PT14pNVkQV9zv2dmw0vEagv3fNCYOCOXpI4NUgh2RitY9tM/Vk4KrJH5F969qsAiPvYcMU1RnXVnCIPUR7m7EVDLulFROQO0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PJRRbtIZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PJRRbtIZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA88BC2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 20:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780949073;
	bh=w0fKI02wk10M4JUO/SpuKgA1mShpcajS4XuO0EvxNhA=;
	h=To:Subject:From:Date:From;
	b=PJRRbtIZXXKGKAzzayppcVs+RLRLEOYHYJUoS8CJub1Zv7nwRG2TmczyJd0krbAnE
	 Dap9+m6JKh1eZcHHVXGxnDQmLSW2lUgJL13VYKHvKuEMcNMaywtNjCjOkno1Q1KooO
	 ud5o7ZcumowajwEoAX9jcZOzvwCvv8RE/jvWoFroqaLwSj1Suc+j2Kx27Rwl6rPOK9
	 C04L+jpEcAwaylYSkW7a1n1c4BL1HiisDRxDucRuyFkcQIRRfpj7Cm3glsd2GMqySX
	 Tu2WdScQwyycpnllqcCO3xYEcgIZcnuarRNK4g3oFzpstb0ENeHznCnoEr40Sn0ItF
	 GArw3nv0EFldw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF0ECD6E79
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 20:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178094907370.21105.5530495106970811405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe5052d9b20beb67c97209f3e6a9f779222d2722cecc74c37735a10479f28d69
Date: Mon, 08 Jun 2026 20:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780949073
