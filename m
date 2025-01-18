Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B99410E3
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737177954; cv=none; b=u1Ht9zqw2+Nqf8D3tPK/DyrmSm4f+7pga/ZWfidvtrLVGK2Q8oDe051ngTUZGecqMj4Y9exClDpJELQHwUWU0QcKrX4Nfk3l1KsyARjl5yCVhJltPTqeqwm3fOjOZ8mGPGLw8l9K5e/xZEYtw+guwbnIMxe3Q5blIUWhGOZ7fNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737177954; c=relaxed/simple;
	bh=iSksDlXDVF6EnXfKntlwMHbz8ALens0zgeET9mbyK+4=;
	h=To:Subject:From:Message-Id:Date; b=Q6neilwQrwfoq8bXJffgvhpTqz1HFojBDtLECFtaU614cB4I/oiyU+GitaCjjKpb0uFXYRJooIFKuBmogExo5OhYdyewms7b1fp0pkpQijXe9A78WTorb1yRMkrTwi65jR09hVrhDSSefy7xpl7u5PFnkSqHiKGpIvNuFHu7QJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gUw2Dz52; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gUw2Dz52"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B59FBC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737177953;
	bh=iSksDlXDVF6EnXfKntlwMHbz8ALens0zgeET9mbyK+4=;
	h=To:Subject:From:Date:From;
	b=gUw2Dz52Xjlah4EuSv8C984g1hwbilZVVESKbJ4TpXfh0kcZDy6PrNFfoyNNU81oi
	 Ij8g/gU8ZL2sYSfgzQSnxFQnRHbYn+nj3mMDK/eyUFJ3ClxQAScz7i+RsXkhnou7zZ
	 m8x1pT87EGQ+iRI8cRgcMYApMc6i4Dg1JrbjTjhsj5H1BTYSv1W3tbhMyoRKzgUpTj
	 10S7GGB0mgW4o7m2DMTiOm+CXPwMLxNDMGfHjoHa8n3139sSUT8dKtLfocE+3zDOyK
	 mbxluQNUalCv8/PSEofIg73Iz8CpI/1FGTW/nbC6kIthI9UsVkb4JAK0x8OqsbJ7sf
	 lKUa7WtK6XrCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9720CC02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173717795359.6355.8909672856294624966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bc935bfbd70153c6914ce45b4515308310ef4aead46b4391838d7e4d2e939e6
Date: Sat, 18 Jan 2025 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737177953
