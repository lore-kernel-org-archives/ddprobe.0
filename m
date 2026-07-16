Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A46340911F
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 10:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784199514; cv=none; b=Lnl++VU2Ct6Ts629P6HeKOcbddwOE0FPiSwDIR3rBJ8/F36RV0NLn/Kf2GyAQIrWyIIIrtGPHzmF29PJTDERCZn+xbnnKv0aIcVg0Gp/NuTF+JHCEYw3ha7N8j1tqu1CPrnXzfnkrydfky0R/D+6C2FdJYajlW6v3r7Ft7u648k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784199514; c=relaxed/simple;
	bh=mGI2ERtz079vVEuGJgutBmpVDiBpzMSzEVGnBgIeWpc=;
	h=To:Subject:From:Message-Id:Date; b=Pj2Z2cwhNTvZKNOE/dgVmSQhuZHCIgqSmqT2HzIMgNHCscpZvuuBBK2hrlu5uSFiaq/cwVDwtD28lDWFxSZEqNMn8wXD6My+r5I010Wu9sWSR72XIaD/Oi3H5vs3gA2B9j0NMXsEkV4aWGakxNWf4kzQsR6gU79+oX5FOz0SVQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iMbTUNT4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iMbTUNT4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA6CC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 10:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784199513;
	bh=mGI2ERtz079vVEuGJgutBmpVDiBpzMSzEVGnBgIeWpc=;
	h=To:Subject:From:Date:From;
	b=iMbTUNT4pdt8YStmaH6Tkb0p4kAhuthCzZw14kxQw7pTy6i1ANobL4tGKwRiUua4F
	 f82y9ygHw5WZs3LYP4KfIOZYbM+/FjW2PYPdqKSnlZJg64394h3ViqOPZ/e5WaHFwT
	 /sDFO59F9mveTOT2TK/8SGq1rMXEAXlUHRIVKCfZ4a4HS+u6UG34Se67O53Lf0nX6b
	 3mPIRsADKXh/3qEZeEm4BuqIe7RQuA45bI42G6wT0rfp1rLhKHKTVxPcmwDN80GSjo
	 jXW7M5z7omDouyItjSP7cr0FwdZ9oJXaKZKMKgujMUoZXROyUcZ8yVJA66ywZSPm53
	 bL8YP+lLQQn0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6D3C4450A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 10:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178419951368.28470.6326614948618696176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 871d9459f62d595ef498e43d19572a4eb1e92daf640caa2179db218d984e8cf3
Date: Thu, 16 Jul 2026 10:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784199513
