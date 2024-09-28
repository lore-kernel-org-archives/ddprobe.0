Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489921F5EA
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727562354; cv=none; b=CLCMkTzN246X2uyTMuYJN3qym4zzGWGPfyMkBwoRmmOQke4ayWZvtvouSUqZiN4e2RL8GpT/RFDrfABf58q+CDKEsJL/n59bDd7Fc78JL0WN/c5DE6j7dEct5QjQYRCNL7mimIh/ABACUBl2yXO4wp+pBlVudFs5x1Np6hicXUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727562354; c=relaxed/simple;
	bh=MnvLzJCKDG7wjuyZFrNsFIyKbrAOqpFpQogxS2DCafw=;
	h=To:Subject:From:Message-Id:Date; b=nlnaFNCLRZp1VnC2EueO/jViWjWJ+s/NL9mWl09QDHJgR4BaMvjJhChnAAp9Sr1Gl7Omag9vJe69jtvYELz7buMHBe7Sgfvz2XBcDk8a7pBzaN5utvo5IsGMDOJxlDMNoGbpC6GB1eY2wbYaphal+0+anXIVO+dZL2cZAO75ty4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WceqJuAf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WceqJuAf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B971EC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727562353;
	bh=MnvLzJCKDG7wjuyZFrNsFIyKbrAOqpFpQogxS2DCafw=;
	h=To:Subject:From:Date:From;
	b=WceqJuAffe5diIYMrJI3kZjf9s82RLlSsapKmKqCxq4QWDaMg3DTVaYuMYXDcSQ0c
	 xNIJbD5Zxuv41RAXwgkGOdxcwNyaP0oQS/7Nej4ygjtyAwlsrsY+yLMkZPYOd9G+73
	 6etQntsokd1+ieXrx3lONeL867QKC87h3pYbKKcOi/sIgIZU9jw7uC+lR8QIB7x8ur
	 AnNooy8cfPXdqbvqXZK2KhfBVTPRCIcIGMclhb7s7n38EfDgI2Zy+exHByn+zVWJeL
	 kwIVNzsDx7J5kcFx4kYj3/XTyNpzveaDazNwpydpx1x9329OjdxE7oj1FwHUqpJCkp
	 /l2kepNT2AOhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7B55CF6496
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172756235364.27523.15677976713121134166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d21ad61ef19ad858d4adfbba5822b698371fcceea3dfacb1642eadf4a4b55e4
Date: Sat, 28 Sep 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727562353
