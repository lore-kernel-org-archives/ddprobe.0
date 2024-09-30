Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58DBE19DF60
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727726754; cv=none; b=qQOWwp5x5j2qGM3Bs6iVLg6Bvxqv5+oaHEtdNlW5+pEFGn62Yomijj8qRQYYvv3VLcB+hUKTC9XYnkRvmqXXJ0p3RrMZFlHu3GhdNTHfXzofhkvcTY/j9v8Mq3m6uVcuLJjLJXD5eQBvTH9vQQZ6N/0hgREXFkzvM0pMxXWzU6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727726754; c=relaxed/simple;
	bh=yI7sAgvFF8Zw2Exm7p4Q1f3zGckAMw5RoTTSZufhrTU=;
	h=To:Subject:From:Message-Id:Date; b=k2I+OeWoG3J1Ng7TB7oC54FRX/ouqpchFRetZ+LafX4gkU1x5cJC0jvsPug+1Zh12+QTrpybiru2empbWuin8GdHQQ/ikpGZSATGAwCekCJFloH2532z4Mmqy1QFPZ/5/tgyom6vMIlOWTraMbq0YKIcsnlntTWwXRwAWwP85qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXXD8/jX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXXD8/jX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AB3C4CED3
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727726753;
	bh=yI7sAgvFF8Zw2Exm7p4Q1f3zGckAMw5RoTTSZufhrTU=;
	h=To:Subject:From:Date:From;
	b=hXXD8/jXulhYJDREBR50Z94/9lKKm6Ukr5o173OIWGr6TLW8J0mYBrLExr8GE+DHP
	 IsHQaz7kYZgYwwOQprd/53o7uAwY5wqxp6588oGnFVjGT46jvNmJgelKdu7G9N/icr
	 Mr7haE0ouIZ0d0BCYmUY8STZreNaNYfXzR/mMGEtxv+l5u8YzcA/N347GiZ7PnDICi
	 23xjcy5kYleYU/359hyM2z256B1Xi4eVeVpFlgShqC+XvasoxVRIf3FLRypF76PkBM
	 VIlNV0QKQU1hMAPqEFAbJKFcuoXZkW+K2lIwqB6JfOAaOz9hp7fTTFiP4/db7+AQFH
	 IyR6onWH/A2XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981E5CDD1D5
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172772675361.21515.13065598271487936509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8db370e8f1e4b0481e2220a125a5a58cc7284a5f88b1bc771ae0c30c5ad76fd9
Date: Mon, 30 Sep 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727726753
