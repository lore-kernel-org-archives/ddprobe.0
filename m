Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30FF3175A8A
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 03:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777001854; cv=none; b=Ds/wKOksSgIPQQmp12TwqzIt2GUzhvzM0z2tBcJpWHQFekqEWxwYF0mhG760gETN0FAGiypDHlv8/4mcZkVkE9OFeJR1DUnItJ8bbLYhyuWu8gL4zRtfXubY13okplg/nwkkrmNpVAj1EJmPQ5I4mU6M66x6pI6OKJDy7Q4oVM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777001854; c=relaxed/simple;
	bh=/yUp4iw7g32vv1eFA1Gdc59chDn0vpiz+rFrzXbKpMc=;
	h=To:Subject:From:Message-Id:Date; b=iN1j8HXhY36u714ihN0Sq5D5gadmHIXyys6SEPbUgF7XmB1DR7gm9LXW/Gxjwz/0cZ66w1pecBrZCl9wzZkafwCB/BvBO21+/p4gSuXcLDBFN//1g8y5Vrp6pZNmms3rrJQQWmunC4TyPE2iLShBluHl51C5EKfW8v0A21bV83M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ROZG5kJO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ROZG5kJO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2887C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 03:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777001853;
	bh=/yUp4iw7g32vv1eFA1Gdc59chDn0vpiz+rFrzXbKpMc=;
	h=To:Subject:From:Date:From;
	b=ROZG5kJODKd1kldZ1/lovfpowmx965U3IYZqtzd/3VGaPukuNZmwLb9rN4PRuy4vn
	 76KRc1T88F+tyK33aAGcV5wDRjKH0xYHjtATKcz7Q6Nra2a89WCqZyZrfVbTdK4SMm
	 9oRX3HvND9uEIaQLiESTSTdO05QvftytmooWgvr3i5+BDsx6SUf0LkwfGUJZ0RWNZX
	 9OrhRWnEv+zg+TQ5LGyNikWBbuP0nStH7Kj/6f12KT4uCyH56f39rt41eVpTchgucY
	 K8Vj0NpGeBRFqhcD6fOmMg0yVthbcRLFXiDbF7is3kbuqorp79B4HhkrdyE8TgGPhF
	 Je2q9HcJquohA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC46EF9936A
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 03:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177700185368.8555.3477584429000772275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7048918979610df6273740da1dda8998597a1370bc9ac6beb527b759632a9cc1
Date: Fri, 24 Apr 2026 03:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777001853
