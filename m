Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E63623B0
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758746995; cv=none; b=pa+vsdNLg8umg2z7EW81UXBVbjvAm8YN/dhzeq9tSygpIN4frLtPONE+9N69tINAH++BZOfFRjJVwNIC8J5b8FOK/ncuz3oVG5O+S/H9j5B5lJH5VBLOVFLinag0Cym/xZtLVz4fL3bYJc8JiH6vgq8gPG5UDbuatdnBHz3z0vY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758746995; c=relaxed/simple;
	bh=Volqljfd+F33BfaP459xJCDnvp86MCjpHjc+s05SlKI=;
	h=To:Subject:From:Message-Id:Date; b=YjdoDnaYch2nxbNW08SYi4P6YwxuWZUjtEj88Q6qpHZwJSFFC+TPYaOUrATO1ftPWE0dFaYciRZh9UAlMYJ/LzoSHz4pKCVrH/mYdsTLTT096pBAJO/0g3Rpn4zFyrwQya2AhFotjYwzrqTQX4QBU7CxqjRPuZfa6BdGwYrgqgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XCs7jQQJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XCs7jQQJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BEDC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758746993;
	bh=Volqljfd+F33BfaP459xJCDnvp86MCjpHjc+s05SlKI=;
	h=To:Subject:From:Date:From;
	b=XCs7jQQJjcjDNvwk8hyo07mGIb3Ki/oMqDVrvjwrRG/cUxm5wvQcwIBHJWquvE2MF
	 ucmTft8wLOelNwphEvRTqREReViuVEd2ls7oE4SigHoUGd/D7V0Rw0r3jL+hMqN4g2
	 rAgd6Gi2PgdyVvIdh2qdL11VjqQj8peG4v4XcewSDlDtZ06kVqGfGFI5jnilPuhO7X
	 4nTOFTZuE3VgWAumryVyAKWWoq0SU3BAt5l6y7Z30r6OMIfzycPsyo0uZC7VlDEOIA
	 v4B0S+ng0Gcs2C+OHPsQMEfi902IgoXXZ73JE20I/QQTGFKJJlhzeFMgsM+lfSO3HR
	 JzRz/jY1tuvSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92714CAC5AE
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175874699359.29015.18027554186430703331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37e26061bdec8e0b5d5c9326ccd66f2abb5f1e000bb132cc81ce5fcabb71c56a
Date: Wed, 24 Sep 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758746993
