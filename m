Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C06F030FC17
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769619833; cv=none; b=EqYYNsVyYrB8ywvHH8dIcNs2Sh0BP3y7b7EJzdBYv+/chx0s09WakW9RYTf6DcS82tlymJFd3GbXhvZIimBINuINgNRhZUKhP0h6rgda7UkeK23wZhhUu05iHhHzyw/48ZSZH5Pnfo+RKsICTJMON+Y100g3yUgs3io3INR4Ito=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769619833; c=relaxed/simple;
	bh=ywN1qvI26DVxJYkO9PdEJ7jeTIs7NiwnFvX0Mw6R61w=;
	h=To:Subject:From:Message-Id:Date; b=rl5saU5SkyqZeza5cQ+NPdsn+7gnqZJguvuj1u6NVct2PIaasTtWZTkmNO4R/qBpCDpxGyduohPHvT42n8GP7UscMxRt5jW6U6ZNKoa5F1kbD1RLE721Cl2l21ApXLHNqtYJWX7XH7ip4I250GkTKisFV31CIxq2JxmbQ9ITT6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rE4f/Tts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rE4f/Tts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CF2C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769619833;
	bh=ywN1qvI26DVxJYkO9PdEJ7jeTIs7NiwnFvX0Mw6R61w=;
	h=To:Subject:From:Date:From;
	b=rE4f/TtsDiHHfDuG8Io+imUpU3HN/s74UPuo4vmMLoMiY2bqbVg7u342xZTS0gRT/
	 ciYhGDCuEVjVol8sjFRbxqfwN1dOH61hrRaKMvDSaQnQYdgXGBdJB4c8C9WKTPpYvF
	 7UZbkhrTUYvmScSWlmEpIpwHDVLxPWqp+Zwhnq6cG7JktfhoVXD0kZ5TfEsn3E1LXC
	 Z08Kbt4KV5qGHsnD8MYjclNDTN2wYely/CrOca20OO8t8fGSO8tDrJYUyHUzFNGW9z
	 p5qCfEZjeI4W2zBtZitOSTE83pjapzTQMUL3n+6OwyrRbeNCfOIFPTpVvUbT4r/+PO
	 J0CCeTvFzBCvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905B9D3F097
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176961983358.23590.14733258423087433709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c643a730169952e09b8835575411e50381c93a72f9210364801da1ecd4e95c5
Date: Wed, 28 Jan 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769619833
