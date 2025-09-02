Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C92A02EF675
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756816193; cv=none; b=PitBFYp4P4VHbDpUN1G4Y01ve6Xg6Rv1yinMaXOGBnLUnPQWXQG/fSC30YY2Z9q8gSpIJefymuPyfn6DD3mi6RX78RkCYtjwWAScu5dIEGkgvSbNd5EE6Vzg+454RPDLLFPxCtxktvXuxDnFo3mCtV6PmvNvTw6cSoyPC5NmEl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756816193; c=relaxed/simple;
	bh=xTTRSAFSpGbXE4WA5N5wxhLkcHfZJsMxJr2wo80dHtc=;
	h=To:Subject:From:Message-Id:Date; b=LYErktg7RNkwW/wRUlWJ5+e6E87xCKlKokO3igd0nc6GGJZEPgEZAFnoX1l9420NhzQWArENqds05gLL3XdqqZxrHWRfzvH6IxTttwt6a8wKVVH/vT5alITdBeC0k5AhJV+rRlc1+2yvYxVXaId+6REYv6j9jVwwWYMGm6qVhnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OB+GOiLK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OB+GOiLK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8604C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756816193;
	bh=xTTRSAFSpGbXE4WA5N5wxhLkcHfZJsMxJr2wo80dHtc=;
	h=To:Subject:From:Date:From;
	b=OB+GOiLKirhhcnbFZRy3jvGiINSO7lZOWvWK9v6k0VlrX21zBkQnZNNNOPSnAe+XB
	 vJt3G3TO84/Io39uiryqr8TyqoBIpyxZdA+zu4NVSroETDOxQxnxv/MZLMH5DGHiJU
	 xsn+wGN930LaK2q0lebdlS9xCKlNm5FT/1CiBsk74JKcas1sXEV9cgLC1j3da+gE6S
	 IfoMaep8cgdtB+wSla3QGNUTT6jbEkooEY8UKt/k1Gs4aaWqhPB3GfYwAJwmm0Qbfk
	 Xa5iFiNyJDKql/z7HNRXo8JB8r8esSUPOE6HlZENIPN3klf9ruMddW7Z0aYpnfZq30
	 KjFZkos/qKaLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B73CA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175681619358.20065.12413178000823457696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05bcd6c7ffee7f6f783562e25ed069c16f9545e017eee90cc64d1db210596e4e
Date: Tue, 02 Sep 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756816193
