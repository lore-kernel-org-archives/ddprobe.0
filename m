Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDA0A29
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751328594; cv=none; b=pMJMumNTMwPhfuj3rFj9RKdOgtLidoAd1smaDm7WNC9vwKYxA+DkWJf2WRrOgYwSQRIdz4LH4SG1o5akrZpe4+mGOqM6ydDFmZQVkvwLAhxzK9/9tCD8XYISFkSyHe00ItWnhsS4WyaDJRgxyD9rpQMixZwyFx+V5KF9xU0PJ0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751328594; c=relaxed/simple;
	bh=5zxVlHtb5oAY6CZBBF2wonM88fZaT1VHVsuGlvquOSU=;
	h=To:Subject:From:Message-Id:Date; b=E/NvwT4wfnegdN46wlAQSX1VhIP2u4Wx4sPWjQQInKXq6AkLPhzPBSnSCZHfnUSWNoFsQXjLK9NsnvHIc42ym36mXdvsKihyoHgUovqp2xMuZ2D703QWOz7pzXgqdQqAalJTaGrthjl7kILQ/b0DkMmbqkVfNwHRHWldjMhEqDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mW38L0n4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mW38L0n4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4AFC4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751328593;
	bh=5zxVlHtb5oAY6CZBBF2wonM88fZaT1VHVsuGlvquOSU=;
	h=To:Subject:From:Date:From;
	b=mW38L0n445svLNccAObPQEiHbUaDvhd1ODMWf+2gblIFMjdW+ohjG5FXcZklXegEO
	 /CoVGYTv146pRlDQu1SgFPzy4968tplNd28vGKGSyF1Sb6AcpWVCYE9F0tJy0ppfOY
	 pVdneYl+qjddhlIMvXlABPv2/Vva+VrFs9lXiJsvnnirNzfLNa2efMKpBSLJasLNp0
	 qYwR2v3MDtd0SWwVSyQCfLnjsTKZ/1tJETf2ebCjeDfCCFzPOMMQOaLiMi8u7ahIjg
	 OP26P4Y1RIjEFpA3tflmyOWXrvAy4Tnj3eIAOKIPi95bJEzNdp4lKdcerVUU0PitsA
	 7vUsc+Yl05O6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E734C8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175132859357.32661.17787801520114973275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a239d2f48518e7e801a025a0e84f47e0e4fd44e185eecafce5f549b0da74edf
Date: Tue, 01 Jul 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751328593
