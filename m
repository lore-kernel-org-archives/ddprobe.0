Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1611A29E0F7
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774505094; cv=none; b=dzYs09KtjEkZ5YijYZzNRuBS4bao3hIpvqRO2jRfHuQwo4BUjvM2wpfameWj0EycTkdikeb7oAhl86kgmSHsYmWVHcC135er8HLbWjR533IDE1CnyTQGIXGaZPfysIRjaM12uw0RpCLrzGiyFIAF1nENhfSkVFyqyUkRwGu0TdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774505094; c=relaxed/simple;
	bh=AYHafxTOkSRHnk/cFogu5PPG/ESz3MLksRSty33oYm8=;
	h=To:Subject:From:Message-Id:Date; b=C4cUPvl3ys5Ny5hPXE+xEJwgSOA2PxruGKQPcNYWLxStlrSx2UhF4v+gQNQlmjbdiA0lC7nG+HFuO2I4zQnzlidCuPGe4xUU1xIoELYYJ7P04UlDBX3BNplzoMPj5cGKipTfoPI+OUJ27GIa1KUbKOXcywLdJu2WQgTgwzu3OQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OjtefreB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OjtefreB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACF3C19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774505093;
	bh=AYHafxTOkSRHnk/cFogu5PPG/ESz3MLksRSty33oYm8=;
	h=To:Subject:From:Date:From;
	b=OjtefreBNQ9eWYdB1C68UCd/OVtrEzDvE4qgnulYs3mBeWG9R7Yr/SdWubkbV6Hup
	 evqDOU72rvPd3azS8G37sudgNbHJ7UnEWCnKO2bsqS3Ytljmm1Ettu+vfVDbtd9t5r
	 h8phHUFfSk9jw5WNUHk9U0LGQNIK7hn2HGoz9F45sSLVWVL8kmryNSGIu1peHP2vWT
	 bqEjwM+JWm3zzxJ7C/oeL7eIVTpZMW2LLjOZTzn1E43QaEq0DIWj3ikpBh2brk5JZE
	 X1AO+ki30DMcr/LHzCN0J2x0L7e5vNAl+Qx0vJdAHp9xTm3zPfy3BO8lnsrh7TSkai
	 Fw87rEc8EcXsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97537109E553
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177450509358.8957.1724609505078002331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6e90a5eac6dfb5079667f4b398a969c8eea467121979114a691058eeeacccc4
Date: Thu, 26 Mar 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774505093
