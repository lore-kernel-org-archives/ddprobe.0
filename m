Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408A33890F1
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 08:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783325914; cv=none; b=pGNBqwvO1VBP7bABAh2WMGEGtdhYWXp0Lm7vqRhq015l+XUJLp6wf8UrXRh28w1mcEuLM7h+CEn8t+LhnRN+aBGuGxM6NthCubyCG6XNv0NGAa6JcEU5gZP3JTpALA1O7cBURShBBTNNA3vWdEvg44Vb+zSfx/2GBm4sX4lHhHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783325914; c=relaxed/simple;
	bh=9I4nKfHzEOKNNmnLSb1paUh5X5gujFRw0O60VonVUUM=;
	h=To:Subject:From:Message-Id:Date; b=GsUNgeUDAmsZ4QLYTctMGchANYE1R9Bg6FsVUfXeOhDJIEqsEqP8aOKsHXwARJ0Wu/GBWGxUcRvfXDel+RqhJ8AWzO8x0KVaaomMUDgJwPKutsBoG/Dq1dB04y13bXnmQs5I0QIXRKGxNuGVgeW5GB+GdCpoEKyQjS0yA7CUz5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cZe/7sG0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZe/7sG0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA90BC2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 08:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783325913;
	bh=9I4nKfHzEOKNNmnLSb1paUh5X5gujFRw0O60VonVUUM=;
	h=To:Subject:From:Date:From;
	b=cZe/7sG05D+EigFo5vK0x3S1pobDPO5hjIi/yneWiN6T3xH0GTtOZiGXLvcTSLAip
	 /Ddo7hpenZD4PJCqRqw7HtkBwYemIK9ucXsgDu/lGgWr78bYGNc4PN48WJOVSvlfFh
	 LBPVvfwvaHcySzvNYFjE4A7VDD1RKSx+wfRbEv8vg0YtOwjdZY0EcR5Tdmd+RIxdGu
	 WKw0EqthWlD0R0ZBnj/sG8E0zCuR1mHZcwFOs8Yx6RMIzXBm5BmxWFWVvGtG3oeLJR
	 J4CUd7CsUwlABD3PIT2JsHfUx4eZo1y1ryonGSnxwa9Z5XF/yyrs4+ON2u6u+asy0v
	 PiLLUd7awUrvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A76C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 08:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178332591368.18261.3510906922908515145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fa3711d0ab6d78db38ca66c984d5584aa24a3409614ddadbbf0ec38f686e19e
Date: Mon, 06 Jul 2026 08:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783325913
