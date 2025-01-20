Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499FD1FC8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 12:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737377754; cv=none; b=e6IVCcLtUr9zOdzpzAbA26BYQs5jm1h98fay0moU9BMC+sBsaS40oStnBdpU8y67NJWCXdEjrKanOOcNhdSzJD6PaCDboEwTjGgMABllTN9uQxGCaDncRhDYuO5O0TB6oobalzmxLTrB6OvqvzAvbOaEJ+6cXDJQHUItccwlJHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737377754; c=relaxed/simple;
	bh=XZCVYtJmMQKNJLFyfpAK24QxpeqGQfBaMIlULF7IRuA=;
	h=To:Subject:From:Message-Id:Date; b=FfT7rAoOxxOJS6AOy1Px4c2B+yT2dfVQ6FKrGfs1QNb6bDqtV7I/0nLu7mGkfsM+cyKj5chnYsrbXVF1CINN02s8rsSQhk0apaES+QTyVVzrzxxPXrvxO/0QWzdChpPkVx2NWnz+pPRnyuwkrWVon4NR/OOHYMV9QkoahB316bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ni8+0uTw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ni8+0uTw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6522C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 12:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737377753;
	bh=XZCVYtJmMQKNJLFyfpAK24QxpeqGQfBaMIlULF7IRuA=;
	h=To:Subject:From:Date:From;
	b=Ni8+0uTwQigpyC1Yp0GIFAqhaIc+7BAqwQiTogGX89IrvE8MvygoFDX9xX12YUSWk
	 aNeREBXtemLJ1KRcdNzLYG2IZxH7qgmDQ38MzJzc4TPlKsolar67lSJzNi+gHA9eo4
	 XrQd41Z5V59bbV59tSPPbsGAP2bgQ6pd2r4wABGpFBQRU6IePFHYuqwVIIuGg7gNcn
	 Z3EXKDzVSmkI1RwddXB9mMPYlN5wXlcQP3UtuqH12DT6zzL18YFPfyT8f42uh+qLcW
	 1gAXWt2reGrYHdxRO0Z3h3TyRnRxhktVV1c1zigEAsOVvH8WlkDICLWiSHyA2yn3fA
	 evuzdi+I5EpzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94588C02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 12:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173737775359.19458.8427229791947047940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f93527f1d1d36966822c3ae142946e2233e3957f6b97a1f67dbed7f0fd27142
Date: Mon, 20 Jan 2025 12:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737377753
