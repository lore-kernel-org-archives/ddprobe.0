Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97B5036B048
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785537034; cv=none; b=nfRIGKoD1UL/mBDmgdb9APQL7PvxN/yYSqP7PP5rJe1dVkEoeYJ/Txa3dYy1X4x9CFcEzR/JXN8Qy4CxhKvRsp24iI9xcEChecfxlbiKCu/AEJEPWz/EOImzNcNMsKXT9ms1ZPvTYkSJ27khvYWmuPK2POwjQ123nZhZFcEwjQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785537034; c=relaxed/simple;
	bh=qICMt7jEMFWg9oNVVu13Zs4p4HgNRbydBTxSco81ZsI=;
	h=To:Subject:From:Message-Id:Date; b=CK48JgYGY2xmNYWknvLqjSEbiZDg93/e0xNGdkumm4cqcDVLxhWv1vH3wCC+hc8wzzJujxZ8jQjcARW7bW59cnpg38ix/JxCD4reV4Ou4ZkC8TNVvKymdFH+ZkZUE5Hui8kDqM1+vdavqAn16KjTKg7XkRLP0h9TAHGX4HVSuz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T4bxYjX7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T4bxYjX7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E01C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785537033;
	bh=qICMt7jEMFWg9oNVVu13Zs4p4HgNRbydBTxSco81ZsI=;
	h=To:Subject:From:Date:From;
	b=T4bxYjX7OGHJiJXs19THkgJFabil22wcH2y2FftpChsTTSKWK5+WCSWiOeXVcQybt
	 uDiu1FdDMGap0FCS9Sm18xGD01qnvRZY4RZhMEwaOC4o0vKUT8FYI6qHcKIrl8CPw7
	 2dTfFA1wGKh1ojSn8FEeKTV/hoiUAgLOi0cCpIGuCc0SYvSt+7PGUs/+9Xf5SXIZu8
	 tcRpBLDQdQU730xqapgOuyFiFgopVPP41dop4grgJpJ0StYMIbNgWfQ5vsjkxXD3Lt
	 NSNTNd0NHjJz6y+gdq7e4Lw8rjo8Sn69i6qR6nYxRqadfjMDr0q7nhl87f5J4VHpI+
	 zMYBZNCPhXJIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AC6C55172
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178553703369.29428.3765438880884601363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fa9e27295ae3f856663374319ea62c11d5a86428389b1b79aaa63dc8b63fed0
Date: Fri, 31 Jul 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785537033
