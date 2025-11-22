Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219FF8488
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 13:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763817114; cv=none; b=OjdufwniDT5aN4srWgE/j6vD9a+djzzXb57zgwiQdg7ifZFqfDLhkJANno55p8ftGIjFxMHRMsfoO4LTbHEQIGZELku2scOBPq1OwYBCtu1ZqhwjOd4Rjxcw+s6f4PhwFtOFf6/vqvnRSMyZgssEEe31DlzQBmT5Kyt1K01IVM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763817114; c=relaxed/simple;
	bh=DoBwDtB6dTrB2OoWfboKY6fDjpoLP/LnlHLjXIFpSRE=;
	h=To:Subject:From:Message-Id:Date; b=TCDwK7lfwjUg/NmUr3Qw391Hn7FATOojEGuUf7U4btg/NvbcejoE8fmEQcVvBDV57us8zE/C+OxpocjH165Uynj2xSo5HGVM4SxXB2oonq+i0RZjvqJL1Z8f6NyCuncEEeCn67LITdv7y5NLZs/BxdxzZJM7APGe1XpHvJvFdMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qMJeghOW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qMJeghOW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3545C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 13:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763817113;
	bh=DoBwDtB6dTrB2OoWfboKY6fDjpoLP/LnlHLjXIFpSRE=;
	h=To:Subject:From:Date:From;
	b=qMJeghOWTm2OfPgrNIn4lAXyq0GzD9nyyLbpPvfSuqxEiLvibuksE4Dl4+LD4eQEA
	 h1oiP3HAWj0SbZmtmJyprnaqLAMqlvNrcz3D+MbifnY7dw6bXcXMk50z8mwcxQDtd3
	 PAUOqduTvH9XafqhNyM/3UdirIt/PbGXFzPbnARgs+mQjcVsc57fSH5y6S6rjjS3fM
	 S/3/NQm4GxxWBJ0MserJ/HPzVmtzj9F0ZrzuHE+09C+brH7ld5fDEFVr0XLN1H+Eym
	 1vjLEUJjqLVy7wpIGGAfauFoaRLtD1r7tvVvWy/5zNXahGgM6cnJOCOsqZ5BtgMHOt
	 y76gWzj7H677w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AA6CFC536
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 13:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176381711358.19321.15217710585947832059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edf9e3cffd0112288126929247fca278d8b67d4ec4a7dfc48e9fc23f4a53999c
Date: Sat, 22 Nov 2025 13:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763817113
