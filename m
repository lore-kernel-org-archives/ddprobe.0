Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70C4A446CF
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 08:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717488323; cv=none; b=uVOMRnkFBgpb6TL7t3SC3tsKvFvPBtyu/5LHt3A5fnluNOQhwzERZq8j4oDDzdx0YDyo0qHM7graedzWEaizng6V27k7T8suqONhHnZh8cXCtQnj6/RRJVgiv2sN6cj6zrkJSeZm3SmrRrtsvPnlj7dSpbAk60H2sMD8Sq1lbPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717488323; c=relaxed/simple;
	bh=PfM9HdFKJMwFK83ri2gRVJZ2hUTtaJnUujBbXqiQMco=;
	h=To:Subject:From:Message-Id:Date; b=l4lbiHsxCj5hpzlaiEiKcWTrtG860fDUBfeuaF+dCbLip+qqPg4qrwnheNN+cnuvgOQ3sXaOWTQNCkUP1QqC69pCZLrdWLiefBgiVC4xFYHaR/6F9Ddikv1n3rw9ocOc1NFmThtZ3hJacnxJVVwL9AxmSamdUABvrQPzWD1H+pU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GuS20//S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GuS20//S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBAEBC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 08:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717488322;
	bh=PfM9HdFKJMwFK83ri2gRVJZ2hUTtaJnUujBbXqiQMco=;
	h=To:Subject:From:Date:From;
	b=GuS20//SLPfwofhWbY+PGLTAiHhuYJGCYEVQh3H4R5A6vZgySaCWFPRmFpy7lc2S/
	 +K+pvCviZZS8ZDq8SkK2spzgjQP0+NAwCuyheYLcfTyzf4pn7dIU4iSLHPk+Dk+ZN2
	 51T8q6ed6jOc8uLk48BZ1u5iXE6YWHNp4N/2R22TJop1Lu7HjCntAlRtJBPHXR8E0V
	 EzSYpmP8K57x+oh9bgJXnF2IwALFaI+h0npGnZlQHdNf2vA5J/L9XR1y7+5LfXhj+U
	 Y7sdMsfDqAbA4DqQ+ybCEwal768jvGzDGIXQmPGLdrnWO+Gr60zqv80xFvEJYFPsdJ
	 LejoWGuZ0vjBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C95FCC27C52
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 08:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171748832281.25402.14265608003451839789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbc7ff164c69f5ba7d1d6914e678a2b88f126795eb302a592bcceb3dda6277d1
Date: Tue, 04 Jun 2024 08:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717488322
