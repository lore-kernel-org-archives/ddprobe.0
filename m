Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD9428505E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790507434; cv=none; b=L9/bj3a50usyu7mHMx4IlJFUIIu30Tkxvw9hZw/YxsS9uP5Qnjc2dM54R9KpJ7GvNP+HgIR/J+I10nxTVLp+vCWioOCwGu38tSRF/A1JFlMVrzVy4vOVVS/C19kMzZBYX+cuOSArnWlISIXK/wj/i/WACMYkHErhKUToQAbojk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790507434; c=relaxed/simple;
	bh=bAZRu+VZkbs3sqBRuezCgpOLSt7fWO6sX+EMPz+cWKc=;
	h=To:Subject:From:Message-Id:Date; b=tAdgAXmq2lSt+1teYAwMsmDjeNV1K+JrjpL7AStQ+EM3NkQD5U+cCqidxaQHTWhd/vCnJlh65s/5MDZ41rRjWYKesKaUfi7/IdWgN48i1vYpWU7vojJe+PrT+qIoPrRv9QBQ7YJtjxbJN1AjZ5vYDPE1OC3UUl/V53uCJPAJ8IE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQbBRRWO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQbBRRWO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BF6C2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790507433;
	bh=bAZRu+VZkbs3sqBRuezCgpOLSt7fWO6sX+EMPz+cWKc=;
	h=To:Subject:From:Date:From;
	b=WQbBRRWOrKn3bqkJnOBX4CHQpsqz7Oiidp/xLbz32NvfhFO9AUoTjdBNf002Huhjf
	 +f00oWNJsMuUsPP6mgyIe9D1iq0bJkRAa0IS0IRfYWPKrmMXOqL1HxTJVhMn6w6EoB
	 BHBF7ZHWT4OUtv2fbLagk98k9j6ORpAj1F/0yDoJhgJUbRxWziX/HFGJX17LZF8/ux
	 YHWSnLtjwgpwyB4bK8gaBz1PG0dIq+fbm0ll4c8r9OOtM5AmJ0jPuaVmI0eBtuDbCw
	 F420phdt67OQrwX2GQ68SZK+lKVQ0q/FKxCq7EvGP6fL+lCa+g2vDqp3a0DOyc/SC+
	 1+kZ+/rqVb6ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04DEC98324
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179050743368.13552.8837068831960611319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5399bd0f22fa9f8f0c8a3e793cbc85fe27eda9a97278c3d01c90fcedea14a26
Date: Sun, 27 Sep 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790507433
