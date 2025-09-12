Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDEB302CB2
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757700594; cv=none; b=Mp9TE9FEuZbWYZ4lClO+t4scAzMOWaPGtfC+ybn//ov+9TGlx/2JaDTA8Mo2liqaSnTSr5X+wfdqC0ZzI3ePrqwEr5QTPM+WFhpyXOgntgDoePttCTUPKT2T/9snUQ4b+LS3qUpoG5J4N7PepX6GI80oNjKlqSU6Iy7RUkg04UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757700594; c=relaxed/simple;
	bh=oPg9pJCfrMgDsBPF1vlyc/RZuN8E+w+LG1vGPPwSCPk=;
	h=To:Subject:From:Message-Id:Date; b=Hl21yoQXU498nZ0CcDeb/wZnEjgiwfDJKjVP1McbfNMrWlQ656fzo7zHIbycGM4J5k1L80jZgwtOd1GgdWuisJ0XXgiVkCYHEK2RpYAbOihfhqLQII9ACUAIoFMzyi/rJqVnP2xnqlISCMaUs4pmtA4mpezUWa8Ufy79mfVuPCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BaBZg6ur; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BaBZg6ur"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85A6C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757700593;
	bh=oPg9pJCfrMgDsBPF1vlyc/RZuN8E+w+LG1vGPPwSCPk=;
	h=To:Subject:From:Date:From;
	b=BaBZg6urQn13jGs8EvsJimwVbIZLFJ6lRdt6++XgH1IE942EewL7dDZeOIJ9AA9nE
	 BMz0ObP6VVVxodrAVOQWirKI/Wfoh2jwhP1wJ+m3VEV/MWLwu/iiREo+zSc2y1QQpy
	 Nmv5znSFtpgek+E7AiDqqIcgWU+yLsItg5JLLp6/7WNK9dawm1p9qnNFN+enNBRLAd
	 31g3+wUQzhs8Tyu0BUIR3K5nofvnVrsEfAVshnLoWO8+vlUJ2blZQxpT0gFBAwI5yG
	 TpPSyS/wg1y+6gmuT4Vmur+SOZcA8LttrnR2QGFvfsmSKKBYezCPEPyI7+kNfatljc
	 ItW5d3v4vttmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95500CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175770059358.14457.13787891497898966451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a50446111e1149f97b9a7911db0eb77b7f0083904e89128bd1f56bfbeff5d303
Date: Fri, 12 Sep 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757700593
