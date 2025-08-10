Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17FBB244660
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754845194; cv=none; b=FxHOyxyulgwXhP2e6+U900ArvsXCbP55WSjXOtOWmypsd4MI04fTiN9KSrE1inj9Lm/127mLW9URlEpt4jCtw65SbRlNB0uHTcyYdCPNmeXtnP1APEKBDGaXwMiZTZJLXuTIXOUu/Pkmup/gvbpg5887S4677Xu/0jG7QItXa08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754845194; c=relaxed/simple;
	bh=UYs8PZnJeIf/ws13wIEPB9tBsZX6xiesGBLy3Ri9vws=;
	h=To:Subject:From:Message-Id:Date; b=g+NnhAGHm53dPSjyf6MS2r9XZFQK/N256QKyLCAsC149poTpJy4yZtNROKqSp6xx+cGdiHBYOoyq08OJkK0NKeNj2pFy2B/lHNiiWveFuyxm7B2m+34L4aqLBEtdYeZck8IpggnzdZ9Vf//8/MhYTZaW5NNMW9Xj+VaihHNFOso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mAM3gpgO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mAM3gpgO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0044C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754845193;
	bh=UYs8PZnJeIf/ws13wIEPB9tBsZX6xiesGBLy3Ri9vws=;
	h=To:Subject:From:Date:From;
	b=mAM3gpgOpcnETMLSehifvH/og6a/w2L6iP8vfY91lazmNK2p3tE10aeYw6VCskXmx
	 NDB9X5Ndc9YU7CS1o/vqZL1KZXcC95EZShZ1Ueyw9Tnt1cwzvQN5TKLdDEsLTMBMjD
	 s8w0bJvj7DxnaF0hSIN3G6gNxFYdoQqfJfVoB3AFTTP6TvsMGX7NSapdVe3jkFasZI
	 +m8i4ofNblBz+LwTPcyKnoO0tF/zQBGI/Z4g+mwgvVO8WHLMJCOMFOgtlw3wHgNXab
	 NhkXolPA1nhjgXFib4ZcZbZEU9kXW9S3VGe+qFGT7vYlhBzoTGcMGpbjEzHIkdMSzF
	 FXXYEHu8QUkqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E853C87FCA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175484519357.10502.1690660864443387756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56e385cdfcbb987f1ae6b59e0e08d4a52a9aeb070180e69c46b253c9969cf8bf
Date: Sun, 10 Aug 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754845193
