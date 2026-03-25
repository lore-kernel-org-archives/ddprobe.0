Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC4161DE894
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774406094; cv=none; b=aqRuRnpaC/J1+nW457ptobxXdZKhMI4XwCjoXhbvQY8MByHwm1/PG84D/Meyk0H3K5wR2p9v3I5RGXMdbPwVsj5zDE6w4dG7MJ53hCiDxE/4P9LtvTfbt9f2J6Vubupr1ot81on0408b0BPAb47mbkKfYvJWCXv/pD8cttkdJvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774406094; c=relaxed/simple;
	bh=koiVqqAlBw8d3u6umgjGi7i1LZZ9BfJMyHBqqmOn0F8=;
	h=To:Subject:From:Message-Id:Date; b=QZhOvxwBw+4glkl6k/4sulUDsLsOr3XXIIC94kQ+64l+ib496ap4rwMmfBJn/ysgG1O6gzwLNIlF2/9JbXIqENFKMiq8BbFPWPXbbfKMd1b0R09qDe6zCiU1mvlhOSKKAdQj6oeNNnMfEfajaSCBvUqwkQJ3P2oGANhsGhkBiJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XLlk9ohQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XLlk9ohQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4614C19424
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774406093;
	bh=koiVqqAlBw8d3u6umgjGi7i1LZZ9BfJMyHBqqmOn0F8=;
	h=To:Subject:From:Date:From;
	b=XLlk9ohQHcLzgTK5iNjk7cuI0yKKtX0GExYOhoSa0+g+f+ZxEq0LJ9mbZytqFL1k0
	 LaXELNN3cxHwWoAp8hNiWldtSkKKqVI6vD9+zL5F4MtHXawYK1SxoLpT8qN/rs5KFp
	 BU/fG/xG9qi4u0hvgKgCaWbAZPo7XzvVB0Rqt2OfKeepUKWJHwUBdulqGPZ0ImsjN0
	 iC3ig0MPAe1sE76nDFv23iUsCCf12huxQag9er7MN+/chA8CJ5pxzVrP1PklYZGcem
	 Mr4bAJ7ndzJ8l9JQZ65A7sJwLjVPP/4XwrF1MXk/FOKFdzoWs/kTGQenVRngxsHZkx
	 NsUBt6zADJsHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D9F103A99E
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177440609358.16558.16404567254947361005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8317257ece0ed6e609a1ae52f8d232cd49c1900d6611728fd82b398a382086ad
Date: Wed, 25 Mar 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774406093
