Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A711524B8
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 11:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714650743; cv=none; b=XhceV70sHb5ZSCXK9ViA6tL1hR/129TnYRMtL0spR9yAw3e7Q6U2XqPNo4Uw8xgZL+f0P7VVhznz4THEJ37PwYFHVouCxQdYxEwQMfYKQg0XAWuYPFXtYUAHZQYLKRTsz2QTuHYA1yv8ZKzj0f0dCJQPF9gjkv/uREU6W4EcZp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714650743; c=relaxed/simple;
	bh=trJgTUw2JMwShA1w7Q7bbH2ZUk9KSrOgNswXTZp7O+U=;
	h=To:Subject:From:Message-Id:Date; b=pQURzRofeE8HXdEJTuh5z4XwT4XAJywSf4iapK44lZn4b1d8WTeDZsC9QagiV9hSOo1qBU1ZpTieU9TEBdQnTUro5Sep+p9QtCnUVRpBl+6uaTht/3Cot+lSWNXM/DkdWMEH2OLtuyX6o+c+ucWEIAvjNGmYehuq4w7TTbU20Dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHdJolFj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHdJolFj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD095C113CC
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 11:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714650742;
	bh=trJgTUw2JMwShA1w7Q7bbH2ZUk9KSrOgNswXTZp7O+U=;
	h=To:Subject:From:Date:From;
	b=pHdJolFjUMzkBVWWPIrRfT3BaGdtjopB1WNUiQvdg9jKoJdv30YND7o7jkss0EgeA
	 Dc8AOV2wjXm3Zn45rpaNyckV5+Pjm7hFavQT5cJ096Zjxwhh0SLqHmGEX8EfzhzjzH
	 XM2VsS8R/jkQeMptq6D2qAnR81eWgtwFwmZhwaItxEkkyL0igtNsyC4km8gDeGr1Vw
	 /lYMtaFX/MLaJxTiidoFKrpkrqJpDe1aW8ftA+2Kamdvll2kk2SVwwj6Ik60QTvCpx
	 PN/tORjYwITP6a97ER2MTyhEE15OC6JRtfCqoqo3VIQQevDX6Srby4bsdA705adNym
	 MSc+U1GvtDBGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE31DC4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 11:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171465074277.12469.13306119536969687253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eac326e6ac0685139682f8c38c1434ed35f9e085cdd861c66aaf0a8b121f812
Date: Thu, 02 May 2024 11:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714650742
