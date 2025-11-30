Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237473B2A0
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 22:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764540174; cv=none; b=DhB0cHCJoEg3xicYddnqfhfzD1Cyk+E+NfGSbHsUPnHEZ7+fQOuX8ctAtoOgYR4b3H3mqyuPzhu6Hc7DLXbtsvTRKnNDLPAyjUeocYoIouQRwKlSiOOTDHqb7xXSvQCNrTo1V57XDHmaBaFhJki2J9dFPiWjc13CeZyow9u6LQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764540174; c=relaxed/simple;
	bh=tsduFTDm4CLr+l3XclkLYB4tCepQNmwcP7123RF9fGc=;
	h=To:Subject:From:Message-Id:Date; b=h+HJjJ2G4PWLNP8iOuWNpPYBjCivPLQouekkR7xy+9H8yLOd6rRs5is+3EPtMGU14RJwqtNmiaYwPhSc7HO+ehYH4ktoP2bfCvHpMmUoH9L95Xo7NohefYal1yvpNwuecqd13fRFswJSkT3YuNfCd+6mqK3mtv8+NNBcl99/U4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DWd6dWH2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWd6dWH2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA76C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 22:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764540173;
	bh=tsduFTDm4CLr+l3XclkLYB4tCepQNmwcP7123RF9fGc=;
	h=To:Subject:From:Date:From;
	b=DWd6dWH2jdDlEQegd7iKzeuP9FHZGVIpq184IFmR9D4Vdbcs9+6UimeKUrtOgmZ1B
	 tuOKMdymxaibx5Z+pUJRkd7je2VJjfbKWoIeKnsOcQaxRNRfZjnPUEYiZjgNfZLlAd
	 2/AQ3o7xeWrmLMjYqNbyPg6iPYOu6O3IMlIzXS4qPKybYo5PI1bL/C4biENvc9cMcH
	 9BmzCC48mKKoTO6rIXS60XfjcZP3LtanoMXXKXWgrF6A/7j/RIRvte3Xw57pFE1yz1
	 uu3lZSL4Tu3F07EfFI86FBmPDes2i9ybT13BCvXuYQJJ0ZdeqFGO9oOcA9Vde9/Mvt
	 6ldKqQQXHgbEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C58D111A8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 22:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176454017359.3515.16470255782416933568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c503a75c6ab482270b4b19d386ed83e8d6ffe2c0d6db7380d7b43dee312f461
Date: Sun, 30 Nov 2025 22:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764540173
