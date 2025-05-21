Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391161AA1D9
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747791594; cv=none; b=df/9/L+zkakVyXhR5he2GJuPWXhFtOwNRxg5rmhe/L6pOCrcWSyOwyaGEHd0DP0GXhsWVeIxGpxADzV+qlaQ1Zs2YOSIDl/EglKm1AwB1XlaZjXt7QlVUIkSqVIWgMboCxxrUQCrhKDff5t+PdpI5d+JDMuBR3b8+fU7EwQS/b0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747791594; c=relaxed/simple;
	bh=0E7hs+FJwHYRUzY9voTq6qpyaE9TVw+B3X4C9Fnsl9c=;
	h=To:Subject:From:Message-Id:Date; b=ii4i+yyr5fZAhWaqmdiKog7DmAdXI6teLEb2RlNOZbDMPi/kw9WYVgKElNlL3XeWjfezsNvNKgI4md0yTzREqchO/h/HvPTp5dALjM4fJkQDI+hVfWIhSbzGR1YPMlRgq35L+oY6VnWtwulAeHxZHL6zYrUXvH4FN6rwNPx9WiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4WJ+ijF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4WJ+ijF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CECC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747791593;
	bh=0E7hs+FJwHYRUzY9voTq6qpyaE9TVw+B3X4C9Fnsl9c=;
	h=To:Subject:From:Date:From;
	b=b4WJ+ijFTBcVgjpGCbg0GO/MhbbxnISLhSEgXzDPHqTc+RMOCjUJFHZKaqAGIMSGO
	 cZczvL9E0weYWKhJEFh0D7Qdb5hPXxKzOW6iAmnF/AwjEs69bir+QvIXjOInzNiwSn
	 ifqOdePPQBu4yuDMkWa/8T6Wc2NIWYogkMFLk4UNjyqgxuU0fvTinXZEn+LD6mXXkX
	 0n21tzP6pSjzH8bb9LShYCYY1SryiW94aU3TX0MHySlsKPAwhDNlwSO6yTIKFOzlbS
	 EF5fu72ogR6BwkRWgFhleR/1ELTWk4yCpJBGXsEzI9MvXWPuXqRk7ByE00HWF/GuLx
	 uuQQ/iybGdBCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CBFC3DA6D
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174779159358.27170.377435731186457263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68f9fb34b022bf1aeb5f9396e8cdf2c9890bfb85b37e48b0942c5f156ebf4881
Date: Wed, 21 May 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747791593
