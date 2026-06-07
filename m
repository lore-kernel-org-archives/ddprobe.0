Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2081B6D1A
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 07:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780818274; cv=none; b=qNFUZU/Vfz4noLBiZkDkgBsKcIfprRO2IvWCOnMXtMJCYpb8D0YsQK/iBmscQ2saTLLu06474AlwFL7/Vb+FjSMByIvs0Rp+goRVPNklNP4ZNx1RkwuXgd2Gc6o5tmF65V26TBk63I/sdBaL6FC3P6oFvxSKWxu/Jt0++iTBoA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780818274; c=relaxed/simple;
	bh=yNYy5IlR6f8yGYmEWidZ+zglkhi93DGE/WKlETk4Vmw=;
	h=To:Subject:From:Message-Id:Date; b=exiB2tmGyzY9QuutttYPpqWHkaoGQ7hVN1E8UxA6g32U/deW1paa4TXL3Eflj8JgnbdySfqhXKu2htYW4D5nfJftw5EmPhXU6cymjwtclXTnUxHyX2/FKAj01A8CVrTSCyEmxY6uj2RCAhLNJNJzcaf8Ob1vPvtE5RkMqH9yoD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KK1heTDb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KK1heTDb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADDEC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 07:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780818273;
	bh=yNYy5IlR6f8yGYmEWidZ+zglkhi93DGE/WKlETk4Vmw=;
	h=To:Subject:From:Date:From;
	b=KK1heTDb0gYM22hvSQgEBOIvCbNE8Bo2mqWmsJ/n+2QdGqTGfBGyKvGqalb/C85e8
	 BnN7nF3lg0RGbK0x/JpYx7ZfA7iy5HsXmpsDAFsqlqklHKVCNBp7jRfEyHTfFtcTMR
	 xYhgQYvwzoX0N2sZ0Fwgvg9fVT5dFv1CVdlz2nOU9pR3EekmSteXazXEurB21nZ+YM
	 rC8yTvQmRvTsPYY7ZDDJAAJrZoQE921hRs1A9zrvRwnfko37qWMnuXSRgxsdzaM5+K
	 lnfhbWW2spGJhrp+Tz32WaTKvkYF+INNhjmjw0ullBoRpbc4w+MoaAqCxhxMioXyTp
	 6okoLOPH5lHDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B085FCD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 07:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178081827368.3438.15705173360030836663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbe47f7252269f8348cb96f8c7667337a543d8f6b36792204965488ef5ecd0f4
Date: Sun, 07 Jun 2026 07:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780818273
