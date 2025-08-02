Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2F981E7C1B
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754179193; cv=none; b=SKp2DxWJ2JqQp+Ei37XQJGUB176FZLaPqGdy1raAxGXJ9jxCrdPOjNPhYa7oR4oii9t5lvGqi9cnEO/b9wrH9MDRXN2KAcKwk+T02JqgMFm5Ie1F8iD39GUI3jLk89lBbUNCZPoeNgv+WWjhWWmEMXeYsedsmUN+pqralrg8M6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754179193; c=relaxed/simple;
	bh=hcU3suWoC9Y2HSNy6m8vjX054n/f5zNrC6FTXkgRR4Y=;
	h=To:Subject:From:Message-Id:Date; b=OgRJ3pUtTHFwLZ5kK03t8jSbADz6WjL/2Yc9Rd/N6/H3XxsetqYGASC1blD0eJ+YvVovubnuTGQJjQPTw9O+PfOuVj3WW8S1V7QvO6dbd5aqOrmH6zKWb/mkqnliJxamOIL620z8FVtgKaKHOT1BxwSX3FYOdkfBXQGlAriCBf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nKh1DyCU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nKh1DyCU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29DCC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754179193;
	bh=hcU3suWoC9Y2HSNy6m8vjX054n/f5zNrC6FTXkgRR4Y=;
	h=To:Subject:From:Date:From;
	b=nKh1DyCUlDOsJ5rLYuIEeMIb3PbeRPkn25lPrser5Zw9OuRbBhdUi9aMuEf1HYxv4
	 IC6RB/8oLNwN/gJ5bP61JCZjUN4K/brGlrWegqg3IDdZAWJwPMs8daIB7ov8QVtfo1
	 i7+xfysbUkyv5nXZ1kxXUZcwScvIafrd5pwFDmxnFj4ZjpJGRctOTCy7cEDJTP8NBi
	 VJWeJWGQpxkR3GTh+xUnmLe79Vs0PzC/KRASpFSKU6rXghxTo5lNGCZQzsC0f6ty7O
	 eOH9pq8gadM6oAAM2zxXwCnV4jnNFxaN+C5LTuIffZsD58UeeNVng+BBLJXeyvGl1U
	 kk5DiLi/R3P0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F31DC87FD3
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175417919357.4429.17688073300149297499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f576d35f1f88529dac9a4a6d3eb00d8ccf5de8c027ec318481b44b9bca9d9f15
Date: Sat, 02 Aug 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754179193
