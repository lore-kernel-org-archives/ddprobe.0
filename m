Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CB63239E9A
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 21:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775250334; cv=none; b=U4cAVbqiTlF2f88MBHP2yGAOS55OGWCJv02CpVjyodRdKuwtt7pLDRzEE3tI9IxOmK9rEs/sCuVdQU+6MzXIPeNnBFoGbdouWpXMCxGD0PQPP57km5P28Lh3JClrhIN0yrPeQMt6e3AhFVSUF5df0pruvLVz/X1t28eXza9q3Pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775250334; c=relaxed/simple;
	bh=18zaJC4D4d0hGGIIp4oWmIgUlsa3B4Cu4rvm7zkDuPg=;
	h=To:Subject:From:Message-Id:Date; b=P6WUkvV1VsCeOuBKYZsosVziLZVVubU3K2vLPMYUQ346Uc1rUz1iGOpwFIRO2pdZX70UIdMu7wFPStMxXKS2dhrH/znPvAB2w1tGeVxH/M8TpXADMtbkqASQpOlx7rNK7z4/lnQtxzpmz+RPjIy5Nvc9WU9iO3Hyr7083xpoH1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PelZo01Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PelZo01Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C496AC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 21:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775250333;
	bh=18zaJC4D4d0hGGIIp4oWmIgUlsa3B4Cu4rvm7zkDuPg=;
	h=To:Subject:From:Date:From;
	b=PelZo01Q3N9wwat2yfnn0QLDkJU6WC/n+I9BwftSidw00g4XWut0u+5Q4IH1UfbIe
	 4iJzWjHw9WN9AdgVdnMgWC4osbAXp6adqmjjcNJLCBOynjK41j+YEJlW1dtKolFvDI
	 xB+eb6g/RJOUY7a/qpa6nCv9+CmR/ZxUdndcr4wKKcMocjSImu5XKm+LstVTk+fr8a
	 8gkIpYI3nUeARogR4KFdfiwjBSF9qUDqgdAEFA2tFeq8B39OXAjNaB43QcJcNxd805
	 kfNZRs8X6uWoM8XOZl0zKZ37I/mBN2OJGTrf8fHV07q3aXtmK34UPPiMkWSKYy2KXn
	 +tTm/QajZHkgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2025EEB577
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 21:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177525033369.3474.16986571810361707255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3cca0b0770bd65882789652b6d8880e390133fe5245d68c8a6d09d33f35d5a0
Date: Fri, 03 Apr 2026 21:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775250333
