Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531CA39ACC
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732920354; cv=none; b=ja9UiMxG4MHW7LGMKsgFDyfBnZSZSscW+m1MGMXCn1obrF2jVxZldgLA6/AG4jT+FK8/rp8fLw4X43M89TVaSKJ52fXGh4Iy25efXzZdQuqa/UymjIJvdx4ZL6+FyouZQdotFDz4bqKg68DVv8ou08dZ+d9xhNWk/zN3WfUq9hc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732920354; c=relaxed/simple;
	bh=TNj7XaNW5K1G9JlqXeZQZa7EeQVnLXMOUosvsNjQhls=;
	h=To:Subject:From:Message-Id:Date; b=p5jgAPNKiZfVjltMhwPWsuGYiMSdDu/37fbOPOQBOBydyYaAIZ4Q0gX5wdW72yRiP9qUrmqFH8Xc4tRiQaGDllWoFYxw3aIYIdh92PmFhiBSIeJxw5FS6liQP99d32XhKS+W1saTcaSASOxldBbDP9N9g/1VYjaw2O3k1CT0ZhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ItxOC1xa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ItxOC1xa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE42C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732920353;
	bh=TNj7XaNW5K1G9JlqXeZQZa7EeQVnLXMOUosvsNjQhls=;
	h=To:Subject:From:Date:From;
	b=ItxOC1xapHHEJ9hPC97+CBMOfeQD9jxwkuOIJY+di5CC4Q+gVzpqec6iMqRKfmW1L
	 nQjDmjJBzEONQ+A1OsBu9a8Ugrn15sPGkmDdcYmY6nD9bemNFsKxkDrOQNC8ovvtyW
	 D7aygqyHWAUy0PcPLlSkNgeS51tverE9LfByoqLw9YewYqrl7g0m5p1xHxK23LCNse
	 dOGb7IOwmoqfN8s6BL4GIdHiob5oPRccFbGk6ySPRToInE6SzwnYLiA2Y7P0ys4aze
	 jBJ3h8cU7oybUXEiJsF6lpqy2giWMXxsbSbRB/PxvyAG+xcwqPKW0217QjpgQMMjhU
	 Ir8wP5Du2KGaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7367D735E6
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173292035367.27225.6407556323290165341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd18086c5eea7f8b3dff57ca783ff6a04d9ccbc60ccd8599fac0a5df67661193
Date: Fri, 29 Nov 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732920353
