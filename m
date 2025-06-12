Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA661E5B68
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749695994; cv=none; b=LrtWJPztbWh2n/AU51NMLZ/KOVUAgA9MGg6qThsoQczAKFp06wQ1bbhFouC3ofYVRisd7f6tEKPH9Dfs/CMEC8fveYVCXqnG4ui9O3TA7ma20bSCeNb9jc0aVoot+2MCOBodaJ/0XeT+32vnxsNsqZsuEHDyXmFiZRST/3l8Urk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749695994; c=relaxed/simple;
	bh=K/sNMJadftD9s1hIUL/XeUs48D9CAi7XRvyIb/1wQBI=;
	h=To:Subject:From:Message-Id:Date; b=rr0VqGL48zp3PWlQdT8bhgnvbsUfolrEiLy81W4S5PbfMKAlpToOManRsPIEDsQUHstfatyLc/zbOYYCM0wcYDL7hJf7nfnVZWkHMnWzOJzHkQBSW0LYgUFXVJ+J4XrdMN13XHf11bwSoljtKTKNYF7l3JNfNYfBNkNGkVV8OeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVExM3RS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVExM3RS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88F0C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749695993;
	bh=K/sNMJadftD9s1hIUL/XeUs48D9CAi7XRvyIb/1wQBI=;
	h=To:Subject:From:Date:From;
	b=BVExM3RSAcWoAEy/vp+AwALRPbJTYARtxgyduLsOQhL9VvYgO2COn9NpAPDtVB3p1
	 y83p0oK8tbAV438xb20BMzWUsR2q9Pot1e87lpcTSrH9xLK3JyYx5kJ1wQOHHgpBCJ
	 zlJylo0k+3zBDGKVHKPyNWztTreutxKQssucBBS6dep1U/25jNDWOQC4rCiJyKYSfY
	 CxTxIPb/2QC3h9ekA62P62Tx2VqVx+3snIFWnxvN2V5yHDcmQjMH0gyoF+G7OYWlpA
	 Gaz+lxoHpGh+8fh7tK9w2bg2aRpXBig8xc5Nu1GeRo6Hp+gnr+AdDU3OZqj8Lr28E+
	 Nj0YUN3lhErAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943A6C71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174969599359.9652.5702102232879757411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b09e058df27a91afa22b2b11ca8cb21f004a84be90341b661b407b0a28355a50
Date: Thu, 12 Jun 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749695993
