Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185622594BD
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755712794; cv=none; b=CP200jIOnzCFimbw369n0mj74Fl7VBwSrC23IcXzuF1sHtd5H4RZlIuqxihVFoO42OzAfb00WDny+RbNbLi6UT6hQq36EoqTUbWxvNuLqmqWK4vobFtB/a/C5+98A8CdNFiTppNAu1B1DIkRUhjjhxPUIPvo9gs1lHHQjE+L1OA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755712794; c=relaxed/simple;
	bh=hV29zvRIE9omHzluzoBrcwvTJxWMXl3C8+VZNOdX07Y=;
	h=To:Subject:From:Message-Id:Date; b=KUUP9c93JV5zEMOveYRxuTwgQ93HUa3fXOofF24EW1lFn/2w5VshffjZSWL0//kir0E/GHWt4h2IlwHXyBuWgFp8ILqh3/jbp7NpyYfKut7VEY7UafzkDRtSxu7Y/XS4iQa9QOn/1wlUX6my4HnrQK6C1+aUWvMYlWU6vq913DU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AG1k00Ko; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AG1k00Ko"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A52C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755712793;
	bh=hV29zvRIE9omHzluzoBrcwvTJxWMXl3C8+VZNOdX07Y=;
	h=To:Subject:From:Date:From;
	b=AG1k00KoX5YAfoM1Zv9tYUNe0TTrXQ8FvG3Xhrp0WAoAjBjwdixSTB8e07ymwu8oT
	 Vk9votdBt57f4lP+x5tM5cWrGjvrktVwgukIWVFdjW8pmMYqxr0WYVkCSbmzbGvAOy
	 uUm48S3P7vkFu6zABfGUhHwjLvVZtviMIrkE7YRte8dvnLKEji19JvXf/79zQOPonL
	 y58qJn3vB3oWdLMc05VKbe4U4WG7BKc7xzHjGDjB/C7D7ivtV4YxW6JyLsQX0/Jm9B
	 IWmvyghXxA8pRlT0SfkV0rsdGRxTSM7IxWpN6geuo5+cS2fZz8LB8sD+zBz55bIXoQ
	 weB9Qg3ZoVhcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93399CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175571279359.23627.10394318129467987214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5e7a3eef831a12440ea74e66c428f31d0258d21f87c81d14d5713b90d6dc1e6
Date: Wed, 20 Aug 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755712793
