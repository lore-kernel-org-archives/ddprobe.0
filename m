Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 061E17641E
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729804554; cv=none; b=oP4JSzliV1dl3atsm6UtEWzPVb560bgoNQ4fZBHQ5R2tuUMdiqD2KGUFSz1gNIO6fPXoDO/c+FWTPd2Dsc+y9L29B1L6FJZibBVpxoGJz2SDn+BtyNL65a6CZuYRSorhdbCR2SGmoNBC1IqDre+1BypdvKsMnuZC1pZ4reRiwro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729804554; c=relaxed/simple;
	bh=3RmflHKvWr2+518EmaW69izf1RbxLhFarb4FKDWUmhU=;
	h=To:Subject:From:Message-Id:Date; b=UTAWs3rvcW/gA9LPmWyT7gIa7AU4E9A8lKsbcv3MmDDyUdH2bHYedwlTZghQR40QzgWMePah5M/JkgunBj1kf/cjgBSBk/EZTdTESyCaD0wano3tFhsmuc+UhykmFiz2CQmFT4SQ0dS3qISARiLggqfK+B7WCu8WHkkXu2FoTWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K6gXehjo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K6gXehjo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC14C4CEC7
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729804553;
	bh=3RmflHKvWr2+518EmaW69izf1RbxLhFarb4FKDWUmhU=;
	h=To:Subject:From:Date:From;
	b=K6gXehjoDD6wD5CQeudVFOfDwhgrBgz+NLYlTeUsh8jjZeMWLRl5Zvv8bRPECDJ+0
	 oOvNucuiO4TaX7VfOCU0HWDembqIjoqlbY3RIgzKXK2Egpgq3MSsQvlTHe0/vT2fvX
	 op/k7qgb61DPqtx2UsuiNstaCnEfBrjhqW6se5oQygDLFGP4HA759UMDIXXppv+zbr
	 tYfumTuBpEMgRHxEkdU6qzkqQ1yuzCgx4nowNwuYI4gotdDseiht34zMh3HQWrD+7z
	 mwvXisbyHJCJABnHf244anhi065qWmMMRjgOB3n3VEse3xgV0UNKdViAOJsYkbMa5q
	 ATkxXyYX5aEWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E40D10380
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172980455361.2581.6940028026673138314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae3276bdc928a347b74c9d5d2dbed67599cf695e9e9e1cbc209655fa25ef5dd6
Date: Thu, 24 Oct 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729804553
