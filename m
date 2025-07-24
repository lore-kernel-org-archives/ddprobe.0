Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2B82EB5DA
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753378194; cv=none; b=nBTQ9jxypdbEAVcug5bnWGObg/Rh6XIJyAITtNLK4d1A3GQXkAj8BMI0mLgQLkxUFcbR7BALrDrEoaKKsfN8z7qyo9nv8fj5aGIyelcT8NYrPhC3qJet3heXkjClocrfe4j+gflTNkGtVPirJWbO9DpKQl8kaiYa83dh3RkmI3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753378194; c=relaxed/simple;
	bh=2DHALtWZ1iUjD/ZAi5fFp0vLhc7h4K5aYdiSAF5hz9c=;
	h=To:Subject:From:Message-Id:Date; b=RVRZWoBcbcZw4sx9ZqrONL5J8DnNQVQDv6BSGRq4PYhCLzP5JBFVDqM2v4n2KJhgH/wMKewQKopSZhpugEqWbzlW5LjuKZZIsnsgjC3wqfNg0PbGkPKMN9eLAesrYkm/90No+ER0VSllOzn6nnHoBsW20iOxyGZzHTGGNEdm8cE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZyEgYuxT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZyEgYuxT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BC3C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753378193;
	bh=2DHALtWZ1iUjD/ZAi5fFp0vLhc7h4K5aYdiSAF5hz9c=;
	h=To:Subject:From:Date:From;
	b=ZyEgYuxT5+5CqF1SUGW0yY4kWA2AxQylWrn4DQPzIN0ftXg8xOI0UaNZ5br6PbF9R
	 YqayMejXqiwBuK557PmJ3sG+6fSugz3BRM8rWaFgbQaZsi64rBpJubTh8PUMWca6Xq
	 odqffqkgVKn8DSuwIlkfOmcx0cqELppTbBjKxa8FnBp/EsPO8dAbPinAuHJFZraNJC
	 4+2vrHHsTSkProQwUNrcgW3wXaTmlC2h3i8T8JNXK8xgRI1XSwQKtLewuaSk9qxBa4
	 hzBuGoBojoRbOAC2ELbr4JTSIqTZhgelzKDZUBLwsuES4R7oJ/ieR+P0RIQ7gNpQih
	 X6KY1nOIO/p2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917BBC83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175337819358.5722.11142175773367661558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be9bd51613772de088e1ce66aca90b1a2002f9a236898d02ebc2b557b43a0ab0
Date: Thu, 24 Jul 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753378193
