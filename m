Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F1234C81B
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 14:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763475714; cv=none; b=Na+TaJdA/k/MWjHnvnsAKo7DaSjQUxZ3MCKg/jRzk3YIf5+4+MU3IQlxU/RGnNP0OGrfrsUTpck1ivhKur/h/afhgc0UR/UdtTBuTFWApjatqnEShTI7ANjGGToiw9XQ7s/xrIOkzkYaq6xtJAIsO0LReTte8KVxluSGlyO00OM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763475714; c=relaxed/simple;
	bh=VHo/z/ph6pEJ1dAojmKKQmtkryQz8aO9nRhKq87DGqA=;
	h=To:Subject:From:Message-Id:Date; b=fMZ0E+GoM+g/qrZZYukBmP6ItIGW8Fap7NQXLCg20x38Hiy1Wow1a3NmIBfnrlJ8QYea0/xh5n+pFtO56Qyq7x2wFMZ+e00a2DNeg+zHYt2Dat+xRGd9JcSwv9NFSGc4H10fUrBUZu9g3x/GNJf6xVAvnkokqzt+Den4QwYq0JM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EAgbydxE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EAgbydxE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26E7C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 14:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763475713;
	bh=VHo/z/ph6pEJ1dAojmKKQmtkryQz8aO9nRhKq87DGqA=;
	h=To:Subject:From:Date:From;
	b=EAgbydxEnho0Qhzk3Umd1PiDRZlUEnu3kZ2wJJC0g7ul3Czxr7w4hp+EtG4rkOLC4
	 2F0YVn76edmdnEKbEDTtqca/392Xopv7+2Ku0fQq9l8aZBX9S9OgDjhPjgrMbn1LTS
	 4eKIPPkmj0v1CGbciOH1NFQ0Tp98CYzYw4067JV0jzrFZ1X86/CFxGDDmNFf9UNsg4
	 Zgl9K4gX6Kue7H0NcOf1tRELeuR1r6Fc1EAEfkc5UUxsYIMmjqc0xHQP7UCzey7W4p
	 e9mvHzqvDkW/fmcGFT5Y7O18qcQpPeyEiOSzxNdLvMaxq1OmEdRF/AxEH0bqLYmJxb
	 vtJnkhysxNmXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902E5CEDD97
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 14:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176347571358.5961.2873088001353061653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54d6f44799c3ffb635d638d590114e3ff65c7f359c9f89c877f22d0750f9fe01
Date: Tue, 18 Nov 2025 14:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763475713
