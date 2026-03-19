Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E67D30DEB2
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773900294; cv=none; b=Bj6CMKKz48rS4d1US3W5ga9U+uO+LSk+w4N36jb75htWVDpRWSJCYk7qZ0JD54c/HGqpQhGFKuG2oP4OPVy/H5ezHjHVDAm2kbGilUHfjuqAmfYGJC/Q7G7Axkzmy1BIDwKU/eadPj7sa5VVNNyawdKD0vLU3ci9mE/rqXVsL4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773900294; c=relaxed/simple;
	bh=6NNL3v2wjrdgmjpWjkYvh1TUXB0YK+v+B1q7dZi1zn0=;
	h=To:Subject:From:Message-Id:Date; b=HTr55ndL+zBTBjuf9sROvEwDs6wMUTxD+pU+rms7YefVgBmTMIXOJ/N3KVU9wtOCpvsVjzCBMYPCZygJmTsAxCamoAiRoYGZEdricqKH73wNaHZs3535i5A8gcQ0jtydvxuV93ZjS3R/+qGHYAT6ZX3WTaD8OiyTqYeZ9QVgzpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NvBClT6T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NvBClT6T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A749AC19425
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773900293;
	bh=6NNL3v2wjrdgmjpWjkYvh1TUXB0YK+v+B1q7dZi1zn0=;
	h=To:Subject:From:Date:From;
	b=NvBClT6TGSEtXUeC3P/UgwMUsORIJFIPZaxibc4g1Ftdegr7nsZ9ba7y5lYbjxyVJ
	 EGnhwXm/0LZqew9hmqiUxSATOVQAqnBUau+BwKgLivbdKNFbVf6zpfHB0ORxFq5dSn
	 zMLm6jWMycOgtnJSKb6ivTxxsk+NsGLW8o59oZV8GNvyQo3nfbwYIOimc2VYrG6aCx
	 NiAv1YyxvvV16VLArj5XHMz8BLAt9Otvh0cM/RGQr1iK1r1onnQiwnXKoeYOsKaZRV
	 ePxyeORB8y/joyJ4jbwft5hVClotdVH5twkbQWKpxTn/RCERO1e3bfWzxg1i0kM+uX
	 +LMFX3rGsTzvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BE5107760A
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177390029359.3739.2002209535479409774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14ddbdb70b5af897f759c8431bc6192c308867ba26737f5a10dab340a6e7fe3f
Date: Thu, 19 Mar 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773900293
