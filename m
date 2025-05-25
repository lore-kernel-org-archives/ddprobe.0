Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB112770B
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748164794; cv=none; b=Slnt0VPvWTzlyKHGaS/MouJG4rElv4kjEcnLiFOASUiopHrIoF6RDHiwZ5J1nSIrydy8WxvrsSYOEWSoIfOsZkR/cdi2ljHmygcpIUKXOfRtMJfxw9x5lmQ2Dv0yrxXKJeEWJpU5YwBd/HcIlO0dEZrUXN/Wv/g6LdVj67IeX+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748164794; c=relaxed/simple;
	bh=nd0RTxKvZwK0gtP95D/jNqLvlcHcWiNOUQLWz3EcSGM=;
	h=To:Subject:From:Message-Id:Date; b=ZVbeFMx9Gy6qGOPmA3fdA+nYVf/nCbAXq2G6Ma8I4860Ps+/CTd/vikv+4eGy+4eOODV0oAlp0cW0wiW87E0qw2D8jfEAHFe+zuJPW7Q8LS+zIj+NbhEnEeNyNK0t9uySya2G9NawGt/lbeukuq3L1PMY5i4LNogZLto8E+v4L8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qvSwpojX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qvSwpojX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10E0C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748164793;
	bh=nd0RTxKvZwK0gtP95D/jNqLvlcHcWiNOUQLWz3EcSGM=;
	h=To:Subject:From:Date:From;
	b=qvSwpojXGbWdgy7IsWAJTF1hYFnMrTQzTOOEgybe9Xn57GLrRv7pUsHzl377GN0YK
	 A+zIlbuAtqdqUgppQ/GXgZqri4aKBmFO5wNU8ZNFNv24HZYHuhsgQ7Msfnf7LQh5lL
	 fShQFL63vpwSe6oN0SayXARtYdrlstlBaeNxSqllUaKrRBLCB74Xe6F1hz4MGenv7u
	 ThQdLU0nCvXktKJ8B1JFy+ZcD73/Q7iWInijzrjaai2Gd+PM+QuzYPeFo+BeHLzUcX
	 Qp4W3BV1xzTXiHXtksWepmNEzleEUWxi5kj/Q5pyp4L779NB5/w2h8DMYcuJrTE4cW
	 WeEClJFqqtdmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED33C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174816479357.22305.11446366406997630759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccf7b2ef8c455dd815d977bfcadbd08407a2b3a02be570695ed94b28d1aa14f4
Date: Sun, 25 May 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748164793
