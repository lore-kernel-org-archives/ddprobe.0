Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C9C145355
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 14:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763909514; cv=none; b=H6wnVhPqdQTDaHv1WeJMpIwa+9MX2QzhfYBtI7Llg7hryhc+sZSFAIyAFPZHt+RJjK1mo+OBaCaiBL/OyVJRVg1LyCFQZPseX13Hdb+sEI0w3v7hhtXF67exVtST4/+21bhJlp0W4iu8pXXJ3w7jPCmhf/Cm3Gs8aSlCCnzEZ6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763909514; c=relaxed/simple;
	bh=TFKxNIB6yl8xA47T7wX6aKKiq2Uy5rMacM6oaUHz6JQ=;
	h=To:Subject:From:Message-Id:Date; b=Lc5K3n/BUWODMPgzYFypX2lF4NumNozL8lAXUYO3H9zRi15HdAzgjAiVq+q17Y47Nhlg43S7KlECGsKR6uixbAFS0HzGk1pqEtuWF4AQ6edAsUSGfZpwDfp7aVpBmjfdL/Sf1KMi8lfanJqkxHhcjuyhUlLM+NgVcRthgEJnv30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7QBhv6A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7QBhv6A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5CCEC113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 14:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763909513;
	bh=TFKxNIB6yl8xA47T7wX6aKKiq2Uy5rMacM6oaUHz6JQ=;
	h=To:Subject:From:Date:From;
	b=t7QBhv6A9To/Uz+0CQHGfO0+5vuwovwPY6qu5ELE3iNI6FkJKywciUMJw6UNuE4Gp
	 FAeQzomI8G+VJgXnNQKnChjTiAKVjpHR0jMAJJ7BstHTl5EpNtYMLfFjc01knChebx
	 5J1/WHNgc1Ns4wgrBMKFyOAWmhuKLAOjief/vU7N9BpCZiCN9WObMbB5SNQa9jSfx5
	 tZg3rb4uA5RGd1ogjwtVG3ve0Z6nvrVlRO67R6+SrgmTqeYhEXHcEVGvBZPMVzxOBz
	 k8ExilcVwdogOIIYIDYBqweNqmHI7CveH87dqSZ/Pz2l06K9EFJUkk9NnyMrIYU5io
	 lt3ClDYsJ9ghw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD3ACFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 14:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176390951360.6589.2189304656527685608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c649eed2e22d01ca049a238d7e08385ed292148c13255a2f467ec94a6e8e2e4
Date: Sun, 23 Nov 2025 14:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763909513
