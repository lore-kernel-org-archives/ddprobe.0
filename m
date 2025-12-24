Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 179E41386DA
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766576634; cv=none; b=fFjtwIo9/CkayDh2isu7CZbReS+mw+pBeTqmisl9klnjBUlT4bDUL7ZEMDXe+bZn5yDIfGqFDai+jtQ5/m8/gVF6XjALoOxSzfyxMpSf1+rh1YM0x6JrNxwRjvigfKkoO8/15pVPIG2PD7qiaLEqLzLWpscm3yE0S5aW3eyoYKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766576634; c=relaxed/simple;
	bh=6s+pdg6SFqSvNPscpoTAfwu3eRDejCkHeT3t3cZoNa8=;
	h=To:Subject:From:Message-Id:Date; b=SeSry1YOARtRWkepbcqxjg/IyrMQ7pYXzMWADcVXBePpuKXRO2lLWD30HsRFefwRVAYc5gsimbmpZ1p0uMVEB+VTjqCxFRiE+HQIDcBIE305QNDSNERjRsCFZ/HULDXS5V06zr6hbMeI+KM6fzql2NMHe91FpPR6b9EdLYSQNYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mao2WNiC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mao2WNiC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED66C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766576633;
	bh=6s+pdg6SFqSvNPscpoTAfwu3eRDejCkHeT3t3cZoNa8=;
	h=To:Subject:From:Date:From;
	b=Mao2WNiCLU6/xzPzpmRbJ61ZOXiVL/2k0L4BtRE/gbdKerpdCWBNZhfIwoKWUTbcD
	 mgbQSo0ct0VM+AFBBil0FOcUBDiwJU4J1D5Yaw/QH3ovQABs/LJCTjvqpC9Lor04ld
	 RpZAxLVQek6nUMr++zjBXUnTvtx9bqdyfZJq2uul4d7pnwDglFKKbHoBeAqr5OA0Tk
	 3V1Uq5yfdYlf6htBJ5W/2MfIhMgE/qdaYKnScsrvlcLtEm85s8tUOLZbDBkYU/hHPD
	 fjlV3NQ7UnDzLn4EPWDZrOI67tEIpwPbCjkKX7urn6ksf7db3oe2SEe3dDuUIwRvI9
	 X/bUi1kEfip/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F489E74916
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176657663357.28393.8935192052642033124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d6ef993ba00cb5830b582d3325992e5c25e8d9632e16bf28c5468f16cd7beff
Date: Wed, 24 Dec 2025 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766576633
