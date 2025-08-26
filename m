Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9BC1862
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756181994; cv=none; b=g4RX4yxyKP8z1ulBYTWTxYvK0iAvg5FtRvEWn3RJ5joQkziOy3Kf8LZY7VLNFwsRmKYYFuYJCVWjtFwE8mYOwFLvqLV7orOo/BKgXel1E6TPORiDNGVJivbtetasxV8iR9LEGj7Qzu9SxC0c5diaYTEODxtry6uEhM6OFOW8hNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756181994; c=relaxed/simple;
	bh=AhvB2C0000az+cDMJvEDPzPL9nxeF/0E3Srf92hvoyc=;
	h=To:Subject:From:Message-Id:Date; b=rlC52wl2n2JxsVrJdL2G80AKzPS5Cgml5ZPcJJnyr1qymld0s2u3MmVOkq5dp+F27a09PPJZfHpEPRy7DYHMIs6zdch6LtPyiejL5BfqvfylzebAl6DBeGt7MfWuyjcLEbRkq/4/1J49kJaxvXjjXYlM24Z5iVVv03TPERPlj2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KzbL9w5W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KzbL9w5W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30C7C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756181993;
	bh=AhvB2C0000az+cDMJvEDPzPL9nxeF/0E3Srf92hvoyc=;
	h=To:Subject:From:Date:From;
	b=KzbL9w5W4V2Bl04aBK06JMDWRP/UELYTXedAWeB5BfP0l39ei/I7Y74ex0WYxpQJD
	 ufERrGWhWQauh8JWBDgATJe/bBAQUwgK8ELztpfYlUwnSuyF8yyzT3bxIgnyWXmOIw
	 sj/+XSE/IJ9+T97UB1b/1V6jnOfxi/wSv8RB2nDie2Np7lxHmTUl+lF2TkOrQBz+vx
	 hDkneZ3Eh8S19JBV2LEg27JyMLlh2kEVsOIuVnCP1m4ETTllI8/6PZmSNJlr+Sw20y
	 KuzJIthhN8fz1QL27fIOTqUug6kWFwizbrgqD7LNyAPe7H6SJW8puxeRTG1MF5xv5X
	 k2AgLaHGyQabg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90566CA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175618199358.29581.4761885128003309826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c602bc30a08163743fcc417c82e20bd169d6f6dd1113445acccdb3c58751ceb
Date: Tue, 26 Aug 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756181993
