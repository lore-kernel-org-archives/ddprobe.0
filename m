Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F87818C345
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743048594; cv=none; b=LmbSnPf+5s+Og0UxlU2kkWvUgNmTNORQpAdFCUfKgGsBfzNiuBQyPqbwGlhU2+qEsquIPJnIR22nFgGmBnOiO6642rH5eaMSt7c/c27DE1+s0AtGZdU/bbjqoSyfGOX2UrEYpm7RBu/1Mf+2TwqMn489zRyWB/ZBUWPUthD18NI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743048594; c=relaxed/simple;
	bh=1JgGDuYxMjL8LZA4naYey6UTqnFTokPUzGLWpfxUeuY=;
	h=To:Subject:From:Message-Id:Date; b=UN7RU2pZCRenER1eCFl7XFkhF3tfMA1tj7MlyfpiDYlKL2zYvdfHfr9m9dpjZH6sgpeCJibejexxjgPGGkYiw2RJ1k8MME+DbBLM9yq7Z29k7uNJlNDQZ99Yrjb5bBjs9GkXSKKO+rCPx71MLu6VTDhTjgRHHOq/jGYLFoUdjvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQavBDkM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQavBDkM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBD8C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743048593;
	bh=1JgGDuYxMjL8LZA4naYey6UTqnFTokPUzGLWpfxUeuY=;
	h=To:Subject:From:Date:From;
	b=AQavBDkMMlkIg7y7aCkJy4djxLyX2JSSC/IGW3l/m/J8zhJid8FIMpJceqWo9F7RM
	 QRkcg5dMk4aRySoudN5UU0iyE2ZB6M7HEdjh6G1bi3L2ehVtaRmIg/AAiCXKO31hcH
	 IEY5QrI1mvshKhhYosVd5GDv5ilnw+Rx912yq2BvGwHO8kECpOFpw22jqqv3/+6jsp
	 cioZQiLacOlVa7xIlkqNh9Ocy0NGsPgK7KNaY8AvbIr0S0IzDXtjQvZOM25hEFtJUx
	 XSEIef/KCX3T2OfL99z/rQgqQRzB+Dr7nAKLOiQGUMj3c/xuCTPtXjWimWZVF8jewX
	 eiYrIcmlgmHTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98397C36002
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174304859359.29713.13623913320764563053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63cb14e023fff446df5c3723c1e41dc6a5a2566e1e853a220edd260188ae9be0
Date: Thu, 27 Mar 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743048593
