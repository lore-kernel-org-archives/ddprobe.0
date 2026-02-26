Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C2B6332618
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 18:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772129694; cv=none; b=Fi0Ree47uulTlCGisJ1UTWgqrhJGYaXYfVcaX9VUiHzvgW3V/hYgdA19FXGHY77Wo3Jp/szmLmzs9ytiMv1xB7c0X6p3vcgxZzGdPRWL2LNN4olPgbMIkQ8XcysTxZtfiEJkKwmUww9j2AW+O5i8+iCJhuoZUSDNG2aUCe8U54Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772129694; c=relaxed/simple;
	bh=NUWejGsF4C9K0jFPFleZK+UU36q9oal9YiKQuY5ZSh4=;
	h=To:Subject:From:Message-Id:Date; b=EkY/3R9hgB8pz/u4/iOMSSmxm6trQicl2UsLgXMBmv/nCzcftDJKB6bIki87DY1gmz99FEJYs6uz3ztbHNo6zAakwgBtuRTYUPiTJlRLZ15iFTeCXRsl78D87vd8dLjPmthkSE8a7msjoVGtuVibxz5wZm+Y7msdJ8A2a0rGMJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+ZZeCll; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+ZZeCll"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA063C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772129693;
	bh=NUWejGsF4C9K0jFPFleZK+UU36q9oal9YiKQuY5ZSh4=;
	h=To:Subject:From:Date:From;
	b=U+ZZeCllvmFj2hXgeHybWBNT3ucB44VEa1+lzaOaEtXpyCztk4b1GCZk9Kcb6sheM
	 pD18v/4V3tX1BBeFj+WGS1oqIKFG5z6racQZEbDKF6tR4gCHvuEy5vpOxioZYCz+ed
	 00Fv4uceQfg2CDRsWZxWGW1+cY6n3G393ToyackmA09GgF/JdySwypLt/b7FwI3mGB
	 Uj16U0YsOlZaoaCOsyKqaKzVQOyjipocLJyPp2bIO+18Uwkpi94LvuTRgb40XW3zJ5
	 bTwWU7PsUKuYjLTRW3C1NNezhUUUAdvRKvFVntfCbNcsB22ccT/+NlFI44ZpibneVt
	 WyI8/6lzwH8GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA980FD8FF1
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177212969373.10619.12629167107027335979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04076ab93516c925bb218b96cb2766af4f97f2b397acd23f0023d6126a43ad16
Date: Thu, 26 Feb 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772129693
