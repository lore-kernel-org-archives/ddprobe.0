Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF603CC7EC
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 16:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783788518; cv=none; b=sm3N8YIzzn7groIpXd1u3wKC0TA9hRi70mGZj1DPbJavKUNAee5ZBcJwF9QZfZewTLSz8vwrqCVr6rNiAf9mFdih7ORkdpC/N0V8KZ+nXhj8DbVpDB7go2Z9ihmKLqgoMPp4G3W4hzlaPhEzcVoIHlc+qBuIo0/CLfO4U0UaMPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783788518; c=relaxed/simple;
	bh=fe6UMACZVhES5LOLYPmqesnEHWgIpOrrVz9e8yDSCCA=;
	h=To:Subject:From:Message-Id:Date; b=m8rEmyutToHg7tzXlZsl0yS69BPXwHwftNHV58+IWzMxpEgDDmJfXXq3Ilv5WHc1vPZ27v6OaEUPXW82o9sRv7yCG9Qd6lL3D45KJ3rC8hZ3NVa1ZRktDmBgwWn4b7LfRAnYDWSSgQCeBxwWPTfchtG+McM5KYUEOeQqKZADvDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eDvhhoVW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eDvhhoVW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA21DC2BCC9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 16:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783788513;
	bh=fe6UMACZVhES5LOLYPmqesnEHWgIpOrrVz9e8yDSCCA=;
	h=To:Subject:From:Date:From;
	b=eDvhhoVWWKq3BNQ/jkrE0mO24JZwYP+g8KTYpijxNY/qHJqOBb0mCzFVIyMcCCjwn
	 DF4oyEhKMtdx69p/G3Jklq+ZCoVf7uhqgOsEPksUIbWh1bNlQweR5J+zA8QFQDQSxF
	 BtleT5oKEgyT7x/DScU1MbVGpT3CoWI117cKH/Za3xRi6yuqA9vUM2L4V9ig9ixG1S
	 mWU4gv3A/jPkmGYHVctGtz9XRso1JhBevdMeZ9/4Rf0oFBkuwxpgFFwHI79UQwrGTe
	 iE46106BXkpdyv76iqporjz3OU14CW1XkNjlQt8TahuDUFdF27DGBdamaTIBtxvwiY
	 PL4idzKK9/7rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89CBC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 16:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178378851368.4378.5062764275178656080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36143d1e23789bb38c478d65bec6884be14f7f859dafa9e6659dd8596d825ee5
Date: Sat, 11 Jul 2026 16:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783788513
