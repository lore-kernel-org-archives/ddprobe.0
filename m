Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481EE7D414
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 14:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714401743; cv=none; b=M0009nCYTo9hv/pZ59TxZJN/XrArdUIB1FV5bH25HsD1RHwrEiQmAk8QAj+7bUaVdtLUMoHVFFTMisa+u+i0t+57ii3kJ4EU0hMz51UOQduEGlOhBuII679sziMsmVjg5xjju20S0KPnTS1pDlhWo6RMT1nil83uNo9EYImsyd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714401743; c=relaxed/simple;
	bh=AC9PsL+zkkwvapKkswHJczoo9oJspI6w1dBjC35elX8=;
	h=To:Subject:From:Message-Id:Date; b=oVvb7zjY5eXhUykEodBbR2ZBL5KgjeR+bc8liUGe9Az1NNIxO7ZLxmLWezLX28Hw6HypHKljEZ6wDYhhD1gRYgDljxeJ0FXwYkMTfVlcceWdQu2aTfNUZqqzz/WyM+jC54B5IaHgVLcm0p9+Yq7VWjstgR2pdjtcQH/l4uGLOO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b22XMvjc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b22XMvjc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B7CC113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 14:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714401742;
	bh=AC9PsL+zkkwvapKkswHJczoo9oJspI6w1dBjC35elX8=;
	h=To:Subject:From:Date:From;
	b=b22XMvjcaQLywzoDHNUPJiah/YRGFXj+vKaF7j5ktU5g5+AfKMVfjdJjCN/KK8OGK
	 jky/QPSm1cFYY1N5YAPpyoZRoVpHpvOTxl5YGGjwyC69eu6hhN5sLfJyTvEcnOgWZZ
	 FOpkvILOt272h6hRPjZAkce94/WPgMprZVtzOFgeUW4vh21px4U4ljSu84sDvtdbcb
	 owj7Dp1sb/zKXtMu8g+n3K3YbW3IcvMaAUbPlOUF75zc++gfclMSyKLs2lqgYCJNdZ
	 iW26PYU3N2yXQVgCu2tdMY7lCznHNkX0SVAjKQ52nYMxXiM+YqNQurdzdPqRMLgDg4
	 f6E+0yFw6/RkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5690C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 14:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171440174279.27617.1546000392960209690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02b0843e34a8e3fa7fb4cf0ce70b9458b9790482c804dcc43eec3e90f0bf7d68
Date: Mon, 29 Apr 2024 14:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714401742
