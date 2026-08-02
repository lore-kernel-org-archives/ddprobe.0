Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D79822ACFA
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785710434; cv=none; b=ri3d5ONDedhlD+eWhpMFuwFT4ATbvLeMwWtZ3F1gXcMTYIDkC9bYBrlxmopJoG4kjqROpjHIFI3CO8+HztW5s6JyVvfVuvaoUz1JiPDXEoXDygFDIyA6jforaVN5b+O1Xpgzg2maSqaWoh6aFutXCAQCt3hBiV+jDUrBEWk8JIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785710434; c=relaxed/simple;
	bh=ddj3kqC4Pypnw20O3Gt0UCZtrjnuQIn4iThiq+cX3To=;
	h=To:Subject:From:Message-Id:Date; b=kpUMQP417JH36CNHP6jY5kZsEtZkK6+AUOMG4C/1MXmwcddf7TkymMBVN2YeGKpdWvGtwSVx57rKkeLId1gvsvQMnuOzET+zyWt/36WMwbscvSnaVouAHvUBkoQiHWHY7vgxU96SbgDoS4ex1hd6zIXKX8Yw4OTe90texAmKVhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sCrG9m3B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sCrG9m3B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE8DC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785710433;
	bh=ddj3kqC4Pypnw20O3Gt0UCZtrjnuQIn4iThiq+cX3To=;
	h=To:Subject:From:Date:From;
	b=sCrG9m3B3zKCBDfHR1l8/Kz1jeZDqgNvVoKBdcYLtyryof272H+utyu8xDcsK3+TH
	 5zuxtz5qFZix8QUtBUuaI1zVbbQkw6aOpGgMkq3CCcqo41r/0+c7PZB0g+EWiU3lEf
	 PATM5lWcSHSi4noi3dhYgZSpVNy+sAgD/ryl4GRG9/e7rWkuwy2YpfI69Hp64Ok17T
	 QluK6g98/cSS4bkQ0uVvW1hM2wbPImxdS96L2VRNadYjyeOr+TyLV63POG6edtnEk5
	 UtpwUJ6ggyxKH9t9ldYmshhlc6lZpr7qbxOJQFmRZLmawNgFVUQQEFGKtO5eKFxGpb
	 4CX0+WUSTd4wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F86C55174
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178571043369.23327.10157723177524525781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 263c9428f01e458f8391081398f95575f00eab615e148193b33cbacf18a048e7
Date: Sun, 02 Aug 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785710433
