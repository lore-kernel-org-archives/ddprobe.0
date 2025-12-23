Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18902238166
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766478234; cv=none; b=VDE0TSYqj+GlNJ/bsySJaKH5csOkIR7ZkEvIFc+JuQX3/ROhtfB/fMRifv/qGCobIwrWSgSj2ziU9V5xrxfCvVCzREhLkP32nhjU3UEQpaFN/eyCNmUuvJOFScXHAno0DcY6xZmGc/upluG8//Ln/kiUNOf66/D3fCUF3Xmavs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766478234; c=relaxed/simple;
	bh=AmDcK1Mu7eJrEos4IYsXwhiO6TBWoo2snCMjYrXujSY=;
	h=To:Subject:From:Message-Id:Date; b=P8qcG04rHBozNbUEvawXNxGo+xGoC8OtOgvU7GN1pekkictoFmEhndRO1u6YXS7OpxAIZmvJzYxPiaEEosPlIrr2MaEyAESDFyuNxCIT+RKEB4Jb9MFqH2rM3DgD49NGa1pQKPO480sfL5NY5b3s2SRGKumhCoMnMLcJ3JoXoRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fRKjT4mN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fRKjT4mN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A577EC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766478233;
	bh=AmDcK1Mu7eJrEos4IYsXwhiO6TBWoo2snCMjYrXujSY=;
	h=To:Subject:From:Date:From;
	b=fRKjT4mNnbDyPhV2BFdl2w4jRKG4HUwHkCC71c7lTalVkrMFi2Hg4talHHTQxShxt
	 DA+ueIruPakAfWlYRpyADC0OU9tksA6jFiHSpbVVb4ETBUMlmUaH0oHWc/EAgpdbtQ
	 VTiTG6VYgXChANVvjE7wmyZ/ic2j5kq+iDSenvQJMq4mfAu5F1XyWNynLKO+G/DToD
	 20WRWKFAYkc5GxnQ9eqw6DcHJqI24hKOEbiXqC25J4bCbEhKbWbsxd/WV48Ep2LYgd
	 ox7b/6IkfcQ85epvK2JkPKWnFkAYzRwLVt3N0yiN+aGvOkGq3guUHok6FKE4rOaEDw
	 y0fur61ZUMCDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91987E6F06C
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176647823358.1829.666423937489160168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9619c5c2849cdb846c4544316ed8e76595c6c15739d0d9ccad8cb4bd32ba1900
Date: Tue, 23 Dec 2025 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766478233
