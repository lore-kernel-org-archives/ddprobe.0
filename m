Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223543839AE
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 19:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782761314; cv=none; b=afvKNchIXssvGu7i/Lmx4ooVRUZI4Cz7vpm0+8y/M5gEVHG/L6dTn0hnWS6E8nZU9YIjBfVpZLRxgjsd7INZKeofbHqP7Oyo2L0oKzqcPbo8M69/fFr7AdMnqNxnrhIOZNRZLqXj0iMpradA4hEod49kuvzNRS02UOj1vvya4Ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782761314; c=relaxed/simple;
	bh=n6auPrhvZnvelZyIz96Zrqkh935o94+h/jJJDANidp4=;
	h=To:Subject:From:Message-Id:Date; b=ZGrYlpiI66U3u3My4V+Z0dXB0gVJOADd/5s3Lt74UB5LIh+3cYAVL7E4owDlcDRSc2yn1hSpj8zwPIy0/YN2inBGPUG0O2Jvsb2uGQF1VFVRKZ0jNpnM5IkQn+uGqC0CD2ic6aJwzCN96XHITJpE/xFeAYCQ9yOtWJyeedw3dU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gmV8QxmB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gmV8QxmB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB397C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 19:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782761313;
	bh=n6auPrhvZnvelZyIz96Zrqkh935o94+h/jJJDANidp4=;
	h=To:Subject:From:Date:From;
	b=gmV8QxmBhJC4C5Bqnt1jXdSYYtH1f8uo0NOwCJZUTnO9AD0R2NP1BzUmxhHqTrpPv
	 pKi0NwqRmtXw20laH3VSg//Syx44uaA2ST9w9Lb1SFiGIJU/weUSSVD7/0JuvZnVJc
	 +357ClVF5uwX1S9GhskEeJMxLLv+OQHbB5yGtyae7KW43KjLsyMMOkn1BAFeqYHOD3
	 /h3F2bIKBBcJ/qYo63sRwXsW6ttWheV5xF+w93KoEWGzIGwVsE3OxiKyEIyjtCzUkx
	 6kt5oYBKyoxovnabQ2szPopOdnwILiQoQkVGSHCQ+ywe4a4OOWmUczlrqrBbvGxTaF
	 7l3x+BZOfVVhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDB8C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 19:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178276131370.20294.12478038570555080755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fc209aace41b29993d97f78964595651072ff41d7941052d5ebe922a9b71f30
Date: Mon, 29 Jun 2026 19:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782761313
