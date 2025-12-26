Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374C3A59
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766757834; cv=none; b=eyjqY+oUIRzR64BWOCabv6mKyXJTy9+2Y3hm50ZmSFYYvBzFLxY/kxGHeuMAzz73x9aDzAfalUsTgHqwyyHlBF1R9aUQyojyuPmmT8SNYgHfKwsSVOn78vkKW2hOAceZH+EdhKsa1DIbWNea+nT1bb9uAXTUqRHqzTpJaKWjFx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766757834; c=relaxed/simple;
	bh=S7IpFkR3agjrh4TNnCgQlnvjelANWqTHt3VQ/rprtZg=;
	h=To:Subject:From:Message-Id:Date; b=KGnWsDkKa+XVztHAwcQQcm7SVaQA9Tr55rv5ZmPPKn05Sw5rPA4hqapjYIxbBSt2U/kqOpGCqkPPD4/LSLMwD1n+8fzcScrmLkKlxZg1Bg3Dn97VroWBHM2bS67thNyxdRGK0nmavG0Fqx7y7JzWAwGrjdsL18RfJ48YfOJrIVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjRSJij4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjRSJij4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5D4C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766757833;
	bh=S7IpFkR3agjrh4TNnCgQlnvjelANWqTHt3VQ/rprtZg=;
	h=To:Subject:From:Date:From;
	b=jjRSJij487rzJjfFUo3VPSrfXNBEmcgb6EBlIS2/K/x+IWU+btHsheXRSOBnPZrvc
	 C38i3ESFnBv0JXHN0yuti4kqnSbe4HQ3PY9194pcVH91WfFQxdZxwUI78yPbGPZ6zZ
	 ss6XwbNeqxLwRp7YPnEKtqZiUIVZ97aV15Yua71ux/ZkolkYKTW4iK3WYayZ/MjtAY
	 Xcr8Ehot/Fmw56iCHj+WolfP1lT2qPRJOkaQyu+TZXVFhkY8xipk/Pa1tkuK0gYfmR
	 Rr+ijL6rOOsmCgsVRY8f+Wy35Y1dRv1HbJwbxW5oRqeyM4ryce52FJVWdgPQM+WCxK
	 hnwEwmUmjiUAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DE4E8FDA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176675783361.11027.4890560519417363169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df9b1425cafb8c51475ae486d2b2359ec7e2743779114befd758e44219326d3c
Date: Fri, 26 Dec 2025 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766757833
