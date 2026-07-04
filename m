Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600E53A1D01
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 09:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783159114; cv=none; b=ap0E9LhPCEM26F+hCeBUfhlCez3wlZY3uK3e0WTRJLZ/vxQ7pGfMIvmhI3ESl5DBAwoTwBVzLGf5RPM2KdZhhhUISoqJNvJ9u0lBzcGXXm/cVhz/qb+LLgCHupJfHF1mh0SgcnUGPUUXBHIpZbWbZinCiSBnDAHyanLp6c9EXHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783159114; c=relaxed/simple;
	bh=DSdhIkeJL+hjniBMz0nZmptTUUtg7IJm/wPpgM1pOT8=;
	h=To:Subject:From:Message-Id:Date; b=UEa07MubE9kfDYb9fxpy1rLCb0dZYeWbfH+e78fV5dL3xFmVZ/VMBoWYSSncfbzRywzKO5w6lIZ3GqPGR3hU3H8w/5mVAhosM+UZXpspKw+SYnMxnsI3stcV52/+ldjyWqM+oQeNKcP6Q1rp0dnluGlfaNy685FpdwwLPmmmj1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GfBPohgV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GfBPohgV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3013C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 09:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783159113;
	bh=DSdhIkeJL+hjniBMz0nZmptTUUtg7IJm/wPpgM1pOT8=;
	h=To:Subject:From:Date:From;
	b=GfBPohgVBSL2IlpA9s6ncSndIzFj2QW3taK+OxnnzR6mDICAGslRtmT/vxqiHlrjN
	 UYyqLHIMNcthAixrdcspOPWvGfHP/vZsFOIFC2f/sPjQn7UshFpR+75uY7WE9yiouj
	 vdA7OKmCZ84moIHweSXALm/TMwVvZVsFRxjdCb+E0IHoffgD447G9wXZLYiv4HZT3x
	 GJ1a8oub68W+9kMLxupesYkM0+wUoY/dqoH2ucnggx/eoSdtYSaEc82mHb5zE0Mxkk
	 PCWAG06N70oOi9E5LXovtC/es2rnuazhAetnhWJ2aN0KcK3KGzaFuo7pdw2i0FhoD1
	 Ys4CBQ9Z9lDpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE596C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 09:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178315911368.16541.4844172786928610811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48248e0e164550f949c355cddce43b1259101d2dc3141fc47b11f26b22ed86cc
Date: Sat, 04 Jul 2026 09:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783159113
