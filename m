Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6576138F95D
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 05:33:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769146435; cv=none; b=gCubA4f31m3p0eoEZKE3QcAdSwAenmzwKN28+1XzvDmqv7j4//2VQy9QaWL2MVx1VCGdQ1IjUpcc1PojoG+r3VVCVGwBWGkgVgv/Pg8QMLxb1bfY/P8BJr5/XFDEf6OaUU1PhQXsY35khsO/ear9/bPaEBm/Fp74BM/AYuIQUio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769146435; c=relaxed/simple;
	bh=vogMQPH7brfGjp5tbIVtJvKP/cU3D8pkVF8u9REYU3U=;
	h=To:Subject:From:Message-Id:Date; b=DNKmLXQbhm4K04I+yQqkCLQwKr+XMweCdSJgTuXz+FuI0pnfJ0ampnVG33XH+mkRtDuxK0wCh7PHvNLJjHWhcCt3cK3+N4/FjutCmECMOOvZTZ1BHZDSJwIeywJjP3Fi+oI4gk9avIZ43qOp58lM+M0Oc6FeH0waqCh/AGJ/HAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BsH0WytZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BsH0WytZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E3CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769146433;
	bh=vogMQPH7brfGjp5tbIVtJvKP/cU3D8pkVF8u9REYU3U=;
	h=To:Subject:From:Date:From;
	b=BsH0WytZeEuKs0mG31Qs7hWz3To95tBZqT5R9txZoH7bT2TlLged+i3VwIsgeb/SC
	 dB5ITS15kt9N4+IeqG9/PTcrvLxhdgzph8GspD0EdZTLCoPC+jWvmFwm4eLqZl91Xy
	 fgXtHgedVlI8yKvcOL+1Bmj7QMCLxxaIyLgS/IswJ28+px6EDrcYH2tCuKCdHcrTwS
	 C3o3yjiejBUNaWpj5byZPPcYkZo8LwiLVNdadllpyLYuV7mH7PiR4vqGsSPOWGggXy
	 z7jdvdicofLi3DyLDOqtAlbCaFQRcpb+CShL7TltEctiKHfwwpYjch6uETmiNligtL
	 jYWak/QKUQoqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9538AD6CFD0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176914643357.23919.16780047591559853659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79a2ae79456142efdddc2dbb3f65bd142fd8386dd0215ee35adc8856042d3184
Date: Fri, 23 Jan 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769146433
