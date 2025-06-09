Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336ED3234
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749456594; cv=none; b=D0sLJUfpVAU+j0xOMdFnmLrzazS5eU58cUUB8+YJ4rQxLOKG7wFnkawkBc7jKZziaFN+ObCiLRjRwbAisbyeUn40uq4vMtuYJzGIWNWSz7eVoegTn01EGVBj9Yuy3I20IJ2fH/WTKTz3CTOIgeqiSJqUK5M+5ar/QzA1ioFyYws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749456594; c=relaxed/simple;
	bh=btP+xyoDDD+Qe4RPr9NvFO6n1BdKRntw5lASKbO2KY4=;
	h=To:Subject:From:Message-Id:Date; b=Ct0B65zRLOx1smWEXWqx7R7a5PkJ6ow8mKKicnX23EzGIt9LorZI6seiuQbxs183KzxgK4L8Ec02EGo3qINU17NXIt5HdrnShXFocEt927GwvyI1qHn8AFOCFFyJRmZ5ciFnw0IsOG3ngle2CYkcbH44ZSjbXQ9TB7ARem7cSOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ujK8DMdB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ujK8DMdB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A381FC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749456593;
	bh=btP+xyoDDD+Qe4RPr9NvFO6n1BdKRntw5lASKbO2KY4=;
	h=To:Subject:From:Date:From;
	b=ujK8DMdBtwyZpFLRW4AlI6UA80QeogOeMpwWifjJnNCrfOc0P/rdQG3o1VkTkAfEq
	 OPWc6cLRva9ozErmqV8SObHq9jYaXSbVs1Alwpvpm6iJ8u/BILsANElL8wx2gUH9KV
	 b66ZRDrw/nAH7wO3YVw8VBWTEj/VqiyW8080xB2lffGbQiFL8jh0RXIEvaa72KjY8v
	 a6PWDoa6FzJVYzJT6Dyyzx+pdxo6mkbCTbu9srURimZljBf5gcTecrR8O7zRWzsvGj
	 pLtIrrwm8PWnrhwTQu5iOspX+VYyxVyEk6APu4lZxJ3Z7z7A3JweiKrHJZX/uO1xxq
	 foYrNuhbccAow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E13C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174945659357.5917.17180571533563030103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56e35e4e5867e3f6fc178935db7b2765dc61d4f75685e199de44f4dbed9e8df4
Date: Mon, 09 Jun 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749456593
