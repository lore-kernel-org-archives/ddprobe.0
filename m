Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D08234DCE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786283434; cv=none; b=m5XtefuL36fYgwAiKmIi6/ngcB7m9iYgVWJHDEZ83FL3AdteTxQ/3ny/Dvv72zAkVooBsmOswhFMg+00foxsKGtDNxfjP0ArnxWPENA8tEq/aIHv+mdER4nrSfsYXGsbk3zZ2KOq8VKXnuT1niXhScAx6FDbl37kDvH8XwEipOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786283434; c=relaxed/simple;
	bh=vBfKRE4h4q3xd6q0LLPsoLUCvrswQSAuneG1MAZtSzc=;
	h=To:Subject:From:Message-Id:Date; b=A4+l8VaGiNS3OijfHo/dCKkkHV4l3ip/bT07ZC6SNXH9NUPQXHiYdY/B9t/bh94KxeqIC2p9OlmSVULOd94vypfpKtkBZie7aI9C3Yexees49kJtZCgTD4wOJzhVAHDImK2exuBQD0+otpey/f4xHUqD6OPaGdbodrvxIKN/mPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gLDCNyw/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gLDCNyw/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2625C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786283433;
	bh=vBfKRE4h4q3xd6q0LLPsoLUCvrswQSAuneG1MAZtSzc=;
	h=To:Subject:From:Date:From;
	b=gLDCNyw/lntC7xiHedzwyQ7L8d0+e0/aDIOUPsvvBVriT2KqMquWL379lio5RO+lQ
	 GU3m0u1GbXPcbH/V8v14K1K9UwO+cGqGCCMldR84sx2qP5i3HySnyQk2S4rBt82R5O
	 svJkrrLW5qnr1AjYeVZXye4t6QGmXMHUbDqVYGg78EOD/LmMUkD5cQvn4UFLDt7N0s
	 09qOy2waRQeeIO86gbsUlp6HQ+tlWrSptxF/Td90Tnc6oBgAb4IBDYvRjajWk/DUeT
	 nvdRAwoafQfKG26NmvNizB4AWr6X45iYxETN/4pqt8CZN8hJ/ZncjP7gKRH0givmyL
	 h1Q/VJS6llNUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC0CC5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178628343368.8075.12654656659421470748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fda2c39ab8efc64517f4a6a403f46668de9fac4a488966ead7a2f2253b08c593
Date: Sun, 09 Aug 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786283433
