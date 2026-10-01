Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A3414AD4AC
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790898634; cv=none; b=AIlcW5L90b2iBjfCwwMliSCBudFUBm/Zm6WpU6sqVNoN/8+6VwOM1NFvB9mXlf/niaJJUMcbUIOjMGcVavrF5NEDfDCqUPICiYlZPfvm/4FtAAqxJi2nEfKLPgFqbi938voJj6M4sDER2KypvoUfsOSO3s1BS97TjR8POP1u6X8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790898634; c=relaxed/simple;
	bh=YBWK7ZI3wLDr33bP/Xvu7hlq05P5aoUQy20SGQ096ig=;
	h=To:Subject:From:Message-Id:Date; b=qayQwnh+6/MgrxdrFSg9OSjvI9wgCDo9x4swtadwnm/M4GAgpU2udRLmjAZL3OtlfrrOLkxESxHzCEzI8fpgdB5PDXZlThisC5N9DsDm7rGmN+IXWWKtBveIpNiGSQLWaZfJqevQLl6pgciwNoR08Omvisjw/Bs96DvT/XcsFGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJQIQ6hs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJQIQ6hs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB04C4AF12
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790898633;
	bh=YBWK7ZI3wLDr33bP/Xvu7hlq05P5aoUQy20SGQ096ig=;
	h=To:Subject:From:Date:From;
	b=BJQIQ6hsIWrReGemrm7J/tZnZrCb8uwXMVWIKx0QJv8s7a84SYuNb+uQKsmy7FPk4
	 7TqYqeS8sGD0q26jTNnwLzII3QIBB80N1u+qoDDkyDZ/anLp5vWCj+v5RW5gQ2BwEv
	 AM4ZnPjk0shAvMgI2V1cHDFEZQu0CZJ3VW9LtgPUsHmn1TAyVB48ZusWwBzB/kXW/v
	 18fR7F6UDVNcQvis9mMWm/pmRfhxBWBI71U8CwLAIIpVaFBY+CT9gEKLXZ4bU8cUs+
	 UY+yCyAi09HdWW8owKsgkJHO54Grm/NQNFDXrfexkM7hfjS6TmIg37wQe62Ip3RIGR
	 xovjLQ54kPJyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5AFCA5FD4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179089863369.11356.17042529318103693002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c1d46ddbe0482ea10c063e3870eeae3851ede9ef6caa5a533375e79dfe84ca3
Date: Thu, 01 Oct 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790898633
