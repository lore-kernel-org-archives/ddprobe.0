Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F24F393DC3
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755811794; cv=none; b=ITq0PxX8KdFnZSN/q/0ZeaU0KI5HM5TcchT34oBJgrXtJWYjiEpgJZ2wEY/C4JG1K7qls1IFIwDDyd0/2BIZYQ1fzufnLFHtHHHuWBOKqCN0JmKJ/rTWr9lCvZcCQEkVEFZW3BhUZq332mtoQS7yFvZhczZdlqc7S6yhKBRzgK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755811794; c=relaxed/simple;
	bh=8QH8ot9T7/VU+p0dSA11aH6OWv0+7MX+uoIwMR1i2nw=;
	h=To:Subject:From:Message-Id:Date; b=uwzpV6+MbmSBO8ohOp2uQ6HNNsaK6hgGSjlvDkilBPi4gA4/q84+zO9U8aBT48ZS08zTZ8aeWdznHjCtLaqdmSB4LcKhvyjgVovhF8YU+wx6QO8QM/RMq3VmNfsfzDXcVKXT+pTgT0LG7B0D6L9+u4EGx2TUk4nfcoh85XEbGMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kmSDIZcA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kmSDIZcA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F06BC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755811793;
	bh=8QH8ot9T7/VU+p0dSA11aH6OWv0+7MX+uoIwMR1i2nw=;
	h=To:Subject:From:Date:From;
	b=kmSDIZcAj6jcDp8mwLkK5w6PlibJOT9nFxnS4Ho7aEYyieBwdoLwqSFs6tMTGs1eO
	 o/H3iD5M31yKSNEBT3CUmj9tTtHAE4Xhzo2W1JvWyuUksRr3l9+61a0PY6n8wNmlir
	 xjQSyJvWaT1KoXWIDh6ukWfIW3RaM7vy4RPtDbPr73pEcnwBYa6DZANRlfK+LiwjI/
	 cswXd1CW2/zZFKluoNImjLLAscAO4LlZ4wYUdhhYsyx5wiLNDbaugUlWBWrcj2EmLW
	 FcbeNC66EjW+ZdzW8Dt6WCvPNUQ65HPLawvhD4q3GSKvq8VcH5HaoU9m9yFXNtwLrO
	 lmA19b84ivlmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900A3CA0EFF
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175581179358.25366.1132198756773086433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76e989e61ef90f0b2c11bf2ac4abb0dbc2a7277a973cc2cb3a36b19ee8a145e5
Date: Thu, 21 Aug 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755811793
