Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6896017C203
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791086434; cv=none; b=ecIbRMDnOvCFJhqxS2rsK08yjr94341XxknYn2dFbFsTRgJpWfzpMrM1dKUQIIFelqEqMz6YJNxqLUD0nMlLLiKNeg6wrwzVieurgpiSHimkZj+iNNTyrymeitJJ+GZMUBipzU6ugVox3mJ/nNSTPF6K7VD93NvJj1r1Zd8LAgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791086434; c=relaxed/simple;
	bh=2moBS5lJbN1vZ4HlOsj1kOBDUq86xOurDiPkmIHm598=;
	h=To:Subject:From:Message-Id:Date; b=k/zH/Xe41HoYdIeu8BLqx1dp7gU4MFrOpyLw8x+RDtyacHDECzTaWWqeVsi5M5tXUsMf/xkKh3DlWs7TxLLY+3+Tg5hJTH977T071D56BEh75BFV8euEHkqYcEUd+JaFIZnBjBg0bmLyMiqvoDfixJOUWOuPKC2pmzTB08tsNtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uPBdTaWi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uPBdTaWi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA64CC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791086433;
	bh=2moBS5lJbN1vZ4HlOsj1kOBDUq86xOurDiPkmIHm598=;
	h=To:Subject:From:Date:From;
	b=uPBdTaWi9HfRQ2EVx+37ZnIOJylmW+nf0c5LCbYb/qlkvN2f77tCbY8am/2ORWGkz
	 Zs/5De6i5nKp7uOfw/FGsaLeT9RRdZL6PEJYuZCqn0g51mSVl55t2iGHCDwj/bbgIA
	 62V5bR1Gh6Ms/nEZRRkoeq/ZU8YngMfr4HJHfQFT274Wgb7yRLoRl6ZmYARGFvtuZ7
	 NE3AspmCgT3NMnz7/XijX81w9eAdCdwDS7fPAY0H+XW9X2W5MtynXwjVaXCfml8lg1
	 SVpbFdx8mBhmGdqxA1SzGyi6bCldOAf1K9tTHlgJzujMr09rI4geEAMHJL0s0s2rxP
	 fag+CG1Tltn2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1112CA5FE4
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179108643369.24770.2770608174402688396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c27883ee5f472d10d9e1b448d968d75d715d3fe4d79f25c33f9512c43529cf0
Date: Sun, 04 Oct 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791086433
