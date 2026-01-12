Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 152ED275870
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768187634; cv=none; b=jraM+WJ8ddq8eoRY1hAh2kll8T09sP4LbLCPhvZDPmV/APg6nB/Tzb5bF8woniyqWvCM0b58YrhmWN0x7TLtdSG5BgQM0nMZKzSriwPkwX6rKIPHK8Ftb5tsNa77spXhdBMO3dKGyTKm++8EsoQfjgXHQNCjD47/Z2d1YFUJyvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768187634; c=relaxed/simple;
	bh=fFaXd55vFsl9ogbEli1ssB03fGkXMf1KTeEF+2OnBBw=;
	h=To:Subject:From:Message-Id:Date; b=A7v4mEFdzGGjhU8GvrLU3ZkEh0bzC6dw2u+GD2KgLjA0HKzSnVFwqY5PnTr66OlbjkpwX1z82wkPm7s1NcIvXdDfwWUEKjmgKu/ezR4PV/nY2MOngpKel8iuzA8vkktcQTeq9KZ0jffNk/25IqaJJAjvfMl05o8z3/y9C2uGqrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAFEcmH4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAFEcmH4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5941C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768187633;
	bh=fFaXd55vFsl9ogbEli1ssB03fGkXMf1KTeEF+2OnBBw=;
	h=To:Subject:From:Date:From;
	b=HAFEcmH4I+/ChiVxOhQFQefMpWCvqNMPhcNtcbRDsV4O0OyCGYqKhn2n0oCbeWxkx
	 DIcd0gUvQwQGXpjwr4niLJt46Y6KhCBzgipWAsbwgSG8QgQYU4jCXExXYQcWCMZneo
	 3YBJ917V+BrEWXwL28v9o/TKtmKKDxi1iqIGX3qnYl0OIZNlklU8KlkOb1aRRyL3oD
	 a2BC+zAbqb0nkFs7CbOLkAB8f6vBsjl/dY6gDb9NIGsXpMgOz5ZrzZTmD4qwjXAJoo
	 9HvBQLTN5lqnqjYz0wsh21IGO0BSOD8y7+2QfwIiBITL1aBqxAyKc8NVW4JrMNJlIQ
	 8mO0BAtksWeDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94973D25030
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176818763357.8161.111607883734872688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d500c8b6315a1a4e049e5c2edcd99a2288705358b0e6b116048cea4d001b7e6
Date: Mon, 12 Jan 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768187633
