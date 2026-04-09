Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2CB83DF006
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 15:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775748453; cv=none; b=JOMphLp4zV5hOY3Es6JR7EUAq1DmuG/sdTBQ61kdjtw9knQ89hutmV8Mx9MInH5vpUZR+XEBwiJk+IXDka72kPzySPAAdFUV42Gah3VIDU0j3MGH3wU+Dxq/qN6KgsaNJbEEIoXGKtOHrqhHDfrtxG4P0Zn/J6rLLgeVqM4+++k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775748453; c=relaxed/simple;
	bh=ZKtYAQGPRWOxrzl9+1dcVeZmcpu8h5GgQT6fwniurd0=;
	h=To:Subject:From:Message-Id:Date; b=fkpC8o2TvVBjNB5y3q9UGQpSfqR+Rw6SWVu15rc9jvgrYHZfG0FmN+UvGqnG2XaBQjDnBy2EPIdi5UqSM8ffi0Ujxp+6UCO3KxbH50hkjJx5vja+VlG9dNeX+1uLmY86ICuVfmlehYKLhNYfkOzg4cAF0uZ7xsd2rUI6KoNpIvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LP7IcnCO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LP7IcnCO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E92C19424
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775748453;
	bh=ZKtYAQGPRWOxrzl9+1dcVeZmcpu8h5GgQT6fwniurd0=;
	h=To:Subject:From:Date:From;
	b=LP7IcnCOseVPvMlsas4oP/JEScsIVTgPjEqFvAqNbYDfnUnYeJWg0yFrnGsXGdFKe
	 3+hCzYVWOF/jenuRtZYbpZ1zuX5DcEmhaUa6+7T4ZC1vaMcB3XVOGrzom4n1uJfVjp
	 MT2FW89rSqVbhCzP28Mx5e1mQt0v+PYbnVYURetc8OkjcyPZufnhfKYA1KtksP6gSQ
	 pDHFuKpzI6+HjIl79vF4ajeRcNjVoFS78Lsx5Sj9OIRRbHsBN5NFccjN+za+x1AcEt
	 jf1PCzFyLSXcAOSoF4oUfjuWtQPDC/68FqGqBlg/VIAiXpebY/dbsvHmCCyxhwj3/Y
	 2PivymQDy4h5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE971F31E28
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 15:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177574845370.5411.1608073087864178653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f843ee408a61f75c1583a9b612bd1a92d31945c7b1f0f285c882431fcf9e5b1
Date: Thu, 09 Apr 2026 15:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775748453
