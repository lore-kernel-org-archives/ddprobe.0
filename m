Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFBE308F32
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 08:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778401234; cv=none; b=ej4OHUe03Q1nJ0VrnDdfAqegIdLKGwoIH1+AptLOeMwJjokKnI2wdGQKCRl8HD+4kxwkLnnOmLfzUsTUP1oGbP3XUXSg7jtKrMxCEx33D77GyI5gAZXtLNuySH1zv5WcHdm+jSoo6xU1F09TVpIPADwcKm779JkR7GQKisNVTEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778401234; c=relaxed/simple;
	bh=D9y7bcO2mUyOpiUAMH5sB9UPg744ZgOoNLatEeH/WTA=;
	h=To:Subject:From:Message-Id:Date; b=jQh7nCcRXdZfgESUroOWjd7gCeHaljo5N62S6FGZfNuM5y05Do8ArIdvrPDRoGmfkfdhrCIHo6EUDIRt/xZOHB2DPS7pBitHeaAXB7mAfWWAHu4CfBUULrZBvHiHc7yxcHZFsBiofMzC66GHSjhp3Ca6Hnj7vRLyOzsakiZEKr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QKdQ6J0f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QKdQ6J0f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF4CC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778401233;
	bh=D9y7bcO2mUyOpiUAMH5sB9UPg744ZgOoNLatEeH/WTA=;
	h=To:Subject:From:Date:From;
	b=QKdQ6J0fzz1aEbfCg6FOoqa7xpAIGggWbnI8iOxB1wwBcJPkpJcF3XajVl1sSPxrM
	 T+vfJQg0flGNuizCcoiPmzpzPl0UI2evLdDQbH1/XCA4Sg5eOVv/yth+71/IbzZgko
	 ZxdtJdv4yjRPhqUCNVNfnxKZr5bEkVulmusU7zc4RETlvXYTmgMaikehR5RVrLbk/X
	 IwzqCmgJAtTvmlRhyYjTvkp1I4U4NIv5uCAZko/GL1I0WTeEIpIb9/MuDu3tJGvhTi
	 3geEiJLGTTB1nqMsPn3mmYTz0pGs/gmc3JjpVprymwuSa1hBqGGPsqwKwtY4VXyGxy
	 P9DHJ/JO4IHXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD22BCD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177840123368.9119.3378609005251904785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b37cf9c6d0894589fb5945969fdb1df542402b7a57cf9987398a0999b4f604ff
Date: Sun, 10 May 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778401233
