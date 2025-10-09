Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3DF21FF38
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760036394; cv=none; b=u4amWBn0GBp5cHiuxD309vR3bon51LGYKyt3goDe3MyOdiitp45SMP8t5MGBvfjxkGk1tJmu4F+CYU8JS0Y7HGU1CT/vIhlfa328AXVYfYKeWHwyNKHFSeVAQP0ke20Xl+W+qBF+to1G2CCWryyY9DdhrkXzGt4LS4n3vcs6sqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760036394; c=relaxed/simple;
	bh=uEcnU6oEcBsH6cmqECjv2lVktToUJzx1CiHkkMCJECI=;
	h=To:Subject:From:Message-Id:Date; b=A22Z87MHbMxwgoJPDHmw+3bVxXuAxNDkjEdcvtFbYH8nfS+lm5adAdBKCLjHkAzJ8/t+/7LCg0LPKPqcZ9ddVuEQdjR1ION3E6Q4hDhqOuIqRmdJOmU3ooE1/DKeg8zAF/l3RvCjHAhX3laDTOupY0CgjPpdQWMlaQn88TuOZYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+mmb5ap; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+mmb5ap"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B48A8C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760036393;
	bh=uEcnU6oEcBsH6cmqECjv2lVktToUJzx1CiHkkMCJECI=;
	h=To:Subject:From:Date:From;
	b=Y+mmb5apqmkeE0X5uHox/T+DNDB8dcbOtflEKBthPkslikxIeGIUquPm96i300abD
	 aXkLmdMbJC1t1fPDkPZmvYQW3s1p4OVevY9ysnl5gOpcBnpM9WiN/nx5rgKSO505t/
	 67sSxlN66SLpTyhuZweHFiZ/N2YUHRDTeHG0t04JMEYCzB+/uJg2Fz1JpXXR2KzcGC
	 xNUwQpSrATCxQyFgd8gLkNxXAp8oa21U+YUYMduQZPvi4YmLKoYABxNR27tZLW+xyb
	 orLqMtpq9LX6Xj8dGF9j7Zoi71e4If5xrpaxKSTrQeM6dxxNvIbns6klv8z0D+XR/G
	 ZtUircfDPbh7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A572CCD183
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176003639361.27838.6746781989266855906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2f95336dca18acaf3f4f69f5a9aadfd4213daa989627b4ebeb55d8eb419c3a6
Date: Thu, 09 Oct 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760036393
