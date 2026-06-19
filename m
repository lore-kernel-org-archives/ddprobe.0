Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5922A33D4FB
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 21:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781903194; cv=none; b=hn34httqZcHW3Be2lzgZ1NUD5XM6438KsKRRA594nYo8XL1NJMZiPpP2/tpCd/I0/kd4EsFd6Kk9pM7IAhnz+za64k+HsmA1mKoP1JVySH+4XJ6vDv+FsNnIclAl4fuXACyBpj8/tNPoH0SrirzEARSGeygJtEXpIMG3SFNpV8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781903194; c=relaxed/simple;
	bh=gJPjyBiJmYzTNuJokCNdncqHNzgPElXE0m+JNeHzqTY=;
	h=To:Subject:From:Message-Id:Date; b=ATnkq4hQfED5Oxljebtj+ENMR2z4VacFpwVpfxOw+4wW9xUvzFpPti0Vs73Xngg8dxSZsB4KdpS4WD2bihik/Z+3mk94meJfjoNgtMDm/Nqt05OyFq/A4v2yaMK4nRSUDinWF//Eq7ypHqOBlJvFPuC27K84kWZZE76DqiJPw7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tIiUDFwy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tIiUDFwy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D52DDC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 21:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781903193;
	bh=gJPjyBiJmYzTNuJokCNdncqHNzgPElXE0m+JNeHzqTY=;
	h=To:Subject:From:Date:From;
	b=tIiUDFwy936CIvG0s1lAIzQyUSM/QuasEzdQEI0XFR5wCtVR68pOHBm4V7nmStkYT
	 mMA6lpy0pSm+foHtx78ML5+PwkEAsePFUDBo1nh/rf+Z+0NnQN6LC1kk1FgbY1rMdt
	 zhcC6s71Ezdf2EXLp5fJBs/vUu7MoqFEJvd52Tag4UKWAYmoqOIQfd0F1wWPkpGQrG
	 VHRBn5PLHQAnRTI0iLz7Q8i8qsCp4rRxWnZ+ts721UtX4KXBlCFkVckV6+oSFAyCpf
	 CzUZj3eI9E0wS+nzjv4yTu+2jA9Zkp5Mj06f2mLeZLCko082aySkSria9NYre82ObX
	 iNA0JbFETevtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9EF4CD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 21:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178190319372.23218.14749709667413123511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9524d0128f56c71e48f9e628a11890125c54a789545fe6007fc285fef44ffff5
Date: Fri, 19 Jun 2026 21:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781903193
