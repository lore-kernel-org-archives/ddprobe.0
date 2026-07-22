Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34255439351
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 09:18:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784711916; cv=none; b=M1OAFGOiOVlF1EuTqEZcUZpCdoZJzhaYRYpziRutm9/faH0+AC/KbIBsb/srVgKdGnpuU72+QV093A4OhEzkQRkZz6IEXjmg5+LzX7wG9zXnq4k50vSQdTyPMuyXXWV/eZShcuYoeXukQJ38hU8PVFnZY9j7LhuEE0briAhK254=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784711916; c=relaxed/simple;
	bh=m3Nk+aFy+ElqQQognIP7nulrkkfDzG8cA48KpUclEAY=;
	h=To:Subject:From:Message-Id:Date; b=fNiqj9GCODFrqUbjiGFUka5d7ea9i1MDWOiLe3Yos9uOX+TRUexF3+k2XfWZ75jLMmxv2qp3vMuiX9oKo6tXLvgZr0n0bdfZ/txyZj0VF98SeA8Ylp039+UmVqPGyiUp97wVO20FH4MA1KANvvCtztTCEXBFcjZKb6QBVofkaDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JDfmTYbS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JDfmTYbS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2AC3AC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 09:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784711914;
	bh=m3Nk+aFy+ElqQQognIP7nulrkkfDzG8cA48KpUclEAY=;
	h=To:Subject:From:Date:From;
	b=JDfmTYbS9vRehmDKO/rihXcpsaKcxDrHCPKFEJCBLKMLUUr45Z2Qo4idtaKVVpXg/
	 jua5e70/oYOKW1hGMaGhIiZZJDJnk7BkDUcJyLZUfaJx9hudbCKrjtzzCmK6WvEEeT
	 6pofmQ2MaYPFzFhZ5qMnQaZTrpTRIsb7FVx1IL+PhzWzzvAIuNdgvj3SpeToUIFyOe
	 kh8ybGr1l7eSbCRf82l/74d9ACSUqOKy9DU8Q5fBgImht501pTODIqNBL1j0+EFht3
	 VaZtGlCCsf8G7ibJjJqicD79sKwBu8wOUAIHts5X/gSYIgoMGd2M6Mpo2mlzmNb6LW
	 tQ/4HU2x6WPRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDB55C44539
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 09:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178471191389.30537.1248088561081172237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9acb0a6f683f9f3a8d78446ac53ce796065b38a6d1028c831bec6c4947b6882
Date: Wed, 22 Jul 2026 09:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784711913
