Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CAC3469F6
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 07:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769151834; cv=none; b=L0kNZLmBdt4B2yCUgTc0uWQT/63K6yjbBhV6qk1SNjAKP09godzBEuaJMhnSB9HRR5sXUlBTj5dbFblgRMWPosU6OP8m9EG9EsXqb+rQ4xDoz3emyV/UIFxSCM3RvgTjTMuDwGBysbPyyFTIevnW5Ce1Ttj6R7QZuLFvv7OqQrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769151834; c=relaxed/simple;
	bh=jMJ6RQ0yX3+0uPn9K0cAxCpwAFr7j8RvPTDpfft3v7M=;
	h=To:Subject:From:Message-Id:Date; b=O11mho7RGuP/FQhe8lIPlc+B4lvL3/iaZ5FLcXA8R79lcvuF6muvll9DyS8Tyt5hPQ1uFm9oNntUstrWmEyCPV4S8Ubzv/tQYxrLx5bjcWwwYbLh89JghKvbs2xVo/9Wgj4UgvPZyjYX1o6QEw8WknitMVkPMijYWsrfA8pkjjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZir+gCb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZir+gCb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA7D6C19422
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769151833;
	bh=jMJ6RQ0yX3+0uPn9K0cAxCpwAFr7j8RvPTDpfft3v7M=;
	h=To:Subject:From:Date:From;
	b=aZir+gCbY9tm2e6pbTFSJEGuPg8eT1fZtF1EHfhZpoKqG+ZZESprM62bg2pIwSbpY
	 0lU8g6kezM+UFjdoPfiCfk2kGpZiLbXSWCCd7xmRPD19O8ELfQWgjLGY4g0u0/8P5Z
	 v63aqq+yeTalbhy8CShMorZGbbRkQm8pMdcIVyZdyGsCjE2kLjE9pM7WTguL4h8ent
	 ip9jaHSdMKRNTjn6GLEYGnWEINwZXYRvlBD2T41hd6YEbsJNdphrbGA/HxKJjIMein
	 cO83MEbK9rpHz6TXXUdg8L7YcNXqtdVefrizJYB7Sm5EdfGthXPkoXOY2SXxl5tEES
	 RM3RgK5HntobQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A842BD6CFDC
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176915183364.28875.15176792712861442151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dea96fb2f3ccb65d3f9dc03362b1921cb8460944d87c966e1ddc4ba6c489f92
Date: Fri, 23 Jan 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769151833
