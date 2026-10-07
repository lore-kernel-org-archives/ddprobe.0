Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5783644F57E
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791391834; cv=none; b=cRjqucphPEu/GS59yHb+tgbDfYDiQNcrMV9FbglUVG03DHy2KvDGMQxnk4Bn3r6makA4JkNLQY4vW7Lffbb6ubCPHoFbRegu55xEtDtyawGtDlAbLuZP/WAixSMbSrYnV2aSBSX5FN9w/R3STtC/CVKdd7RV9pmieCIarts2Q7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791391834; c=relaxed/simple;
	bh=VxYagOxXDAkpIhK437xg8AoapJviDKM6D7ICStltTcY=;
	h=To:Subject:From:Message-Id:Date; b=T2S/8J/jLISGyTPMD8d+DGukdjg8YrX1lE4h89KoDfI3Qz1L2tyPtzpb21qZb7x+2kcS6TWHmPWRltU+XEG0BXtRcNX1s7vrmsigHjCjMoRFT1Y/SQ2ov7O819g0QdDF8NoeBoVKwHlRLDANTEcwCwS2TrB7nJ0jhyvLk7TKFeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hnvmYpZJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hnvmYpZJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D66C2BCF5
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791391833;
	bh=VxYagOxXDAkpIhK437xg8AoapJviDKM6D7ICStltTcY=;
	h=To:Subject:From:Date:From;
	b=hnvmYpZJe9hToHXknelFEk4agVHlfU71Pb1VvrSBeQuCIVggtwYQhKXFpfrE2C5im
	 fpwcjfAa6U9Sq8uvBfc0FE1wAES59j17CR8+Q/xs3Qi7JA2S0TT5FlZ4LHYF/pOMX9
	 QRdxjwcTnc9iBkh/fC/u4LTrYsF4oNC+jRY40417+zS326Ho/Pq/9ktCJH+Sh9ZYjx
	 r1S+nuRJPkMm/j32Qay3zlCrbQRE1NAPHEWVRtcSVGmLmJPYtqXTa5HgNNnIcertlt
	 KrnQgWCR/L9PKZ+dmO8XR5ztbqeo385ccRSccNyGl7WCiyzHoLFJucYz6jNrN8CU1y
	 4gPRRTqSgcAtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB77CA6002
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179139183368.19733.9623490703106925758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 726680329d1c1e497801d67a0eede020c4f8e9655c7e748c787cac64cb5c1ceb
Date: Wed, 07 Oct 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791391833
