Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24AE3277C9A
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767525834; cv=none; b=Plwvq3FZLDmjXhA12cNpTQvqMBcfKsmu8G5tI2+tFrfYpo8HP2yTSQdtELi42kh6a3+2ppxlNBZoua12xyZZPvPteyEBWkcmue43tRPC9p/27BJglzg9N9zvHHdD+VJbqwz3Acu2gY4/R7rnN7Y5uj8LckZQ7vlL0xOj0ycYpBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767525834; c=relaxed/simple;
	bh=4b3JZ9Vg5kRJPnXuTCGMF/E2qkPxVPx533GDjvo702M=;
	h=To:Subject:From:Message-Id:Date; b=Tu5ueG5xrF0OXtM50EtxRA1otGbPTASS26czPuL4aRD58BROj5Qx1QWOo7vOPhwNlJOlQhNriSlk6JCRWJF4muK+0WgB6Spq4IG0uIhLcJAeNuNItVBPpiCfJ7osHR/2chkNnLi1gDzpLbNCaKMs0o0RXrU/gLIubxnwsipVPRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WBPkFg+Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WBPkFg+Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1420C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767525833;
	bh=4b3JZ9Vg5kRJPnXuTCGMF/E2qkPxVPx533GDjvo702M=;
	h=To:Subject:From:Date:From;
	b=WBPkFg+Q5k9DCLVcP92mBVKZC5LGWlHjgDmTGG1AsoS7UCllJS2znZXK7+VSnxhtX
	 g2H/OBUqKKS+lP04uk/CgtS9MXE6yOo6UySWvoxlj4XHI+9yYI4JxybegNUC6Gy91i
	 87phzE3nKJMF1kr+ipzU2gClV5jHntVfl5zx+l3/N6pUfye0Di8Zfl2gAQj3lrIPgy
	 OfFRW/KwuqOlQNqPJn9fnQaManNOp1vaAl3XBPX4BYNw6z2usSho9QcdXNz78i9pgZ
	 UasDAHITZtZtMaU3WbLWQ1IxbTsGD9KI962zxqDWr2yy+hqu8D1EBLcXZQDjt88GTd
	 dwdSYROIDIOBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90408C2A074
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176752583358.15310.17958670982893018637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dd7054c72348d9f2f73f8fd3adf895c7f6d8ff17d5bb16321ac0e6c45a66008
Date: Sun, 04 Jan 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767525833
