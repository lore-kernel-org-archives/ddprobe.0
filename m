Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4EC33F394
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 04:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784264314; cv=none; b=eaN5yPNpUgpJic/K5YqFT2T1z/VkY4rOTBbEdCtJQ7IotEcfYsSIzZRF9vwiIawptXGjHfZ6l909TF+UigHj0U+dc54vawFycbnLpI9Q0JmPp5ALTWFdR0wxZyDjwdGF9656RnG04KqXAeM7ZiQSRpWG1hXn0G5uF9BXJGB7KqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784264314; c=relaxed/simple;
	bh=F2uyGKinudUzkv96tvJH/ZMbi8G3EWGdj3G748B52xw=;
	h=To:Subject:From:Message-Id:Date; b=rCu1XXZDlAGhivHc9UUuEP7MIK1jTmgIoYjkL57Rp3qS64ZcnylGxmZYfI9a3OrffSAduYmrSKAcQ6MDKiU5mMy5L6PcptRc6cj3YPs6kkcf8LSVBzcHi7MCTB+SOMoKSGCq2LrFTVxZbXGubp8o0oZD9v4c789C5fQ+jLG3Bqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iw0QLT43; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iw0QLT43"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4E1C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 04:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784264313;
	bh=F2uyGKinudUzkv96tvJH/ZMbi8G3EWGdj3G748B52xw=;
	h=To:Subject:From:Date:From;
	b=Iw0QLT432fWUcRAOWi2egZfPV2Gq27hq2vtv8d/juznyACwa0u75CrpoZk1MYCkyr
	 CkKxM/Zvov57YSxPxpiyWHFv8Yea93/D5nwl2BvDBGnzLw063qt63bGqPtQ7Xbv8Fz
	 UUX+X+qqEK2HiU7LeZD8Nt2DHvuTPvT4NhpTdZpE381lHAt1xXuwbkIps06HVbXpnc
	 QKJff5SM7b0rwvu4gRx/Ctbm22LEWifK+FgUgKiW++actJaBjVODTK5tezp8QiEP41
	 z0iqeBGXQEn4r5AbgQ8IdFCW7Lnxws/sHEwr+Ht411dXxdz+dPn5gsyr50TC5K/pas
	 A4pnwBr7j2dTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87ABC44507
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 04:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178426431368.19579.10849838644464113082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54aeac6ec260b5f2b940a16f75a25148908e37eb639303dbd2dd3fee59436516
Date: Fri, 17 Jul 2026 04:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784264313
