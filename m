Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A88517BED0
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 04:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765599774; cv=none; b=vDid3+u0CUb/w39ehtYbbMb+T8c4fmQMhYz3bnQYKIkW8MWOkvJYGApWHTTI6LTny6oSG+/MMU8dNU6M9WRpOG6Ab10iJWEvisy0i6qjbbt81I43S2vVJFocr57PaqjJivYga0ubA5jlLh+0PKDoWrKcuWpRf9eSegc7vktp5TY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765599774; c=relaxed/simple;
	bh=7Br+2A2X2Q9oUPKPUiQh/U8/KL8dgU1koUirftCNBTc=;
	h=To:Subject:From:Message-Id:Date; b=ezGvfso3ws9kH//jcURgQ4FOQlXcPylWfWDjHwrToBc45PntDt141mut03dq4PkBDKk4JCEWp6JmD6fn7LGM3hNygnwZ7LRpvDWBinX1mb9J9nRa3+jJ9lAjPL+MPSYqNGq39V0ahz7CK9EsNuUCi8QNuQ5H7uvshhGMIrG6t3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZmHmA6xW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZmHmA6xW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC697C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 04:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765599773;
	bh=7Br+2A2X2Q9oUPKPUiQh/U8/KL8dgU1koUirftCNBTc=;
	h=To:Subject:From:Date:From;
	b=ZmHmA6xWePlhfkMBZ2IRCtl/ZSqUnKTh7Q2eYfV7Km1BpnyWnXX1yLeCPcXx1Wdrn
	 qDyboCIlfRAEa5pqtsTt8ZgVK+i46XAVobshoLmzb46XfFw0XAA63GV3iRLse3zZwJ
	 2mTlUaH2DokaUwvouMcWbBSC1egZJLdeuQ+HEqisepe8lFuC8D6zgf+NS1kAvUhALC
	 TMMSaDp0W6tW1070BGVl8vltGeFquBRrBaLRfrowc044DmwMBk2dgnFtMkWPr95M+t
	 3tcHTu/6t5R2DNwohzRXDDyYxCqo3YPwRohju+EmlLk+rPud/PGu3CIDGWmYPAHuSV
	 Nw0jeQc6EW+3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94327D59F73
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 04:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176559977358.22361.11679490009168716792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38394e73442c9d7028bb9df5e64d31d1dadc74751c88c901547391f1269ee75b
Date: Sat, 13 Dec 2025 04:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765599773
