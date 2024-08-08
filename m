Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DEF156257
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723094754; cv=none; b=P3Ebn0hOzFK60GDdsqGd1Vjh/xCrKXNj5tj9DOcLDYHOBWOKWuNaMLefOSLgifyYlAs6On/3gH0LJ6jtrvis9NGPssDsNh1rPlqb4Zynt3cYRn3UvrsM8pG8cQsYKDIROOvOgrLnbM0CnqTblsZ/LzwhxLmaJl1nmhx0kG6Acc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723094754; c=relaxed/simple;
	bh=N/bk5k2g5EkwP+RfygjJ8xKKrT5lqumHYJdt24fm0G8=;
	h=To:Subject:From:Message-Id:Date; b=C+ztSUaO7NWub6E+KHMCWz5wqDMpzAGoCqoBC4DCm+Qxow0UPr9JkU/d7k18kLaD2Es6MrB8w7HmCIlyIzBj9mKxmq0BPDSEZwhIekuOr6wSLFy3Wid5qkM2x3CjaxQogcAN5RVbUlIOSrrZOUueozU70GEm1Q8LN5U80YRn2mQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZiyJS/p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZiyJS/p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5741C32782
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723094753;
	bh=N/bk5k2g5EkwP+RfygjJ8xKKrT5lqumHYJdt24fm0G8=;
	h=To:Subject:From:Date:From;
	b=CZiyJS/p+pREpocTqwdJAbowsIg5CBnwKnYwWrXvgBOLUgk/ulSxkYziq/B64OlzL
	 1c8x14JFPgq+pnWlXMn+L+6BcQqSyp4tLP2DTCacAle497jbx1NJVya7G9S2FpaIvZ
	 OPmGA+FAaUtVTjpRhQQPA6N5/KixL/JvD0IJ0F+sW36Pt2+VGfaGh5LrYUSQbH4aS2
	 Qk0EqytCPR6nPoEtrPVuK3Qug0fWKPIO7VzWxuBEwBVGkTIwIKldCd0vXG/AyZjdPv
	 jkuCR8RmDPNq+B7iH+pi3H8o+IZ9BqgdAnoLsiVs2qCVDd1YN0HC+vVuqbXQbYCZlc
	 Rbrqy3NPp1yAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95214C3DA4A
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172309475360.570.4375473788322171523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73494e032200cfa1d0f1bc0e9dd473ead7c8bbfca66b5c46a9f2b38347e54925
Date: Thu, 08 Aug 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723094753
