Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AAEBE4A
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751100594; cv=none; b=bR4eg81v3udrX7O0vj68Ys1ueJueMA28n42P15zTTKq4F1zwCsZSdpH8+rFBfWdG9sgiTpU3UU8g4JPvplK9kCPBFoH2RqMgp/i/ei8FcrmqNC6Xkfd+nuRi9T33TsHMDm5GomLcyPWuRol+Nijcw2kZRaS6MktMgBPNLHDCM2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751100594; c=relaxed/simple;
	bh=ckc5sCrrETfvVBA3i1wgRfuFVEznBcfY/qjyUd2qEZg=;
	h=To:Subject:From:Message-Id:Date; b=TiG3QHD3qJau1caGm89dwhDSX/QqfEqpLGAR2Rq0Bs9mXCnTqeubCKWg80u7su6Aj8eJKYz4jSzXGIxKul4cJRPTWKGnSHYS3NkJIT3LyYVpYIG33SvPbM91q7ooVEtQoZe0bkDKmcucEPeTdu+fWYcf7xYt44alr2TFkl8Ipag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=adhO0F1u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="adhO0F1u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15A2C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751100593;
	bh=ckc5sCrrETfvVBA3i1wgRfuFVEznBcfY/qjyUd2qEZg=;
	h=To:Subject:From:Date:From;
	b=adhO0F1uEJYXWj38byctolN+fT66t8fYd1+4/2Cb5H47LEHdEkl/4cVEjIsafJY2d
	 aEOkExYF+ADpQ8Teak2I4DLUZV4lqKT/LRZ+Tro1hAW/mSSUh0PLKOtbXgCIHB8V6j
	 /Jal9AkdL3w71y+fkTchnnF1zGJcR11khXRck7KcLJ1sBNwi8v53Dyllu/B8PAOqPD
	 l+kLB2P1h09u7VvGXhKohuCU9WWbYsH3JsrwZUXu9jrbsM9ZdFgISfvQwkSgDHmxTP
	 t1s70jEYuId0EkHq8m9QvkYAYlBw8F18Sj3+LRFbxGmckI6a/2U/6WSHFdoNCyE6rY
	 RoIEhCcUyqKLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C5EC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175110059358.10082.7009465480614559283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02ca9244be9268f9ab7763b4304e2bafafd12dd451c833c055c533aa9e7b29af
Date: Sat, 28 Jun 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751100593
