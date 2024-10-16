Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A59A154429
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729045554; cv=none; b=jgcn9FW3AesagFs98PiTA6a9D8RTlDPHUmy9KsanzJ3ksKL9wjFK+AdkpJWmRlbL5MoCJew1rpAOtMIx1ExROG/Fv+itEizI99uNFqGFwxASQjhmNFMk6HVuX8/JkWGGIiK7B68vr8CNL4Hdbo7efa4dhlQAqdeHk08+p4SjSkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729045554; c=relaxed/simple;
	bh=7GzoA8Mr2MnlsCYfCYFnV5lMlVAauLG+KEtJ3ykUMKg=;
	h=To:Subject:From:Message-Id:Date; b=MsLF33n3cI3asWli/brLi9nWp5kx5wIEiPdEH1/iDDB1OWRVj+jnYg/8ELVCIdg0a/MUuosfPbS7XuDKlw/UkqM1g0EvlIutlaHdzfZk/UtXAgf1ccBBfr4ifeb3NO1Rzctm5D7gSkjwD52O2RyZsAfCPY0DXFzYZtjOdi6JzS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LF/KzJ/3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LF/KzJ/3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A4DC4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729045553;
	bh=7GzoA8Mr2MnlsCYfCYFnV5lMlVAauLG+KEtJ3ykUMKg=;
	h=To:Subject:From:Date:From;
	b=LF/KzJ/3Zn71Lanq0C5Vlt1lis0nmOA1aukLrfcLAP22/lrbdB1aR3HTitdX4Hp/z
	 VpnkKWl19izMN0T6TNfrLE1fFBTF145PNJFMH6XyK8kYNwjEuQPumyIr6HH4vLnqEA
	 huYIa1cjzKsnzIfwqs7TocAbMo0zI6SCQYVR/52ON7BdcRHYzSoTvTD8jvBW++zUdq
	 dUvNy8lJvkePQRcSkiWojV3nc2xntMBoGt2xUZb0+ya6yv+DmcxEsNjmS0VJHBso3u
	 YEwaN3S0+mxuwAfZP6CA06LPHvia9wJtErKND+2g9MmBsPPaKhajXZnwN8ePATD4JJ
	 qHiWtEGYjMj/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F842D20691
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172904555357.18195.11756975065368793968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35f991523d7151e273df18f9a1ff9f40686546752b43b573be46c68a7a7a64b4
Date: Wed, 16 Oct 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729045553
