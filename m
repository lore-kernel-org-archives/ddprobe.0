Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146A335AC06
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772317494; cv=none; b=aAjv/8XcMjepj+czRg5atvvoyg6j6nR++nmTAOFaxf/Gixtq2BE/IQx2rDI3x/D4fvB0xJJwSJO/DlyZKBalLOo9t6OsYzL0cSTIv87R6N7S0fL9tcMLFxlNfJbcI2Ke9VIhJZPYg8z42Xp8QQeYaB06/3S59AjyC+PRDcE2f9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772317494; c=relaxed/simple;
	bh=c0jZt4hElkFU/QWQVsoQorpYqRaY1lRzrNhx46bb5fw=;
	h=To:Subject:From:Message-Id:Date; b=ckUF8GeMoy49tdB1Am14U+CzDSREAqFs9GOPUUFADmbsPnCFYXN4CPkdekmTITozfc0qO1o9sLsrsqk0xE2sU7pQ4bvD35SSnWk1FEOxE8ByfAOuC/fl2cqXLm9v/X12AfiorFIwsFNP1yjF91q6tjqXOooY58DSow5F71Q+66I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCjxWuSY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCjxWuSY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFA0C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772317493;
	bh=c0jZt4hElkFU/QWQVsoQorpYqRaY1lRzrNhx46bb5fw=;
	h=To:Subject:From:Date:From;
	b=rCjxWuSYBBFd8e+TpvJiV3xPW4JA33GPYpIX3EfE7ReUS4su+SpRsL0qnukONYnjb
	 mmVqSUUPKsg9orGt0DnuyX5PV6WWgO0rgCNsFTe8E8Vn0qZyy5WgEmWZJHjhK8vF9h
	 QbPE2CoUJ/zc+92bXnBvVWxpalSEadcLrqDPywn/64b2kIGUnLc7Ut6qfYZ1oy0NJq
	 6vWFigr5d02X4a2IGDMJYug8Z3GNxcn2LYlDPfo9rD+Lp2dacMHF0wd++5Mj1NoEk3
	 TSq6cFLl6CZP+8s1ODzgrnq3YpJ+8kkt3Ngl2dZy75XYrhxC+Ll5P+YWvLZNsWNoFu
	 WCSSZTCiAi7ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951E5FD0040
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177231749359.28621.5827075344669262756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 799fe61fb14efc8dce71a7d1147d3c5cdcc669de7269e06fb8563a62ed3a7537
Date: Sat, 28 Feb 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772317493
