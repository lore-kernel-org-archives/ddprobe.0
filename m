Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BCF9847B
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743753594; cv=none; b=Ki31Eqb/cIpdS9piGMONil0vL0ttizsQkRy6P9g0qxpjbDpIN5BZPwFfKliTMLCS+p8wM1zIVcJ6I2ykXjBW7UqKW9SBNexHBPzrJx4P+HQTpHD1FLSOJ5yxZ8HS6e9CIQ61tgGSJVo29NptO4elwt3au89lI6JJvfdoHEFX0bE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743753594; c=relaxed/simple;
	bh=JfA1Eghw5a7epm3wTyFknlMAgR7/Z2TbL+M2HYS8hfU=;
	h=To:Subject:From:Message-Id:Date; b=fx6KRhjK9I9v0Qlr2cOfyNGWMsGulN5UAUIH0bKFhElZaeBiwzFixj65UWo1uoYvWC23cQf//76ha/0xggKc9G9G8k2IPhLyGt8C2Bow73WS/9PBO6jlJRSYTAJM9uF3o1r5c+N1K5f50eNyNlOKB9bmm9mtUjcXWilb1mdZ+B8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PbfrCTLc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PbfrCTLc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A905CC4CEE9
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743753593;
	bh=JfA1Eghw5a7epm3wTyFknlMAgR7/Z2TbL+M2HYS8hfU=;
	h=To:Subject:From:Date:From;
	b=PbfrCTLcZ4iSEOpzv4Z5tK4pY0CEdmXcRlvlv4zhxigOpUS6n2JPZlVfbN+GJwjFT
	 auJlDNCDKZdJ3P+oDuGPPJeslGV4e+gIn/wbFkIRIV7Muu4uq62GWvfu56dRiSpL/0
	 S/TcFuoY9u1+MozCcRPtjf5eXy4V2vKMDLdFV1pIqRXF0G2WEnddfuw8qCjLCvoXs1
	 iGsVt0Fo/9ztBTSPa1bUw947SCZfJsVRFwIc1Ufr5IBc0OAz0mI/o3WLaNJt0wtTBj
	 +1Svg2hPM2xmJReCX+o7YeMgRa59DY5HxF4gj3c7juJNbFogMo6+xR/6eYAgH5oq+7
	 QRrxH2B0t8uQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FD1C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174375359360.5637.7989209161260516472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2543ccbda0b9fe9f21c243a655711f0d8215485ffa47daef13b91616c3c5be54
Date: Fri, 04 Apr 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743753593
