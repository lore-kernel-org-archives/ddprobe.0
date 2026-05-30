Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444A22BE05F
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 16:13:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780157614; cv=none; b=HSXbcmOk8onMT9wKekEm06oW8RqFX6WRcBmyweciUKsQr+32xQSyLbDDeiGR8DFhXoyJsChi6DQ3g9Wi8n6z3tkLiolwPkG4FWPnN/6VgSBsZqDNRo21Dg3/KhxH71bu1flY0CgRLYBZK+OlOinoB7NUoZBbzeKspPLcFASVisY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780157614; c=relaxed/simple;
	bh=Q5CFS2rZCCus4oNL+lZnPufwbOmCqH3WlcvlGkEIKok=;
	h=To:Subject:From:Message-Id:Date; b=JBh2Gk15KuSw7u9BznyZ0hQ9y1J8nWMEc7phmhgwDynpSmLb0CML8GJb9elLiOs8n2+6VhxcZkQ2b/flWa5bW0qXGpKXseCVc4YPabFyTHARIuqXw6INM851x96bxgZo3CHdWFRLXlKzWk7xJ72tn7PePrndP0WD47rSmvOZgp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzwuuDOI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzwuuDOI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1476C2BCC4
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 16:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780157613;
	bh=Q5CFS2rZCCus4oNL+lZnPufwbOmCqH3WlcvlGkEIKok=;
	h=To:Subject:From:Date:From;
	b=lzwuuDOItwzFP7t3BVbPGP+nSWlntiJztAz8GSO4kUOQERqPfL/RYXbryfIQh8xmc
	 IBE4NCFwRyXuPPH6x9F1j1y7MQLqumKXPED3VnuuzlIFYT6V88mShQ9NTOB4HQe6Pu
	 celbECYruVyXK8C8DgEJwBbOLZ5Pb1aMV6cum6DJF+KIHWsXJUNAXo0LKYUy63Dfsy
	 v+dx+BW1w4LOjD0H/qXifF9/HzlzLvJWO2jq9bF0B/xZnktb+NNkmtPm3eHfE8KQPy
	 KGXp9qUNYEyV3ZOj4IkFwIUq/S3hdkPK1QLqfOCad7mxitsdeMzh3S1KRQig6v/xX3
	 2OAy7oMOEp/qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2FEBCD6E49
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 16:13:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178015761371.20862.13864651821795426749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b44b8c51c0caa24b79c96214f66419d3c7d7b03eab41f7397c836c04f10ed75b
Date: Sat, 30 May 2026 16:13:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780157613
