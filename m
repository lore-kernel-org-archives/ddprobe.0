Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2345E1E32CF
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 21:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765143774; cv=none; b=uQxDpt0E32cs7YUuwlPkP0BQHCOuS4vh2olB5SWvdyjAjCooFcNR9TAq9CDSpJC4FCz85fndBUKrGGJxPNmxzVcErwTBN4B8hJHrB6aHMDBTCeqsYqAdGGBR5zfF0VsaG/WjoWBP6OHVHk1LxuZ/zXW7+53iQM28ARagWc4F9E8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765143774; c=relaxed/simple;
	bh=xCKmDqAelZTPeZl5J/Da4oQOZhj3p8AcCf4UomQsmMc=;
	h=To:Subject:From:Message-Id:Date; b=ihS09SNSG7RqEUsvTJdOW+/Hwi17tLfOJC2t6aoRXBUr6xWs5krTE1Ak/IYQZO7nJ/hWVCWcu7p/4LFZwQCSgNYB3S/BEHjyikF1TkOVXHECMuVbKHuyx7DbKYP5LVNORFVD9R029qEP/lv+lAPie88iaEWOCnKAtiriGS+WNIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g3JlA9uS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g3JlA9uS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC29C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 21:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765143773;
	bh=xCKmDqAelZTPeZl5J/Da4oQOZhj3p8AcCf4UomQsmMc=;
	h=To:Subject:From:Date:From;
	b=g3JlA9uSxHWftLGLxPJZdPJbXNtM21QICPEZY84rLvKj5fJDbaCBCOiEpgbRt0HL2
	 Tlb+iy9ApzIEYCyuRfcJ04xb05gZ41eKR3PbWT5N7Ptr3UBuypqbOEfCrEw9tCNfna
	 7FCar8w/0hOLCisKWPtnKviladPnAl9Coqq2JHIQ+QjWCdoHvWuMRoc7sxI1lh/8YV
	 SuL7xkrVTKtkC3+nfWbHTvr5r2vhq0jLs81oEDXKGmgBjijicBqz7+B5ifX6Vfd9bw
	 /CDLXWlkO4aNVGS7J64Xtjixh0QhjrN6KcJRoykB8FrJ76qXGvTifRTob3O3K2N8Ci
	 C6mJboAuVJ4ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E1ED1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 21:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176514377358.7182.5866722547667588235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5358515431e7bf3bc552f61e3e933118b0ff8682a8ff34a7892319dc0c18c450
Date: Sun, 07 Dec 2025 21:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765143773
