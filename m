Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D85C2EEE60
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 09:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782295054; cv=none; b=WelBm5g1gXqxvWURnsafQ2p0klOGygA2fMkwqlhYi5ZWlywEY/U6L1o4nEKC8Vv4uCUtz+QCXPdZso65SMNPpi7US9romQroFiZ8bMwt9Ur3m3efX5y6zRdvCUHGNQPc1iF+oWzYRyZu1gWER4K7Iv3WW+sTJ+y2rSPXhG/HCIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782295054; c=relaxed/simple;
	bh=Im1ZOZXD0aGZ3boFriDJTGkwjWKeO3qT8vjbwaUzqg0=;
	h=To:Subject:From:Message-Id:Date; b=rQkzND8lVEbM6fZnHrPqcq2Q4CDDIZ2yyn1q1tFwADKKmwRBezn+9hyXqRVvoUzT5sJQi5MV4wvQ4vuaqNHsCHnMtNOC7lkQiAzykqVqXgTO0aBiXJXSfxb2VwEqgbtE8V/jje384kv9qZ7wB+8uJSvRo4S8FF2d8KB0HrfVF1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXxGnVOz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXxGnVOz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED0E8C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 09:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782295054;
	bh=Im1ZOZXD0aGZ3boFriDJTGkwjWKeO3qT8vjbwaUzqg0=;
	h=To:Subject:From:Date:From;
	b=XXxGnVOzvzAt//QS7FCVpnGAIvDNmG1QBmTnT0OaV5SEHE4NQzjJdEluN/vSe6u6p
	 6cSxzcnYkPSoyCQWjrmXLA/HKILy0tz4IomBpCZsPfwXYG+4gqZlw4wse6iPgqyEUC
	 29dOLLwUcxyPrIawkNsC9fYXVusTQfV/oImmxDceTjMttyI8QQjb1KY6onjd6V9im4
	 nqLmbzdl9nPFdxMNFikKEbEV/0Kx/vrJj7G0gz4yENaELjNojD4YH2tKx376FwK8ju
	 EBesAZceW56zWznY9ax9N2MmQkjcul6W7+P57RhJxtLObr8J27yQePnrhnCwQ8W84L
	 1fNbDwUVUi3/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD202CDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 09:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178229505376.5394.8464184624941400211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19e7a9be6956f952fc22d633eff5d1aef2c9024e41e313eead742a8371c65550
Date: Wed, 24 Jun 2026 09:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782295053
