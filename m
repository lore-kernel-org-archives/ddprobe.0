Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFF8423817E
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771699493; cv=none; b=tI1zeuKcRRauZgpx+xzQ/1Iz1QgyzSO6Z7zddLtPdMNJzsWnX+j3fE3H6SvRtl98HI/iFFKvStbfG19HwO713Q9WOmhdxkaOAxDj82JRGwoGSktdPX8ouEBZvWdT2JJjU+jjvUoSAJi/i8YJhYmsnFMaoOIEY+SOkhLK1KOCiEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771699493; c=relaxed/simple;
	bh=In95ghq31qUGrcB5YO4PD+wP2D1XR5maxBeFFSnXM3s=;
	h=To:Subject:From:Message-Id:Date; b=NphPnDSCNN+4ujTqKhjR5XDZx38TN3wsCs6NaL1nYfP6qnnle7WoCD8x6okiNAqgsUKOKfBVzBZAlS/YtVH4XmNfDoIaY7yEDSgLxWJMm7Jp43eFiTydPfXuDPwQ422dIahwrCffUSUR8m907ICVkPLY7d1JAfmhz6oMeRJWnaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sdk3Dl60; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sdk3Dl60"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A769EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771699493;
	bh=In95ghq31qUGrcB5YO4PD+wP2D1XR5maxBeFFSnXM3s=;
	h=To:Subject:From:Date:From;
	b=Sdk3Dl60Fp8DZv+CoMnWU713KHhE6HeLNwZnEEnHKkagyHgeRCr+T58xmk6eqqMN8
	 Mcl7krLiTmRHL0UojDWqrSnhjWZFgYdMyLceQuJNZkw9bbqh9KLWvxQPG97ppowKfE
	 3so5thBDOgr9JtYxWBJeYTMs01mVHMgYNjpMtz9K1FUBsOGh7W1S7u9ZXBUvaSsREn
	 GEZ1YZgaReLD0yWR0qKMyv9bpyTALceokWFzkqigbjuDzknADzg8T3HIFjDLkkxfWv
	 5HDOTfQPXns3jIdkMNH1DLgmdKuXSpaN92CIzF4nZSfPh8kg1Xz+9qF3fpjfuqXdoy
	 YADF+QiG8Frsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F83C61DFB
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177169949358.2839.14183044716502388705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 422655677b8742527ee2e203929bfee03effa9f186c28e06961b912d0713b08e
Date: Sat, 21 Feb 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771699493
