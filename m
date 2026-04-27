Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390D84502F
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 00:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777251454; cv=none; b=JkyKHUOkVKI5QSVGbhHid/96wqQKo43OTmHsJA3+kT834ygtIHl+RZ9nMSx3Zu9S9E+v1ocEVH2skpnfJvoMCEw0Pp4aARUzQIvuAggf7UdAmOmS41+WiK7zC5NN9wGBIdemsX4GfStRcFxpfbaob3hvNdi5Jrd9G+mzzfnNF30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777251454; c=relaxed/simple;
	bh=ZeK6moX101wem2qlbPAixX9u1qbHlrP6MGfpdscSaSc=;
	h=To:Subject:From:Message-Id:Date; b=Baza7MQ7iG12wn+S7ryorYe6G2Ir9rDO9Jvf+mVnW8u8A8hfyAXTNltbU5lisGxm1kBz12YVuNRuhUMF7KLje5R88VA6YM5BwPJ2XdwRMNxLPqmsphKXncOv8ju2HIFOkDNtTOd+BAO9ZuNv9fTzIkiIOcaDKp/CTGDRZooqyF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WnahTscg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WnahTscg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B780BC2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 00:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777251453;
	bh=ZeK6moX101wem2qlbPAixX9u1qbHlrP6MGfpdscSaSc=;
	h=To:Subject:From:Date:From;
	b=WnahTscg5714D39X5mzXLf/PTI9lx6l/Tubya9LHtTFIVg+Xk0Av6mwh533C5BKtT
	 JscCB2FnMGz3Zs1yjQ8I3ZagloJvAT3zXe12XkH/i7hDiNbvEUNk8U4iiz1EUA6CeJ
	 p93cuUys2yiTpbSiE6qmewI/wvxcNdkK6FifvD8fFbHcqmSEi9OsvlNB+N4gFMcClP
	 E3b9Gi/l8qKm0TKiSHScJJ3BMukT2rGpbDoNhsHjbBzzWD+HXepW8l1kBbLWMhXKuR
	 7E5ljpB7cbBHT2wpyBfQNsipl5mjUnYJG3Lm9noQ8IOwDXqBKi2k9+3yFcDAk1Je10
	 nG1bWi/Na2xLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9234FF8850
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 00:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177725145368.11084.16062342403510472279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52019e0e4399462e6cf2a2ecd71cf7722d56b9c2424d02397fe858adf8e85a0e
Date: Mon, 27 Apr 2026 00:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777251453
