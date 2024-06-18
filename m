Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BB2317838C
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 21:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718747963; cv=none; b=sXu/dBfdtj1tNZZuBP/qf/Ab8Kdmcn7Tk6A1T87eSOB1vwcOuisX07ol1lm7xvtqFfozdRKZA1//XrI9d/Noj49vdTRj8lCA6zS4Ds8uinZbCCNiMGv1VjxPXV86DX36SheRj3TMi2WiUKCVwuoGHRL5T18TzoIqxo1mXzwWx1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718747963; c=relaxed/simple;
	bh=gmmO8m7RcAX6m/QhY93zdHlL8gaVW4P8IV6Yx5EyMfo=;
	h=To:Subject:From:Message-Id:Date; b=JOTCJccF2XhonvOtYTyKYHjGlSlR4PO9hZBAkU9BdmDMJuwtNuC8rIA17r9t6IiNo9Bf0rUcY1Y9Jmv5PnGq9Qm+Wm3nlyZvp0HJNKdaANsbVVIVUyZ4NloHVz9wq7wKl3SusE7ql11091W7/o3pf1eLbQ58iK3Dz2BOpQqF5Ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZRoY9asn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZRoY9asn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAA80C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 21:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718747963;
	bh=gmmO8m7RcAX6m/QhY93zdHlL8gaVW4P8IV6Yx5EyMfo=;
	h=To:Subject:From:Date:From;
	b=ZRoY9asnIW8UecIao2Ob5H1uT4Eg9hNwEAPFZyXe84Qw/uaZpZR1+FoOVq7QDpBJw
	 oI2OlzAJqAmfUQ2xtbX4BEoEKi3N9/0Jw9IJ4C/bGZGTw2vucAXWTvPxHCwbv8QrKx
	 4HxT54cEQ1jqljnTikxNoeT+oMYRoXDczbjQ5N3fWReUx/AF9d53ii9zWvNlTA7L7H
	 nKSPROLS9SUmZ2KrrVqvb3Rkvcb0q4ZDLRGzPYpgc79L1UlEpujOneE23g5vePcxtq
	 JeMMLf5L0VaWrMJ4immjr71wVNosr/REa7X56u/0e1ZWYsoHIiyVhw0UsAz1mUNKOl
	 nFeu9T9xFOvXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D07FAC27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 21:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171874796280.25658.12132604403405688331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae81e466c0b2fa924179039caafcc76a5b23371cd6c0ec7d6b3943acf643cec7
Date: Tue, 18 Jun 2024 21:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718747962
