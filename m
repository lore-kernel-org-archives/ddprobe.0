Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCAE34E766
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 08:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784623114; cv=none; b=XvIIootM/9LoT/12+jw6i1r5F8dP0vHx3CgBb08WvBgl2Jsd/YXBCXN1ZeY3gdGBMIWEbDDK1SsrUv0ksQ38k3i8XgW89+/3HK4lcCYJ/eHNbv9hTHXupTN/dXWe/Dt5AVhYfy6reKDQhnZNyRXYH6gualij2dGpgS+DyRJXdnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784623114; c=relaxed/simple;
	bh=2CybvvO01osoGyyxVoYRcREGnePG1bRgsmyADdpl02Y=;
	h=To:Subject:From:Message-Id:Date; b=PoTr34EZRgJdfxlN5U3SKC+3HazqLTJONPhIirzdr6duDCr0azGAA8F/mtfV7Ix1UkuCONZ7x/Rsyxh+YykWu/AmF8j486i+AGCoVEtcSMlHDUg0jYEKgkGZBXhHVh4JKq5oCyypDvX8P186DCoGkHcLoO0TpjQnuyBxOuFlWOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FE4Q6umC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FE4Q6umC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0694C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 08:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784623113;
	bh=2CybvvO01osoGyyxVoYRcREGnePG1bRgsmyADdpl02Y=;
	h=To:Subject:From:Date:From;
	b=FE4Q6umCWGe1uiPRt163+6M20cRUaS2HF7GKR/DiZOe8YCLmAstrOrg9blGJFL5IM
	 P3RPxeJJIzruw41F9v5TX2ibJVHupRVddSKhdSytdJ7RkV9IJLnl1uJggOkSmKMEud
	 bXj5MF5FBaI3/cGccePuKPmY8lfWjIqMRYf/PPkJhGoHZVMrCD5/w2IPL8Mr/f6l8z
	 P+uxLUNRb+5oMkxOz5PBMKGeMDU/LV992wSP+LSNDdPTy7oC5OPUXWKUjEg5BDsXhc
	 MDLQNXPUz642CAhiy8rI83Yy5ItHSU0qVurQ2XG2rbM0HfF+gT80ERa5uHpbDvzHW6
	 KMlGw8geHE5hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC235C44529
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 08:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178462311369.5597.9272419008359960799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e509305706c4c1686dc9e9a058b2d38773e8bc59e0f14ac01320252ee203ba7
Date: Tue, 21 Jul 2026 08:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784623113
