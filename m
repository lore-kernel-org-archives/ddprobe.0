Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99C2A2C0F84
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 19:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769196234; cv=none; b=BTK6GVFlCpPE2EXFLupTAzVvbsrTB+2B8O0hUl9Bb43jkjm/6A11f8f81V0N1GTX17OBk5S91yPoUKlUC9/CmdYnzsHjosvHkgWyrkcgaArz8ssD33fZTP/SMGFWXESCW+VCDenY4sY8EH5vc92LeUYa7VI2LA4lYmBQFfCyezo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769196234; c=relaxed/simple;
	bh=c2HIs5zJg9u8LS4soYdEQJnO1h2M7fkXrF8odc+M/SQ=;
	h=To:Subject:From:Message-Id:Date; b=ZhY9NkOqtF8cFOtmWkLB++1bY59Lt+kF5WqrWYspxFumS8npM5ed2G8Gy++7Gx1tCkgAq9+BoJ8c3jgryvz9Froxvjj3PnIblu+bGrkgGczrWpv57BZF5bow/BGWBCnfEnJQYw8ne+lAlglGEkHXw5ACWPTh1itP4p0uTPlU3nU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y/Smmyj6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y/Smmyj6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12F4C116D0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769196233;
	bh=c2HIs5zJg9u8LS4soYdEQJnO1h2M7fkXrF8odc+M/SQ=;
	h=To:Subject:From:Date:From;
	b=Y/Smmyj6WW5uYIrwiEEz+OZGkUm71PrgGR+j2/7Yp0pClqa51SufLaMLwPMLkm6NN
	 vkAM2gVOoMaAdamzi7OQ8zeHSHXnyjQbPJrHzvekfB9OG3Mj70K3cLm8euCue66GaL
	 pR9zAoMCCcJToD/zhckCA/7uC1bTw+dBzluxzTAc9RJqBBjP6YXtvLarmrxgzqHEZb
	 PrWd420Z/hGGKUhRd1HDE71wmwzSTd5g/vnusG8Pl8lpxSMDNgedghrNLE5E1QERgE
	 kiEQ7mzUIyTIWQ1rRQqpkvlkvo1hTdRPeqlQJx2P4LNcZnYMPGvZzjiz2n0WnhqTpu
	 STX6G9RsijhOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9033BD778B0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176919623358.3841.1566506947889945040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac1a86209682e83a0cb5b799003c0da0247b1955fee1fc9b7f76d5e4b6a0f796
Date: Fri, 23 Jan 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769196233
