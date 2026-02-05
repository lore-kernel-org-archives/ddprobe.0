Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0289033A9E7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770301434; cv=none; b=tOeIUNFG+m06y3nQj4XVg1oj5p5Ic6IPCjtSxIlUmgg2oMpHLUCXdv86QkzlDzy8YedTUq4B0VMXIi74gMN3FjaDYG+yFyLUeGebCTu961G+KW2LycHPUEmKqprA7prwdjFuBoXErbwjWDSskzXj9wbvGAyC7hMwi+TLK3xEur8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770301434; c=relaxed/simple;
	bh=JLy3dNiFCOy/nNrRhOrzxVjjh57PF7chthjKEKZl0yE=;
	h=To:Subject:From:Message-Id:Date; b=p29Iqxr0DSOVHI+LPVqHqCF8fquXks1YF3yl3E4kSh6ZBbcuzkDdGWbgTjezZQvpHv/stoRS5VoP5E48YkycP7zezh+6NXKlFUD0XMTI0Bxv2bwqO0uUGMcFrmDV2DnUc4LABq6/aj6+XU4tAyuiYAK/R941JL5nwQ1lu2A/U4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ohXvOjyf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ohXvOjyf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2EBC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770301433;
	bh=JLy3dNiFCOy/nNrRhOrzxVjjh57PF7chthjKEKZl0yE=;
	h=To:Subject:From:Date:From;
	b=ohXvOjyfl6ewDf/O5sP+UcI7daQYmhh7dQkIpQ/rMw4rA0oeJbyM5aUHBUxAM+3G3
	 iNmHo7UkGjEnAQ9h/RiC4YZzqvGz4YAHR8dcHY5LlAPFErDDXM6Ie1oBYqE89hTEfn
	 0BJk01mq9vRR4yBvN342BnrLtEuSqs3c+8+64Ewi+sBNWtJTWYkoCSDhv9FiMlp89P
	 GwwHVbKfERP2CxX0ISlJMapTuNcxD6/qYM72vE0pWJMWFd0euHTzPjvnouz7S1lx+I
	 k9WqNwvA3CeGXuVvJyTo/Xu6Sh3ygLLfQCNPKIFdcaud0FxCn6umpVVfDyUW5yOJXf
	 eZb3SyrZ6VnLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DDDE91265
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177030143358.23740.1125193859299704647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6963b1a61978f6d25dbf4e542718c99e9acf64a8c3cd2250b4505361d188eb3
Date: Thu, 05 Feb 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770301433
