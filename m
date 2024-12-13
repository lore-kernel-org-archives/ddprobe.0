Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27EBD1DE3C4
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734090354; cv=none; b=O28lohYm4E6JN3DA4aIe/6jncheDVRl6P5ngJetDYS5mGxvvQMrq7WUgGTAFeJr1/fJJ3jRGZj6r57zkaNkoXW5Fo3PEjKgPSBgLks6LoaIIxijky2JCt/KtYIiFvP+FYn677pYvfVx1+nfggmWKbKGzns+woj1zTqJJMpefLlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734090354; c=relaxed/simple;
	bh=h2IaUxS6ZcTKR3aJzHidTO84N9oZEEBm9JqxoooI9/8=;
	h=To:Subject:From:Message-Id:Date; b=o8nU+LWrDW251PC843xevoOZY089cyxi+eQkfAyzUcZHw8+iuJlF2eg3XCBcH5xbuDbCn3A5+twQPIvuPaxNtwSwols1cQ1hCrMHLkMWX+nnuUQ/vSca23NjTEZkNbyzSmSSv0LLZW1dUC32V1EOtjpydqpkwsx4PX/17HXSHG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJTwHfG4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJTwHfG4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B95C8C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734090353;
	bh=h2IaUxS6ZcTKR3aJzHidTO84N9oZEEBm9JqxoooI9/8=;
	h=To:Subject:From:Date:From;
	b=dJTwHfG4AyFcaRFU+Dwpjl9Lo5w7S8tETY6NZ6fgVgx03QLLPz/Yx0prK1+857nWn
	 8uWCAaZGNZmRRHcH9iZlNzy1+D2wKiKQKcHHofYRwDom2XDCs/Q/CBY7tqlhGm0GZA
	 jM7v6NgvAXsWFJ/UA8NbwKOtbh7NUkTHtWJOLM1G0Bz0nLel+YYZvC9Z2uSB8n3aJq
	 Hw8yzYNGSKgN0+SNXDymsEtdP0jKp/W2x3a1d9BSSDZR1R9+xIvLJLJqe12KH8tUv3
	 ini9mi4S21Jgfq52kT4uETviRDJF2eCt3P+MISFY5gBziPRbSKoHJe6bAS6PTGNzGG
	 zVK95TXGFQGuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3562E7717D
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173409035365.32575.10758530995732705628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 988a7f3c3917e69046d0ce5b66bfb37340fe2a4089529b7d0390ccffc7236783
Date: Fri, 13 Dec 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734090353
