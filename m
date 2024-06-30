Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1F62576F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 16:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719765863; cv=none; b=V+u30S4LD/rz6wIwVevkH5mgqxComRExqEMKr1qMFsvVz/Mw0asOyQtNdyoGhpgCXCrFb+kdbHN9DjMcR8txkzM9RiLKd2AI4El9sbWiMulycLljB9XlhWL1GPFZzg2IyJI34BJTPCbaZbNkVmMINgnFbEvsTGu3bK4y0nUkgQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719765863; c=relaxed/simple;
	bh=F25DTwOzKGh9A9X6KHMyO05sHs5jvqJ00JGT8xv+W2Y=;
	h=To:Subject:From:Message-Id:Date; b=ULHtTuM3Ad+buG6N1kONE3i9P2WM1npIT6j51+kTBrTxdG3LSNTKsJvWyGkxRWMRQ1SuQ0HZbtc7x5+gZmPZ8MB9TmQzDmKm6vdGTyaeqwgAOnXw70VlVzdnExrPszmwsmWDd/XhFG33zqYqCKrUvQuFdbxjfYyCjTVkDemeTGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KfM6qUqG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KfM6qUqG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D841CC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 16:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719765862;
	bh=F25DTwOzKGh9A9X6KHMyO05sHs5jvqJ00JGT8xv+W2Y=;
	h=To:Subject:From:Date:From;
	b=KfM6qUqGPnPmUiKR6U+Uqb0p8vraHhyKMM3FkQkk3+laJ0glrd+nACIXxhZ4PWHiq
	 x22KpfIchkgyTD+05Q3HPsq6fuizGBZy5QuRfT3am21WO/FesKvP+jKLJ1JZv2X/VE
	 VDO+X4NCFI/aeXxlvO7vmjLxIXxqi+r8Vcf6fkiH9n1S1qtkbTlFCKuufJIYkF0cgB
	 8zBe8VjwFy4c7BTwuhkP+7qBy2/myDwX+uOONnGUl8UOmKqFjYP4nX88mdu3Jz8Exu
	 Xd6JbvdGk2cFvhsVoZiaIIHxHVDVuGRLV8HtYqURie3J8Qyg3eNeOBJn1thA7XmnbS
	 zd4K7s2+9a96g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4DBBC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 16:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171976586277.8660.8441271696783931185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fca69a4e9557055c439124d6bcd853ebe788b77c5f7bad07272704e4770f6b6d
Date: Sun, 30 Jun 2024 16:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719765862
