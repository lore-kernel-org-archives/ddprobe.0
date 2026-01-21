Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363A33793C8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769025834; cv=none; b=sQVIFJRXDjukromYSxppT55srg+zFQR/I3DYDNEu08Clt5FP/7vobBQEkjbLPBQg51M/p/6iNPBz1S4vl/MXrX4WrWO0y+if/egmDvAMJjQH6A6RuFLW3/GZDNZtcuJN7cDqMiLpw04cG+9DO84sjdHcAmKVO2hjs4YQLSsCiSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769025834; c=relaxed/simple;
	bh=tHF+/EUwmSUm3oaqot+Xz2iFBEyqDIvdH+S2pXI1iVA=;
	h=To:Subject:From:Message-Id:Date; b=X4OD8ade46OChkC4EdTxG2lVOcuxzZS531NZC+IZndtMWKa69vHv9OOAOaKlkUT5P+s5TfC243Izez2DC94Y15tGR4wdUiHThslUggBXcvkt0L67HUwQ2UuPQr3gVJSJ/ZUwAaIVCyZDY02VYW2NyXtI6OuJhV71SmoQzPUU2+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P94OoFk6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P94OoFk6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58B2C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769025833;
	bh=tHF+/EUwmSUm3oaqot+Xz2iFBEyqDIvdH+S2pXI1iVA=;
	h=To:Subject:From:Date:From;
	b=P94OoFk6ie7AAWKv4vwEDWqTJZnwCzMnAtyvqNl76kxOrqDDRrbzLUBS6jTB8YcJL
	 vFqs5dVNAEJD1AXKVlQGxpuMmmwnrG2rdwOylitf6em6mq8x49Lx3ZramABr5Udgzb
	 +jgxJOgvv/OYYsyyQ+AXc8cpIy67gAQG4OsXdBPr8cTv0WtgBktsq9H+zdejl+xrq3
	 Gk2KfvfN8LAiU0FJLc1nCyF0wvpzpi0uIGlA8y5XCvD2Sm5YAZPu2rtRV5AsBrW8vV
	 /njH0n8vHJRkE2doYpThIk45YzzHoO5u+EyuVsOez7fBZ5ZZvxf13q901nQKErbjQB
	 4II0JrW2adZyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DC0C44506
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176902583358.23868.11034461657371941383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5972d96376a9398e0774e1ed81ea8c5b2afcca5b7045f8b82621a454bfa1c2b
Date: Wed, 21 Jan 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769025833
