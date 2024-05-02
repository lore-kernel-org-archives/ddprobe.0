Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525FA7580A
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 13:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714657343; cv=none; b=i5hfNhsXdcr1whJFRj0nDjpIvcW2uRrVPmF4C87KuBvLtPdspHWDKGSMS6l79fhATRczLdBZ5Li7tTizljErzRE1K5JgNztoTguCHIZkjPCKaTj1juLdtA25b39eyql51gUtqkhQ91FJDtogFJTLJxbVzTZ01PHYwVEE7LG4To4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714657343; c=relaxed/simple;
	bh=d0LY/eEEd+rCo1rm9dMELXzEaz4qneTmzEJaIgmjWag=;
	h=To:Subject:From:Message-Id:Date; b=AJL64QX8yKezwPx0iwWo+SZyaVWbyINHYSMZWubEwMdlLKy7CAYWda9PO1IOQhfy4O3IFtGR21oTiusB4UsVAhkWzMdzww9W1Ird8UnZ6sifnotmO+JIjNo5NKtagO1NX4x56IrmqgNk10oCftx0bZKl45oQGu074WWkpTZquJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Imv0aMKD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Imv0aMKD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19C7C32789
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 13:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714657342;
	bh=d0LY/eEEd+rCo1rm9dMELXzEaz4qneTmzEJaIgmjWag=;
	h=To:Subject:From:Date:From;
	b=Imv0aMKDdFXPLiDABzI/nEIaqjicxdd3wH9dkGgteronlvIo4iugjkzQMTn2wXpby
	 UEtHMtSOUbPGyORcwdaKl6ecACshNFT6O329kawwcs70I3yf++l6dZSnI9TvI9qOgj
	 i3lE8iM1vIKRKbQBs70Cui03pLYV2A8N7sJR1SpAlpgFIxAVe6jYQMf/SJS1p6o66K
	 zShLRXd/gt8dPl2cvJJaiQuwIwL3QsRV3fFNs2xqRlbzkq3xjDXvihHCGQbUPX69pW
	 4YcDpyIUknuNspc4aMXSFIa4vX46UYwQFXI8nFUu9WVoAfnEv9GieBoZGYSJOUjKn8
	 O1VJojBdl1X/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C07D1C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 13:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171465734278.10633.9750803817337624299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cb4fdde2bad96e4e9bec252858e4dc6247f15ec193c004aadb165c3ccc03ac5
Date: Thu, 02 May 2024 13:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714657342
