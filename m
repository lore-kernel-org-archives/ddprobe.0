Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65EA87FB
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 22:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717365923; cv=none; b=eJ3U7UVHjga6AlyxT+NL8AvM/89tsGgZ5/gbNBDzyDS/YlgqN44FUwbfhL0K1defjgmbn3DTp5y/uESY6425kK9tOaHUtcwhhPkLpqe/Gr+PYBWoF4KEUO744s0SB0uQQJPUwFKFPVhbE9y2Nt+jwDCZHiDgj9FpQk2F+1FH+R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717365923; c=relaxed/simple;
	bh=w2nGCVkFOCfGSMZ/+Lp7tp1Cx2oGnJ7d7Le/XjSqadY=;
	h=To:Subject:From:Message-Id:Date; b=iEXPf/A1/6nts00lMdoaM56ZkeQkN8F2OZScDDkLdAWeelWCF42AcQx4Vy3IhN11rqrhYJn1equL5ZZgpDdjW2AIBmuzTKeF7BBdqDbFEHqUIl60Zz9UQHPMts/l2O7htIMPO28qdFJODYf56CmE007LOzb/+U4UXZAZOVLuFm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnZK1JKc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnZK1JKc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D83BBC2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 22:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717365922;
	bh=w2nGCVkFOCfGSMZ/+Lp7tp1Cx2oGnJ7d7Le/XjSqadY=;
	h=To:Subject:From:Date:From;
	b=mnZK1JKcEaQbyZ5/k2ZLmD+dLKrqFg2Fx2iwIJUD6uRZIsgeVA72kxiDkD4SMIrGa
	 dJTTm5w6CEATrwoG9d4NEPGmSF+P1upRwmAF2XjFZ5wfFo0WlW+TqzKQeban1wcJwH
	 oR0BQ0vqHevnHff+zKn2a7XUCQ+IkwzsIp0UKH5FE137DhakUUG2BOtXiAJDkUyy+P
	 lEFz4EP6zdehmRsUbcfGgobtp7ElhWB9kQwX1sNXDSTEihUGnnOr00FdKgMus5VjuC
	 R6QoaHcMrRAIs6Ir3bGG1jag2G5Jd2jcPhXCb7Pxb88vQazpe+DKRmoufoYnvAOiMi
	 kdlIER8jPmorA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C13D3C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 22:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171736592277.7497.5551895099133456654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa19a1cd24905a5506337d866c571ecc01d33bdcf36108f6916611b9cff7193c
Date: Sun, 02 Jun 2024 22:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717365922
