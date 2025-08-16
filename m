Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184D9229B2E
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755330594; cv=none; b=jowvVUy4N4eK0SoF22wh2hG4FQsA36H110fp+65MgfmKhg89uHXxYDFcDPOq3aw17UDk5oV0amu1fnSO8vEvNc+v1jfLO1AAuHd3jkVhaqLx1kyFhVj9b5Jl5iosgB9ylO3ZPl3PY0UIiTQ/Q4oWGSlGp+QMAL1lhWq8mAkMbjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755330594; c=relaxed/simple;
	bh=1+zMysqepMnnRgqRhW5AfbqCfh9LUE57eO1DfBi30Fw=;
	h=To:Subject:From:Message-Id:Date; b=bAqQnk/OXTUJFLypOGbTfYTiCwzaFDpvHAw98uZv1vD/q7ZDDAml8cVDO+hYFGmOPMXOtubQbSxEXk82OW/HlOqe8jVon0NTNPDdgSZ453GfwJ/0bjUj2c1M/U0LRRyJPFowpfpNN0nz6QLsXKBdLkoxo7UceMvaJh8LRepEF/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LylxT17U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LylxT17U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A079CC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755330593;
	bh=1+zMysqepMnnRgqRhW5AfbqCfh9LUE57eO1DfBi30Fw=;
	h=To:Subject:From:Date:From;
	b=LylxT17UtL3Qck4wscb+rG/W7Yy7mb7D4bQiPpTY4fyc6t3EL/UE5N2W3YvY/xggQ
	 ik8ms3LHUlW6r//PPXGmEtMa0YdVbiwOmY6KWTxR0oC+c7jFjuaWwpe/qZUhqMFl+i
	 Z32kft2KWaA4F86Gztmm7pTpNaG1WZ8bcI0mTqt/q69uyZUIv5SLLr+jb5aYXxpy2a
	 GTzUrWXqbKWdcZ0xeXfhTtcCKVHXvXUg+EIZ6uv7J1EUnj2+UlDMMkJj3nnkH2jVgw
	 7x1mv+wVvfDOxhIpLaWUFJRYBpwVN91G8KOGLNYuyAzZJFbDVCZu+OKSwI1TSmxwSz
	 D9jKBq4vLkMfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8D4CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175533059357.13790.7300343513069008532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b62236c8be957205da58499f90698e2a2c26d2b6c5f932de243798f752fcc500
Date: Sat, 16 Aug 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755330593
