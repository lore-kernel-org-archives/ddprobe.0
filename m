Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F12B188713
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 00:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778374714; cv=none; b=A9sxGZAHK2Luq2eajMDviDN3st1FAXObyyFD3IBDPM16qZ45pSOFQAHHCDiX1e9QUryBVdqrwekdSWg0BEPW+vmRS8Zv5NbfSe4RUPIWSefKlPX0i2ZtHMPwCW1RmB0TJByksy34zJ2Ix8dzYcdrGqDEuvVN2NM25hryaqyafu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778374714; c=relaxed/simple;
	bh=zXuiYhUhfRdqrnNvGCxXaqGYC9jNpoXn66VMoVIojhk=;
	h=To:Subject:From:Message-Id:Date; b=nn7PvbcAT7WexuEMKVE+aiIXyoPhyrQcXLAY97DRjnsKtlogQlCSgYUbGuarata6gSVjnJ3FOnuHiB4MC+7+Nh1/kb6bCOlDvajUF6Y/n2mfYh0esiuVhF2Z35+oBhuYcMPbtbIe5rvXp8xfBouW9NW5/kj310Z+p32/G4Sj4M8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7vSMdbZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7vSMdbZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5669C2BCB2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 00:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778374713;
	bh=zXuiYhUhfRdqrnNvGCxXaqGYC9jNpoXn66VMoVIojhk=;
	h=To:Subject:From:Date:From;
	b=F7vSMdbZmSfoNAK9Iz3kQzgTSkDN/vD1/1BfbQ7UeJlAq8RSXJzZx68jyJZoJAmdv
	 aDRT0YcvdeeVp9x42EWl7ZmfQXRbV4yvjpkj6aKSBcr/Iaw83f2WwQGqrJ1BeIrlor
	 ycm/FRe0iofS77xZh1jiebW+D2AEPxsdHYG7JCUTmL+zIHZURDV3PxmgUJaeozVU6E
	 yFlrE6d0vob0c3AlzQomU/6UxypKd2JaL/URzf0zdHGhQLCsd83WGWxfF0SKRGuMr6
	 Czd0ciUvsgBzK/1nsdtYNlf1yZX2JcePr0KMmv9k+d67eYwX8z//g9RWlAOXnAt1OE
	 bqzaGWHUvLmlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B26F8CD3447
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 00:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177837471369.3793.1198255987751058314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8dbe6771f51799785ef3de051c1ca7b8ad19d1c28ff47b97ee37458a454e3c0
Date: Sun, 10 May 2026 00:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778374713
