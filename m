Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9728F77
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721430954; cv=none; b=IVTRs5JpDXCdKFW3kmw+BUe2cK9ZJFWrb9LRvFRjmq5qEEBQdb29P1d8Kda9q9FQCY6Zupq7vBkfJtDn+uwFOfBI48AGzywi6x0/Mgr+67beULvBtXSs15BuQJyGfwY41P6glOOQT4tGtGNV0gAUyARi6hHGJuOFEqAYYXmRReI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721430954; c=relaxed/simple;
	bh=n6y5PbyCVMpaKwAGMfizMxzaLI0RhvlHPUUD+Q4BVmc=;
	h=To:Subject:From:Message-Id:Date; b=nT4td/BRx5KkWmKyfWUUNCflBQ2erTMLplPKrHqeJxJTdO44nPha8ziviVXNp0suASbdZcwUfVZEaZXKW3VAH41k+V7+EqX+zsDacrF2JrwhMn1vQC6Lx9K0g2Q9SyYth1Lzx1xaogr7IkT1jE+kN6u3oi1ZTsEq/bD+GkNYdvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rQe0w6fp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rQe0w6fp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88CFC4AF09
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721430953;
	bh=n6y5PbyCVMpaKwAGMfizMxzaLI0RhvlHPUUD+Q4BVmc=;
	h=To:Subject:From:Date:From;
	b=rQe0w6fpw6ExmkETBCjJ6KwUjVVVgWjNvF4u86th3EIFrx5stW0QIQvWWExth4NpL
	 Hi1fRzP5D1VlaDl0F+gFC4XPJHLP2AqDAe03Iy6qVQhNY7ZXg9csTOLy2zQiApgsb6
	 hzKtfC5J4eJMUXlr9e9aF7pc+eegY4E16buDb06nXm4BGP8mRBmyQ3hjADelVkfY3c
	 fhyi/T3/MLdwBtrdu/cxjUgND1FZhRea+WHlLbzDn7vfsyU9nV28htgw+/RqyZK3XN
	 qFusSAl49egBWPPXMMZY+AwTe6czb/+olhZszXcCE2N8sA5VXxgHmK7uEnGj6aGZAA
	 QBdeGNotxlm+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C5EC3DA59
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172143095360.27083.5910807577547063970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e663d714772df4e51b998b6a362cc905fa1e676b71c51d8da7a49f246779229
Date: Fri, 19 Jul 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721430953
