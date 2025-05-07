Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D70E290DB1
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746660595; cv=none; b=JtMZXnLgVCpClcmlw8puETn+jfetCcfyFRvRdBB7VKmoLpAZ/k8YSLhyvoorcB/TafiJA3olIE0kxgjZ6zNnGqBJV1iP4TgecO5ERsuRP5oEvTUpC0Dvujc2n1U+qp+/rRoL7yB3k3bK7QfKrXoJH5xY9oAxAj7DDXvmFA84vcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746660595; c=relaxed/simple;
	bh=KKWDH9j96jz+fCXpDw9dqF43MJB8Tnh0JUTi6flnoug=;
	h=To:Subject:From:Message-Id:Date; b=UQ/OiXqwIi9+dhGq/duXa7Rs9o9PpSD+/9IatjnLWQDO+nRbbdP/LiXj5hvA1XXfcvYhxhfyaYerO/oMclCRF3ImyfsIO1KlsFVx0yBedXB1JQXju0eCOhpt6cQnDn655RvDEADMMCCXJ50uEuHAikisTMKAWvYR2fdcui7YOwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHXfOY74; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHXfOY74"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0272C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746660593;
	bh=KKWDH9j96jz+fCXpDw9dqF43MJB8Tnh0JUTi6flnoug=;
	h=To:Subject:From:Date:From;
	b=pHXfOY74Ms6hS2Cx2iL62mQLrh/xNSNu3cZ090wcQYiFBu7tTDRC2z2KExJjpfbiE
	 DlMn7AjlMxZmWj5KNfLqHNip7NntO8oVV0BV8X8HqLue4iJmB2AEzhD+D3FjuDIBgo
	 biRulU3o1hSZuyXw5TDypLK940tDRx+MBm8/WjFyDi1B9/Y8/7PNLogCNJbQk5kGEF
	 ZCIFERGxGkWkjwQzwGIhsHuy1sOUT39UBbXyvja+sjHIf74eMSjBoKvG4AowTCX8xw
	 lacqPEi3BibOwXaSkCd6EFwu25t8Xp4DzKeoaDMcSN/kZuikANGiBWWvZMbKPDjwem
	 OYB26MLLuIUlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD71C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174666059359.15401.2422481356965762444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d848488c9821f543bdde18d84ab142a602d5b11d04eb9539def52cafd29be44
Date: Wed, 07 May 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746660593
