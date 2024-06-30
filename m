Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FBFF2110F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 19:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719774863; cv=none; b=ErhnKz/L2aPLj60AJZA1HjHPr2cvDwi1Z8BmYF15HliL3kpUtvhSfFtMfQhFDa1LpWfCcXUp4fUlHTPqppBGYVbi0bcnK6bHbt/eSi2n/xxsyqR02xhRrExl+qQ9n8dp89KESHq1E/iXUu15SOSjdUObx04tYwfILnLTxbcRJxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719774863; c=relaxed/simple;
	bh=VlTgxOfI+rPDOT5c/C4UkqwVuwTNLJqxgErWVJiZbdA=;
	h=To:Subject:From:Message-Id:Date; b=Ad2m3khUpjrkviy0e1QR0vNPmy/H8e3z5+/0bsHbC1GTasScGydtY0FbUUG5XG6R/CINk5H+SgtSMnjdIGpXuqZ6lgE6FlKCX2EVKhnL5QbQt4jmxMi5k0R97byck4GSBs+FXlPNebhONAJk34mbCQZiCWRbUFXcBD9k+8lTdEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qVcnRBuB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qVcnRBuB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB2A2C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 19:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719774862;
	bh=VlTgxOfI+rPDOT5c/C4UkqwVuwTNLJqxgErWVJiZbdA=;
	h=To:Subject:From:Date:From;
	b=qVcnRBuBre/4r6hSUA2SVUek7niZCcKBQ/ho63VNLinNJlf4jxtYxB3ugS97SM3XS
	 /WxSriIGfmk9+BlRLxG359ZUJG3+KgLS2iynk7bxnhOpicv5yaBYkJicWXyP/9aN4u
	 6bI2NM0XAbURdg4RsNkQ3zRgJtjEzVCvvJ3HmAy3jI09yqByt1T89BSnCX1Q6w7Ccr
	 Sk9wTGGidlYlOyevuRVl6QkHg6r8hmI7kv2uFtpm2dhJz0BTCM9jf4o/ebO3Qluc5L
	 t60NS9MOzEPmTStVSQ2z2RgcMoMaKWietKykAz2UTjiiWc89wEsSEGF+68+h5HGTTk
	 Zsfim9H02wz0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1F69C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 19:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171977486277.30298.17876796315151803339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac74422343f711854a7bf80dbd26561d9eb9018c3fee17e89ee98ea2af8f1486
Date: Sun, 30 Jun 2024 19:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719774862
