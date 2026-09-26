Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B24838DC44
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790397034; cv=none; b=P87LCWPgkaqtBlH0QL4Gdyrxp//k+9MRTNOKPjmct8njS4jctKE7YYSmbtP6efgzErdmVshMdbg6gQ99ZKi0Yw8RUb/TmPBCrEfx+8U20qH/duDhj70UarLn0IsXq//97n5UVsVvEmXHhV9vBvp82KbuPy0pjcfiX2JSMR6zN3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790397034; c=relaxed/simple;
	bh=8SA4l3/wo3CQp6Yyj8QzG7p7VADSQR4pU5h1hr1iOoE=;
	h=To:Subject:From:Message-Id:Date; b=AegrLIQAsUGUmtX9DsJ4vw2DVOG6oiiIQxeV9JQ7boNtcn4Fa/g627G/v8MLtM3InqxxdB8JpF7GYJNOT6vDlp73XB1fTf1tfc3XHyX0t01gbmLsNwxufuo7XfPA5QQArBLfGdYoQvKKGOT6pKuKNJ8zj7E+5PNuMGcWDRWpcvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHyFvA6h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHyFvA6h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D901BC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790397033;
	bh=8SA4l3/wo3CQp6Yyj8QzG7p7VADSQR4pU5h1hr1iOoE=;
	h=To:Subject:From:Date:From;
	b=mHyFvA6hImFrmaLmpB6LDKsIi2iu2YX8WvFbBdH8YHOTsvCp5slibHYmbjgGgYomQ
	 luYTFu2uQ+cWsR1Ci5CW5OCrV1SRD86+vsvIy/RE2W495Oi68vCkpItnQxArZVJdht
	 y+nveHitFAqZFFCYDf3ufjG5fQYtawCqwNnMQRD9CRAaBKeGlSLUE2Sf3KlfUYBuqg
	 Qpemiia+NIYETepPv6BPMrpdyrVRkA2oDHPoYUNrJRQzxhEsszcHcD/v7fQH43M9pW
	 rsvRwlGKJp98rblcbqggEm2SsOGbe7P/GykALXl4wuGLbJTRPztgUvaC6R74nvjgpi
	 xE/RL7TMbTvww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B311EC9831E
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179039703372.6968.14715979210255186052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f7281c04cebdd0803e0d0d0dde6de027b7c32e565e45bd687bc4f08995f0681
Date: Sat, 26 Sep 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790397033
