Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DA54A3E
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734396354; cv=none; b=JCbdy1khVpjkMQ8AP3OLgO4521i8cLpHPCD92f7GWuB+Kd7vLKOzU48iAilXSr210qMad7Jm3QuI9h+vJAh3i6S0poxASZiCWXDA0ojE4zkbOJ7pweenG9EqzApzxzoeEhxDcDYOcvoz2uHGn4hc6CW/3bhVyMde1CuyKUYvEmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734396354; c=relaxed/simple;
	bh=QxFynfgd0gZ6WtXzWUAp+vKmFo1syHh+YGGZjGjWC/o=;
	h=To:Subject:From:Message-Id:Date; b=V4VFa4zet/VdYsBWd/8tMzn2ICs/Es61n2kzDehdAOyomWpDIYPQ3Pi6QYGE8glAaMvT4bpBBCUYDmwfW2xLuxXLTf+qxeSzJs6xK1CuoBAX4/LDH3Z6dmPWzH+2X4asPZlIlOKzP0KxbEPZq+2iXpiAKPU8C9CzW7Au9CVBCIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=coEN9kx4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="coEN9kx4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B646DC4CED0
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734396353;
	bh=QxFynfgd0gZ6WtXzWUAp+vKmFo1syHh+YGGZjGjWC/o=;
	h=To:Subject:From:Date:From;
	b=coEN9kx4dxN6/IimkWryEi4ItKIWZVjNOX11Us6cwIpDe/Tms1MaemyNEMmTqYo6q
	 Ml8l0ziPXNgyNH6G1447LdXGL31UOBIUI3FMCUlX9oaymG/vj1hEonknrnQS6h1wrK
	 4+cep+yrmXy9KQnO03QB7zfvOuNysrmtADUfCA3DyBkHjbpSSugOT2/n3PlNcIfff0
	 UGtVj9UGhY7xs9dlPgf+xjUUrMd7yl35xMZZD3Dhv+pLP7cDm7rTFOt1hd3oTwaGZp
	 CKzVuUfFDP9X0e6S9vL9Ge+T5OBukjZs69Yh8hGYOImHSN9j/HldYCEiM97rf28lqI
	 y+HKCqeLB29lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DCD1E7717F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173439635362.26872.11331193709372850241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdd3f82a420725d664154e26ef1712e6e34ca720b59df0386ea133d499b8b7bb
Date: Tue, 17 Dec 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734396353
