Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD5CA2FAC16
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759236593; cv=none; b=utsLNlIHujN+J0cvsqPEBZTxly2oJSxju+sijMcoGoS4lYeJCuYzShOOePYtp9Hjb0F2CYPClkqw13V4mXThfSaZMT5/NOShs0gccEF214a0hNPz1ZBA//Ym+rWMX2CtKB+ozw84+VgWugAVdEHUqr21S2LNE6zRowEGEcOlo7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759236593; c=relaxed/simple;
	bh=2qGQpYI27aE/8TtoIo/zFhn5iJppwbtOsptWkpOUS6w=;
	h=To:Subject:From:Message-Id:Date; b=I75M3D4NYZMKsOV6UADAQH1bnFIx139ndRj5wjz8uyXMnF28zsXO80cMac6MTZ5eTGSQgmvxV9sKHmuGv3KTMI1j9v5YViZMs4fbcpVOlhdJnhw8yFzi7gjf2Aw+WfPNKftAXwgP5cYVwfroNpRhx0/0Cea5ixrNGiA22v/hHvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSL3EW9R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSL3EW9R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C1BC113CF
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759236593;
	bh=2qGQpYI27aE/8TtoIo/zFhn5iJppwbtOsptWkpOUS6w=;
	h=To:Subject:From:Date:From;
	b=SSL3EW9RRcSzlza8XAeHMTY9MuMsw+uP+EFLfBe6Ut5PzZ3AXHoOPEtoWgjxwJNYX
	 ZH9nq8JN6ckR52Kg7UJgfdyfzbObsjYjeHxP/PZenSLh7qmWMO0M5+igFTDrpDrEW/
	 qWfPK5ZwyLN/mJf2zmz+UT3unDBMnD9+5n+jfr/Uct46zbMRDG8flbW8QFVS87i735
	 WDE9jJcJYfL2DOJb70cJ7JuPQrYpTnm5ht0CSf8Kx0fj41XpvPZ1zBe9JTOijD+iTO
	 xF9Tuxx3GKGddRnQZt9C2kiXJz1WUF+QV/SeVhzM1njtYnqylsPf/09VM6slhQw9Nf
	 3acoho4UJN/hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97537CCA468
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175923659358.6233.4026698703822661304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e6bc4bdcdf88fbfb60a53dac171158eb5532752bde82f7a29ca93a418a3a83e
Date: Tue, 30 Sep 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759236593
