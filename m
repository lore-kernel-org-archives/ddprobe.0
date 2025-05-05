Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 558D5C2C9
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746411594; cv=none; b=BVf3VNLZuU+5Op75v7uGLP2SqleIBLlQOCPL7/yrwEij54Vn4+wZV3/WUsfUyTnGPizGjkTaz+pyUomzHtDN3eDnQJkspSHFMXG3RsbO1VYqiv+ADrjp81+WD60ZBOCiS+tqLW7bLb0Z9TNd48hb3xfqY6Lktkr6cEMGqwLtVWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746411594; c=relaxed/simple;
	bh=VYv5uqvMQhL2U2wZb2FPaWMPx6mR+G6vufSxguck0wY=;
	h=To:Subject:From:Message-Id:Date; b=F+ns7C4/4HH/lZvlKwx8tku5qoh1/39eVxWoZm6rgfJLoSmcoSpyF029Ww8rEYOPuYeKAZ2D3/MEzk3xHNJBqXEX9EQ26z8fYdu8jKZrbX+bhdztwnFAB2QS36WV7q7RBN5B3Ku4ePlF6qbpnSx3TWntplDdJrNZfoRBeLtdKZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJjpKYNC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJjpKYNC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7488C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746411593;
	bh=VYv5uqvMQhL2U2wZb2FPaWMPx6mR+G6vufSxguck0wY=;
	h=To:Subject:From:Date:From;
	b=KJjpKYNCWlxsiguEy0HTraT8bvsNaZM6/9ZhSb91imovssm7kQFCH0EivZASuwdrV
	 9Hlf3FNFGqvYn/RNn4st9LwMQ+4Z8mbraZdDqV1qt58CUtye0K0yDo6UYvinAvYRXX
	 1WKF7bde+M04qbcc5E8+Jc0oCPJ4cthS39iVIrKr5bQhtX832m6SUPvBteRBOFzRu/
	 0rblNd1JbaS48oyibuumcH2bOLS/EGaBwUQ2xGHrfUNG1pAv1h68l5SUwW9ZnIIMaz
	 U9OXbxkNzLxGd6FE6MAtQPv5eo+vrl1NmU5p9Yvf8/z1uP5pZ5ri7fk238Y5An2Rju
	 yc7FihlZ8ZQlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92117C369DC
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174641159357.15781.5657778112220673989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d67686e8daae695f35a97883ea290afb2f9a2e98b8b98077794cd6fc8ced580
Date: Mon, 05 May 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746411593
