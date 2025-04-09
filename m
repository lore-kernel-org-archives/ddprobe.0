Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B9F21146C
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744232394; cv=none; b=GS1/Kzr4zlHJ30dGWn/B4bGAmlS8IbokPT/NHxNUVWM/FGdPz5E747k3Fj+KNw75E27XU9r8tbnIzYsaG8q+KpYkC1kfW1qY5ovFRIE8ECQC2vBk3nCnnv8toZGCxdxkUjB+YXL3cPHjVtARhb1+SDdDtLto2c8CEn5nU6D9SK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744232394; c=relaxed/simple;
	bh=6w9WIMw83Wh7kaDsar9AXsZ8U5mA0zOCRt6vtrQLycc=;
	h=To:Subject:From:Message-Id:Date; b=WmBzZCmQmbpCOm9XGLzHT75dNI1ywnoUAmDf9qcKtuq3n6tci0n69rM0ufcn85H+p9krZiJOpPeHj36QLytDv9yMXDsAxKQmBTkphw2tI1nWN3I3OxDXrYqxA8+A8R9AKpiXW3KoUnUoRWdG8mtIfIb5GtdbKAyKvWZZtquyZFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T75kDma9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T75kDma9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB21DC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744232393;
	bh=6w9WIMw83Wh7kaDsar9AXsZ8U5mA0zOCRt6vtrQLycc=;
	h=To:Subject:From:Date:From;
	b=T75kDma9d81q4oH+EFrqYDVH1ISL0bCTkZYxWUbCs4mEenvsHE0QaoAtSOhKV7Hsx
	 pMDAOWZMLB9ES3DicBSVN8KZ3XugOOgM2y6AjJHFP+qcs0YerEw5+YLXpyf0F0llGw
	 mpcyBAfteQScZpOK0ChIMRGiBL5ZeU91+/eEMUA42YkBHy57UWIVKuDn41Ksty1r4h
	 UKf6ipo0ij8B+2nfFsKqY+qKKnypJ+9njrX9IE875fNwbZMIRBDIf0oNhvmDhzzn/1
	 em4yhjDHvqfm9JfRBgpxVRHLulyb+/jTU94qe5yKb8REOzs68qAOfyD77IVwMHdK/O
	 e7c9fm6Li413Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2BF1C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174423239364.17997.13311567938737781068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27a188f82957182eb57f42b86c5cbe5eb9a1319c8998fcb7281646adfa3dab5c
Date: Wed, 09 Apr 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744232393
