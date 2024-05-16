Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5445D143754
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 10:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715854943; cv=none; b=IC3wyxGka1CRtrU/a9GFTXdoNUJV4GFMFQeMBKQfDDE5zgnaqaMEO2ZtkzllRgEeNJknL4QlT57zb17i0hkh7QphKfxikeO1tn78qmxK1u4lhdTXBe14zduO/XUTncC9u+tuqIOOzjFNT0wTF+sounXxErq+A0GwZ20G8LrO4UY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715854943; c=relaxed/simple;
	bh=2ulCmTS+9fcLO5/XuVkkbSavpUNFUOohanRBKWMKxJ0=;
	h=To:Subject:From:Message-Id:Date; b=o6oHpMvpedXB/dUkGHkvNh0AApwC475wVutcq1+XJm82qE6OShsvrTexSqdVvNw9HM40X+ivh+sOTdQgi0/tSA32rFfyCDpeq1UuAt7Ao5/KIqWt7wbN6FroECPEeJuYYl8pv+jcmoCIYdqPaOsYi47xP6ZrS3qRzUf3xFg4jeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kqwQ8n7K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kqwQ8n7K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB638C32782
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 10:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715854942;
	bh=2ulCmTS+9fcLO5/XuVkkbSavpUNFUOohanRBKWMKxJ0=;
	h=To:Subject:From:Date:From;
	b=kqwQ8n7KCP7QTYvO+WvjTOKXjBBDJ72tpWkdQXXBvkIFYspn91de1ns+r20vY9WtC
	 G9UXFpiXnDlrg43LEV1bu3ZfNsldivs/RZ8NXPNHF/getFXAPVEJ8SqAXuF9CYTCZb
	 HOO/PwyWYUjSBltGoyefQegkcfgUEjMOvHfeIR3rzXdfIO4anH7EmBgw/VuIRCXmDC
	 ilLdrfFSGxclI2RDgAkaHW/dQCjPF84Osro43RPmThCxqdsCTaUU4/iaXbx8RMd7pV
	 EXijJf+8FZRuZKObJ8WQ+m/4TA1+YKvgfS8UhmHpBekpRZ8yHFh/Goz0ftjyvyMiQI
	 V87BKWRcWXkrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC708C25B74
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 10:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171585494276.1452.2161982452357526129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f4791e75f5a3f139241026fa8c9eb725599b1a8ef5508f253e347ed205af37b
Date: Thu, 16 May 2024 10:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715854942
