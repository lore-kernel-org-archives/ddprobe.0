Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5846E13C687
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 14:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714660943; cv=none; b=Gp+jNTHgvZFzdzUqCc1tN8MZavCit7Y20wGUrOlVfPgSd4aOuBXM+Lk5OdLGSnNysp+m6ATwBU3lHGUIMrQc9PcrS/dsLEBz3IZpbIUshTzdSNSd9XbYmgSEBnuF/Yogfjw2nTLbQPp1mjVG88mR+QQSGTndtd09YLnUtdYJ7cE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714660943; c=relaxed/simple;
	bh=SI2IAqFRIBTrKaFiCMFuCvWke0l1lo8iVkEInUMxD0E=;
	h=To:Subject:From:Message-Id:Date; b=VtafDMwXvQbMKdL2MS2Kig+zgeG4jgKiVvtFdUNQ6OcJ5ZMr2nR29603napr3sWSfXdZ3XA4ZCBtsUN2lUGqB61zMUfcGifj2Kgqpw9DuqejMDiWc3+AzoqqgwXqQVUBDRjxrzQDoG0gTEMqq9JucSs5Y1HEmVC9XSQbYwQZ4kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RFTYTHfb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RFTYTHfb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B85C113CC
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 14:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714660942;
	bh=SI2IAqFRIBTrKaFiCMFuCvWke0l1lo8iVkEInUMxD0E=;
	h=To:Subject:From:Date:From;
	b=RFTYTHfbiqdzIfBw/Urh2/g43mF2d62VOBGs5xTNGD4cOZxMYEPddLEkHT2dwu73j
	 R1DozlYjqrfXFS/NoVrLHaDhyCwMzHJQyZP/+OcVBu2oQl2MBOfFHPL+ZEm/lweU7w
	 AbAwHWRo5ebHk6lR4kAf7o4hDbw1F04tu+aGkC7Gzh2qhrHfxXHd3UXDsbD7BmAigy
	 99YmPgptexum9Zhuh+GMG8tux7h+PtuXU2925PVnqcJMuVtoWyDEnmb+qmS6Iof4bQ
	 2Gc2P2/cONIr6TvEGgruBd+apY2r5QmH15QVolh8G30d2bq4EUVuQRpleNDAgoMFrh
	 4X9Ku8yMh3Rcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C00D9C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 14:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171466094277.2873.14913247771395809329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dc814831481a282f3d0a9621a73e5de53e5f6d5651a9e9c7c07b762f55fd114
Date: Thu, 02 May 2024 14:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714660942
