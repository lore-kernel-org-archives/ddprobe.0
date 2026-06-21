Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E11B233958
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 07:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782025594; cv=none; b=IFPRpMVF9KLq6pKPtZ7oTPKK/j+xa1BzAi90uuY0RkXOx3MmnMU2wqZR1o1i9Z2JYT0JiML0fClWkLtg/TtDsKWRqhFO8wJMtJrDTIx+CXbYGsIgjDmjihfoOssPq/unra08b8LYvm7iZttvDr2ZXtDfdl0jMp/YoQzGZheepho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782025594; c=relaxed/simple;
	bh=NAf01ZXU7jy43bH9JJDfaiulovAlGVI/1FD5+Ry+qck=;
	h=To:Subject:From:Message-Id:Date; b=iGs6u+xpQG+Rp6Xh/dDcjbKVS1Uwwrz5l2ayHAjlxn6i3T+69oK6mzkILglqOtwNpoPAIu/+8OiNUGXjKm0Alu7MC+w+JiO37wDv4nGjUiJwuRZb0xJH81chrGPavyiA99GGUyLUFVi9vVDXI0b0XbVf2gOJKHtvnKYCy4ACKHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=augVkvFn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="augVkvFn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D92E7C2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 07:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782025593;
	bh=NAf01ZXU7jy43bH9JJDfaiulovAlGVI/1FD5+Ry+qck=;
	h=To:Subject:From:Date:From;
	b=augVkvFnhj6Z/oa9jLZm/lvr5ixQA+fIayUoybOWGyGCh0Y7OHr+I8exNmZyrEZar
	 VTQf43u+2E/nzKgwU0MGVwoCTLeS5dJPepLK+R7esToiujQAlGjnEgef+5a2UZkTS5
	 O1+pNEuqIM8k1DXmNitiek9+IXFLMNCFtIDXHjeY0rBkbVtTnqb1m432Kc2ua5y7Uh
	 st/kGj2cdk0KzBt3mOKWuap3IeUX3SUEwT7gwOkNTm7UmOcv7MVevu/pIGDC4wWUNs
	 ToHe8X2+EH3YHdjt+1bZ46ZplWhUrpluEk5EdzxDzxreszGu07elZep+PRqC4e74f4
	 FVoCG/gQGSE+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6420CD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 07:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178202559373.28271.10417930789460349086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c40e3aa74b923536cc2b16cae45e106c1e60eb01322aae340c3212c0dbdb7d2a
Date: Sun, 21 Jun 2026 07:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782025593
