Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CBAB10957
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762651794; cv=none; b=mmG5FeYBbd3yCXHuXQgWlvF5InAGthr5U6oQGOIlBgh/nj9kAFJqwr+qtyJ4VvlssH5ulOkR3yizPFALkKhiD2wxuXX0YmszBJ/CUVJHLI8lq6UNcNK7Og1oJqEssOcR+pmZfYLUoMdcP2KK4UFkgogxbVwbu6nvQORbtmRJqvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762651794; c=relaxed/simple;
	bh=ZwtQDVQZ0d/zqzksIDlRU7bJ5z52rhoZXZPBYKeQp98=;
	h=To:Subject:From:Message-Id:Date; b=X4J1o9FjUXE2B1c9cjx+3zNDWnvE/gKd4TQl0VFgqrTLsuApeS/YxWSe6mfysIpkMXWYImr+m83MRu/Up4IqFiE9bWS1Np8kzk2rbsUhNcJUqwnabePsAMtPSgNqknkAkG2LLgw0G3tfx/1cdZElLw83P9M41QoONueDo/r4Oyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rq0uvnkd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rq0uvnkd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4938C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762651793;
	bh=ZwtQDVQZ0d/zqzksIDlRU7bJ5z52rhoZXZPBYKeQp98=;
	h=To:Subject:From:Date:From;
	b=rq0uvnkdqUfcUEmt4FA/Bwp9kHbUW06si+872XDQnSNLIsixUnzqbVXH+Nuvnj2ii
	 9QFx4plP6deSL2lleke4Kl8fLLYmSu+4MTN9VfMM4hZSGQ432QjxtdRCwQrWYAw6nO
	 o5s/RgjmwUgxjtXFAFDh3qzNukbkkerZMvJwTY0uhj94NGal6au/VjcGumwdcCm1Pa
	 A/1sjlWUKw02+QoARw1AJrcEa+N8TWgxZ9EfwlsVGRaQZY1eRspSKE22TGVUCVRWUr
	 3KLSldAQQvFdZYKBt+uHRkF98CL7zyXp+NT2MAJpwfvNKwDAAnCXMPKKzNGGfI1Tph
	 IUkoE9dO0CwHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B49CCFA18
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176265179358.9034.12957214792754099023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e76408bab28718b7c9ba167791d08d70051a67a32e5102e228a7d38a7aabd53
Date: Sun, 09 Nov 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762651793
