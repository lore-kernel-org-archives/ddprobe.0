Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 559473DA7E3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785134434; cv=none; b=NTFMszqFM+9ST6219SGodKW/R5w/wQMAzZJgoSYI/NkGM9MAES1734ctSsSX9HM3Vj6EYba8dxh1G7vTqz4/CxYIoklwagAma502qP+d3gidTZFL3jCicyWaDT5QBwiLXEU8uI/rgZ/IiRnSxcpk+pYCKgbvFW1XIGKtSOl5Qn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785134434; c=relaxed/simple;
	bh=McED8Jb1pgmlVfFSAaBjQHl5ISSW9GCDYqQD/MDzpA4=;
	h=To:Subject:From:Message-Id:Date; b=TO8NrvQXZuXSXXNuo5JgFjRMr5pBakb79DPzVv18r3zm6B3wc5zuno65M9WJXreAq/7Ccbp3oNPJOfwQxfQ5D+pgg7Z3wa0mtUeUQdT9zEAdmUV5bOzdh2lyOUmnUZX9CtdbNYvXG4fxy2vjaZjRnFGwyUZtnu2hzT7iu8lUkzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WGWBiWtK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WGWBiWtK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC69C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785134433;
	bh=McED8Jb1pgmlVfFSAaBjQHl5ISSW9GCDYqQD/MDzpA4=;
	h=To:Subject:From:Date:From;
	b=WGWBiWtKPuaoNRNKKjISakkl+FvN6e/xbfn4dH9QTB08QRR/5QXVjfp5+DWff+BV7
	 04Lj0mjJRARg00sUkn03P+BX2DPvrIgKpXPFXXK2BXPoUVEXJNpgEHI4g3VWDkwv08
	 yB9M5x+4peA5jV9r5EW16mq95vh0Bv2zCHh/Y+ZcgOWmLTUaqUCmJ3nUWAdjNT920W
	 Jnb6spJMSYYxloYWIpZfRmgLmK/MwkfpYzMI4Bq5DK+8wx/jCeTv3osNa0/uGdk7y5
	 eu2rlSiVwcRR6FxMVAKQsqIsquJH5Y4J8NoNGESjqm2ly9092kHTdZ5JaO49zUynUC
	 sPKbcEct7zjOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC607C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178513443368.24474.12416697711353107309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 381f8b5d485c4a243d976266b6f34da51c4a0d2eb3d780e4997483f68dd7e654
Date: Mon, 27 Jul 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785134433
