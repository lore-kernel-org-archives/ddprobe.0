Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3489F3806D0
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 16:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780419274; cv=none; b=ATLwOxDlt9pfaAw5uE5SXJBdzi8zDEnZjm3QqDwC51g2XBEzDbqP1OjP+TBgauNnLJYjZkPT+jpIcID83OYFCzx2l1pio0eTpPvj0pvN3SsS2h4O89qWTdmZAqzSoPQUyw0y7XP0TPjhIKI3dEpNxSLyd44LS6U0ojXAYRpaOFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780419274; c=relaxed/simple;
	bh=brwRzW1n3MaHb0F2e6KJd/iH3/H2271WQX4BBxpj62o=;
	h=To:Subject:From:Message-Id:Date; b=G7mvAX82RotkqBNYy7ornVpYfeR/Pk8dWU0TKtULpXOc2YMspPj7rGfCOPQP+W4sbOQk2WDGlyc5zUfjdxAWJn2k+ZpeadxarSXjKYKy7xLtyXb2TceWW7YRlhMvXSB4FPDHeQqwOuvuqVH5EEHCLbXHj9N8N+TY6idr1I9rKqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DpYePIaz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DpYePIaz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6013C2BCC4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 16:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780419273;
	bh=brwRzW1n3MaHb0F2e6KJd/iH3/H2271WQX4BBxpj62o=;
	h=To:Subject:From:Date:From;
	b=DpYePIazWdER+B/Mcmhj0RuuXdmlQDvIdmZmqKou0K9NiDguW8eCwdY6wvS/PYSC+
	 n/iR+IXfKIRHKuHnhIos/CCzKFYmxE+uykCyJ268eCBh7nzoo9Ws1qwrM2W+Gxirry
	 rXYzo5f1TgCkm9YLEjM/eKIK3aTFdFJTV6iOlQoc6E/zt2gN+i04yWOf9qhyatBs4y
	 QCya2qjWvUuTYjnqH3pMIuUvsnVVh/xpIzc3BuhuiAA3mAcn5/WrrvtPAMPW4j0uey
	 Ix8vAunRUhfqyMeg3xqA5Y/4+cl1SbEPIiiNM1cPykgnESplCfsnBQWSmZ3Ym1NtN+
	 GQYKbvRjzCEkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFB1CD6E60
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 16:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178041927369.18749.2508313499842892435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1976d5260a5cd7b1e7ca7732400f77ad372bc7ec0ac42f1c590dc1ceb3acebf
Date: Tue, 02 Jun 2026 16:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780419273
