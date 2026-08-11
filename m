Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F3D2D97A6
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786466434; cv=none; b=bB4uG4M7Dbhl7qxT2jfVyzR4KJQt+kGufHrdqnBxQFMkWlEIOScpSXvPwKfgBH8Wnn2HwNBJOMpKrtVmagCkYCLRQ/2Mq5d2FcZI7fbiWMjv9FBYOWFIrD96CXgLq32gsVtt3rpHULMiRFkIm7MlxXWHEdNq+o+Pwqk2s/tFq+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786466434; c=relaxed/simple;
	bh=wS9ilUqx0mCEWuBfPrZv5Ad6JVxIJwmVVs1C1EUQ+oo=;
	h=To:Subject:From:Message-Id:Date; b=POq4PvF79mnPWxuj7/sn3x0QqEVYjxAQ26FRwPjsWHwOPTYzQ3+niz2Njohfd7kNJZCzaEGZ+POUclsiExy6oowFVP20C3W3RxPLFVF0q5zIazWBH1V/1hXTFaPZk+OUS437SSoMY97nibN430CV0xdIFZeoscCQNUlIfE0zn6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QHy92Wwp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QHy92Wwp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3103C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786466433;
	bh=wS9ilUqx0mCEWuBfPrZv5Ad6JVxIJwmVVs1C1EUQ+oo=;
	h=To:Subject:From:Date:From;
	b=QHy92WwpjnR5CUAXBizJs2sArJyKU5eedq9Uswb7QwT1nJG1kCzT+a1i3Hfhz1kvz
	 IvybsKuZrnh0bqmOktMtkOxLQxpuDvOrmqZpirHcMUUmF7h7HofRw/RpXp2ijnkEUj
	 nJB3D+p4ojBR4pcxoE3gc6GV1N8/CGqKe0yUIVOIYy2YJvPZe+fKOp6qd4G11Ir0Uq
	 WoHDoXIJ3Cl63ThFDAIe+oHZBHFjcVy2GNX9crmmfHowvdgYJ3ssW547u+FD6VIiGi
	 zvAgXRJgzp8JtWB4S4tEGRQb5uTQf6MHfoGkFA8Qs1ETYRkwq8Yw/q8XYTEwrXB/dY
	 8OZSGQP9oTL3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93DDC5B572
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178646643368.22153.10553920416156891426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f1c7033937aa9a3eed4dc4a61ecee5e143918312c8ed9cc1e73d5dc94156a68
Date: Tue, 11 Aug 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786466433
