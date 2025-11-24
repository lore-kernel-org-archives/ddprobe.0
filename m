Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D2E713AD05
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 19:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764012174; cv=none; b=I3CR55R4XGE8MCgCrV4LWx1JplxcTPbZwqUOa8//jCki3S+pfCykui9m20evhVsjaZyCkQB6bh4ElMUVrJH4hYG0hTV7EPXl3rNnyvikQq9dv/fIfmEu3LCpswiGpbM3/VOMlVewA2TVIobahUekNkvLuHKHGx8QD8Z2G61hsmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764012174; c=relaxed/simple;
	bh=onzp314poU3x8kSRPuDzKGFCr7ytPBH47K1210LWYvs=;
	h=To:Subject:From:Message-Id:Date; b=CEWnuJgyF1moOsYsWc6n1y2vc364e4/vBL5Xj223TtSGB1/L7rEmxTThgwKYtCXcd/kA6qmAKzHCFW/h4aKpPXz39twjZie/DTW7GB7C+PRh5obXKEcRTMW12XlR5xa60UlCA66tC+FiaIYf62h0WP+cjqfzMACgI4+SN2uxCf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FH6jnbLS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FH6jnbLS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78C0C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 19:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764012173;
	bh=onzp314poU3x8kSRPuDzKGFCr7ytPBH47K1210LWYvs=;
	h=To:Subject:From:Date:From;
	b=FH6jnbLSWG20W9dQx6htbrLH5mwWb+txHxLaUk0haqU7LkaC3SgWI2gyF0IzeWF4k
	 QSWf+hpdUKnR8cJkv3sGPdNOLIgWCDpBB1LS6BpXu5uDW8azSXFZN3AjoddGqSepPc
	 Gm3TzbapsWaCg3dhSLDKMfYHT6A+SDjVAaoqu3BkY844kkMapOMTK9SJ8jguza416i
	 MZegG0bOcaA6SYXOWCtuFEoXoI0Z/LFcZ8JPvAGxLkMPRJAAKMdwyXhqP4Y+81ypLJ
	 q4/GXcAq05jqDN31AEqtkELZEJ+zFhoscYpOeTvPW8M59IFVulHotXtCdWhNNIOh/v
	 qx35iMmLy0qdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B0BCFD313
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 19:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176401217359.28841.17036375958120236465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7ca0f7140c859250e79f9ead5fb1ed270a9bb6d4a0d7f578a91e43fb03e6037
Date: Mon, 24 Nov 2025 19:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764012173
