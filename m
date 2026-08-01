Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3CC348988C
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785627034; cv=none; b=DNqpPj8gKTJ7T79ISpPbtN2Lb2IQdw6uYoQzSs1GW6Tu/afJTGA5Cpw3lvspm4ASmHwxiJ1HIzAPIwugkp465sqGe26/lwrvlnLnNi0fsFhgUwE1KfR9ozy3i5Jzuxo82Yy2sAkW0OQosiT+Bq3o4UfqeF5cv12yv9vDLXc8aeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785627034; c=relaxed/simple;
	bh=EZEHQ4k8PrfJ9oCuOITc7O+pW87jQrsXNYCGmLPLFzc=;
	h=To:Subject:From:Message-Id:Date; b=D17p//2scgGgyW3AHUZuC1ZbvkQxYbVmoKJlQuMTQ8wtKEnX5UURuMSedu2Yg/U6+/2ofAYD5bkonoVVurZ1U8HMuZaDlovvaL2NONDpXu1+uX4zsLzaBpLF0UP4NhNz6YW7OWyQMtjwmzYCDGDJLcgzxzNjBob4NfFYLcfwtg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aW3OoSr3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aW3OoSr3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFE4C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785627033;
	bh=EZEHQ4k8PrfJ9oCuOITc7O+pW87jQrsXNYCGmLPLFzc=;
	h=To:Subject:From:Date:From;
	b=aW3OoSr3i6Ae44oyWZvRXJtDilViCwY+JrfQmxxxTyu17XU/synncIB1W+ttq52Ao
	 qCjWjY4+g6a0rFKQNiD/qUHItJIwLSAMRuyuqcJemL9cjjLmQBH+DYz53Rk/2a1FZ8
	 rQS/iA+RavxWMhB6DZUr7Dg9QWBD53nLX6gKGpGg/cLsRMJnVIEfdjEbjyVaCzbYi9
	 ah51MGYz3mRpAc+mt/jBtshF301grVrv5bWyCjVr5Epa2+Meow8v1+rQKq4thOEyUL
	 94klBS7kdVfz+73y24tq7ugII/RDenVsWiilXJLLfP9hIpnHXxk/qzO1AkXDqM9pUf
	 alLZJZUGdqung==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE103C55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178562703368.10477.16007276271876538343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4a2386d3f393dd2654f4030bd58df49c658f948a7799afd7595bd0211694044
Date: Sat, 01 Aug 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785627033
