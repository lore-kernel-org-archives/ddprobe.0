Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 678081D63FF
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743353394; cv=none; b=RVcgLH+cv9ufkQ0jzgO2Nb5nuRUVIm4efyacEnKFTzJ8wyjkOPOFsTyObo89xUy09RAaj0T6Q5SYStECU5hT+Th0A7s1d7OAWCtaj4ONdo4aH8Qam8iBRrpM7wKqv/IZO3HLuf7WBOs1GOCf9FysM3b2G6ibEmAGevx/vM4jx10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743353394; c=relaxed/simple;
	bh=JFtvVXMghJM76UV+/fDDpQyYUksx46/LXv7FxN1GKuA=;
	h=To:Subject:From:Message-Id:Date; b=lujy7tCQxL/MG39jInNyGz3M6pLrM0XkB6P7XXtYb5wKp9VAs0WOgrL0ISSjas3QLvB6ePdkhEyPkgz/hpH/Nftg60j0s8njnaASB/EgTSaI4OduZSAXFmUfGqeMTIgySyz/ei3LUlsExL8SoMoNAaU8317gnJ05+XCB/lp6pd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mx1zUk9o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mx1zUk9o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9B29C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743353393;
	bh=JFtvVXMghJM76UV+/fDDpQyYUksx46/LXv7FxN1GKuA=;
	h=To:Subject:From:Date:From;
	b=Mx1zUk9o4OltxSceSbawXgPrD4GuoueXu7PpjiIZiTe7r3dsQis99ZUiMueDcNidd
	 DmXR5cL9qt1FCvQ41CvzYmw6Wtj5Sjraz5zbUKVOFakbn+YBBZnuPZDgTIbRyB6XUP
	 liAo5uoSTm/D4KhPTWrsdZV7ecSrtiKptOcREDfcdBU91Hc+8FZF9W3/ct/kP1Hvhb
	 nVJSUmXn4Rqx+f0T0v8H8jt2+C9edqUbXFUA5DLimWq3/Bsiy7jE+VE6N1KTAO0Zkk
	 1EW3MRIQxayJfuTE4LvW2+USqqg/CLWNO3Rp9eqDyMoGERxqNoauJNclndJUcBxiVY
	 qDldKqsSquZCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7C9C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174335339366.31593.8023775615165632574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf4ee854794e1c9f038987e1738afd8475a566d8eaf4227fb17547457493bf20
Date: Sun, 30 Mar 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743353393
