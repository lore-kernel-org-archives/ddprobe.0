Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1664C3D0
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724903754; cv=none; b=LLqVcJD6w0U8xYDUBpytisBTLNITH1EOQKyeew7LAonmY6pNy3I4T3hezQc3JuDEs7wMxyKs7Qd41bnjxqdlHRnIfo+ji2U+Nf9H9knD7viNTqlsVM0tUaao9eDdZC1Wcw08DrOicf7+x0V9fRB/CIUcbqxdLYIx6XJ3gfqGbR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724903754; c=relaxed/simple;
	bh=ekyTduGJK6tHli0tBEH55PMI2YYZub1cxRFQuyqLyHc=;
	h=To:Subject:From:Message-Id:Date; b=cald0pY/wFjk6GqvKMqxlZbUHQkMYljKIIen1rrEk8cOBC2QqRLJS/+XbjbpQVIznfTw8R/DKvkYTg+u9n/s+437b6JeGiCk/zlJ03ytkCjBU934SJD+eaMTnnS3kGqe7akrKwg31qtF+mhF5XEHKKEdVbBr1OXd7g/fecQCoH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRX/w4Kf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRX/w4Kf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62A3C4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724903753;
	bh=ekyTduGJK6tHli0tBEH55PMI2YYZub1cxRFQuyqLyHc=;
	h=To:Subject:From:Date:From;
	b=lRX/w4Kfu9xt0Y4J+XvVPCGoFvZE2zBxs5CA6Ry6cUj2cCrEVO2duA4+UIX7jOb6E
	 nq5I1KIVtcKYuVYM4nNkSdqZhn0h4Kakwtj61nRv72KCU+H+0CrxP3enJhW2h0ZEr5
	 po6inRbPo909YKip6y8AgcgjtrPzJkyyWs9Eh2UBPZTjE5cIXQbzPZpOMVQgKkS6Vd
	 ZKXmVliBTgSA9R/dvV0ZH59pKrTdVaPFB2O66xg/5IZzmQUeL8OhF5AdCVtEcGeh3t
	 MtrE69VVNuumcKA2W/lQqk+onRS3U9OzH4KIFb/xjFjM62LTeM176MwgChHvbBVuNV
	 LQ3GNmarKFCdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B4CC7115D
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172490375360.9751.9559054424750441079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e8b7081fd7b4ff5c26889e94c9edb0292bbe1da5fad3c7c85513b348739d76c
Date: Thu, 29 Aug 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724903753
