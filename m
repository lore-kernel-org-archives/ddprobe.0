Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175EB347BBE
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761911994; cv=none; b=JonGCPlVTMOuwTRk6VFPRIgVgvnuojPgQDbJv5Hs8D75HnSGoltHHTMjiTWL6ZqCOB6LfeWZtebX+t99YUPDbMjoPC3erbWSjSC09knXW1v8PFRqTQmRMfnKnVY/4j+dQyQQDworDZELOuhCnskcbdxZuLUVm7UpkRhrpPQwNo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761911994; c=relaxed/simple;
	bh=ZSyRqbp+SEop5YSTkeeVNU48eymMIBJ9lDKtOG+8kfk=;
	h=To:Subject:From:Message-Id:Date; b=CSHOm/YFnUTpsmpT+wpZilO3q9C87YdhWo4KB6qYj5AnLqBa2hNVeD2XTbWGyNGFguIYdGvYvkdDE+gbXYDZhOzAH19pSApdJ3y6G/BuTBoGfe1LGpW4eRuAMewHj68iL1KQFB+FO9OpwtD1Fx0mqGk3F3FukcdBzIP/20bIzeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QFx7Viqp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QFx7Viqp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CEB3C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761911993;
	bh=ZSyRqbp+SEop5YSTkeeVNU48eymMIBJ9lDKtOG+8kfk=;
	h=To:Subject:From:Date:From;
	b=QFx7Viqp9BQygL5iNiS2MT2Aj8NNo/SXPur3GSFc7PbQQTr45olda7Nsxeb/DVaEr
	 +/60fDR4SQK11ISaiLSvWaor55YYH3bsbfsNq3yYqEZNHDxUomowPhDCWW6IrjW2ql
	 zFI3Vie7kiT1JoUcDS1uTQFMblv9tjY+ABdIb10usJwpXsD4VBeCj+RLfk2Qm9NRSd
	 9slPiVz1Km1ND9tXeQ1mKQf7H9yMDRAv3LnfC5RDJaKs+QDuVjFxCKpK3KlChIbY2M
	 jjT9lSqnGOVto2Rp+QO1mP2YFRq404s+In7RKyjxdn/m+e90Uop4aRFZrRw2Qq4AE3
	 hN/GvmCZSKnfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFE5CCF9FA
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176191199358.22955.3463365176579365315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 295c72ccb08db2df6dc83b26bac3a8b5d9cd921d6a2707bba3ab54a96dd21da9
Date: Fri, 31 Oct 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761911993
