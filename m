Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB8C175A9B
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 02:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776738454; cv=none; b=UL+Nr4kjfkRxgUXEcW2a9ZTXo0ru0wjZu/rIp/wOni7IE1oC3j9cBKtAca2jkS7xap+zXpFmHxH9RphBRmzh8Sh3xLMRiW8AQTVxr/gBYFUMeVdwBj23y5HsqAIg3WrF8h6m2jxXfHjz1lzjvk8SnZUeJAJbmS9awwdYfMsUH5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776738454; c=relaxed/simple;
	bh=XXCNBJrLhBEP0hRPpPTzjaZNefGGfkXBSIPOMP4J8Es=;
	h=To:Subject:From:Message-Id:Date; b=O/8WpofX2gOzD9xZdDla+0upBgD9i2PxCHUAtAIKsP7HnJIJ7r6w4ZRfygc/RBBYp8NDGvpTxQMMHiadSj9697FOJt0F87vHZV2BZTlPFNkC3BFrYJuAS+zxnL2mdBRGiZklRtMN8qC6LD6n0Wx8epuZp6ZDpZ7Aj2sJU0H4pKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FFGQXgTp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FFGQXgTp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0FF4C19425
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 02:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776738453;
	bh=XXCNBJrLhBEP0hRPpPTzjaZNefGGfkXBSIPOMP4J8Es=;
	h=To:Subject:From:Date:From;
	b=FFGQXgTpy1E9bF2C7jUaxF3lNzk966GNBqfT6YPN1X8RND66ZGETEAcn0k3lLYlye
	 sUYeMIJi5oREQaPZAWMlAI/hsXwSShq6uol6ZRZf1RTjALRIEt++hPF3b4dywhu3Gs
	 E29wo4KYqtEC7zJ/kwVahmGiYgPZK7yNOPyLt5uODXru4+wHwhdIXL5jC1AHkOL9QK
	 xqQnpQrXohFpyWDtCTFLfbkgzudKqVdYcQ4T9DwEKS8IvHLDeCI9x5Z5tcsp56CEmI
	 9+K7cZNPsrNLVPQX9AC54XUBcQdnadIOomDPURTHhKb18TSQVZQcrELeHiuFo0Relf
	 culUKie+PsJUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6B0F5A8A2
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 02:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177673845368.15813.816883962152313897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 635e24d45dfed8ada83b5bfe7081a4cafd0ceb7f3cfa2a1c122534af9de462c3
Date: Tue, 21 Apr 2026 02:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776738453
