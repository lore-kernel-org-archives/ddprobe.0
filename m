Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD2F18786A
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755048594; cv=none; b=Q4J5vDta5nhngDq+C6aaL3DXknl/LbY+LMPjoauTu5HW+GxfKrEFB+vbC0n0r2JMpHDXpZQ4veqiHA6u48/pNrYjoOsaujp2tpDbCpB0IrxrnmjE9YZWX8sh/5lAyRBc33Heb8QiBu5ZnbMOUPelwhNS8dKthpSW6xfq0LKHYMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755048594; c=relaxed/simple;
	bh=hx1tntc2mhodgLOF2ClG8lF223L9gDgGtpRePFkx/xw=;
	h=To:Subject:From:Message-Id:Date; b=CAgQ/BzCuf5ezmB8a3otBubFbCYBSUIO91FSAKtw+eTYNjDsuhRtgFPAPKXDV7P2iyOPJ5ExRZrwx+2f9Qq+a16SuRsa/GRXz0lkXWAq7zn2kik8eN5AdO9k0n0Abv9VmW0apAOGKhU2vHUlk/Rty3hno12vH91wT/lCrNmr1+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ep0WWrp3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ep0WWrp3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A866EC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755048593;
	bh=hx1tntc2mhodgLOF2ClG8lF223L9gDgGtpRePFkx/xw=;
	h=To:Subject:From:Date:From;
	b=ep0WWrp3qDn03bHYrbwtgGaJNS+tXCNUNw1/kqwyZUrF6fzEvRn0RSQ5MzfLrlgNJ
	 JHiv+8KCoQm63lXXGl1l6r8NrGXCxecss0kfIwepoQaJOr9lF5xCeX37C1iGlFaXx+
	 0tuw5os2ofPEJv0jMQLLSHMl79Xu1nHPZxB7XYz/PbJI9X7UA3KGXZkhdYCf1OVBKx
	 A3knaEhjlCH8w9q8WcYTnSqwUDukMRhlAKaV/2ptglqfDSgpnRAowfvwIwFCTWpyo5
	 UYogeVfkmQ/aj5JwQDYM5AMDFFKiY15So+mPFZyBsKimrYs3CxfpIXA2pTLdLra47F
	 AuZEGWwrvIUDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930B6CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175504859358.14241.7699383381698740442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d740cebe9b9e0ec1c1ca1cab932e149d37938ee5dccfb857e6565700a3f77fbe
Date: Wed, 13 Aug 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755048593
