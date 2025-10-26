Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184362550BA
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761446994; cv=none; b=CRiR2+RmJU+3EsGSk/dGilSu1rHlTajunFbdabPGUB66CrzIzGU+e7dZO8d7kQoih1ceWRHDntQ96aEyU6X1f/eBFxex4j499BkaAwojx0H/+HhBXYJjWDGTT6+Qchy6kfC3Txe3rhmC6rC1aWk4rqIRTcysDiH0L0Ax9ZFH1Bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761446994; c=relaxed/simple;
	bh=iqlK6tkG8Vx6yspLRftJK50pfYxdAbQ0cKmSbOC+yF8=;
	h=To:Subject:From:Message-Id:Date; b=tM+fS8ItlbkatCOVrm0y81xk3iRg6C1dMvNWjURJjWuS1rBkw1YSzhDTf9yOAJHFOh0QWq4QARVdCGphQSKcilFuoR/KOvwgxGZzoygp/ws1QlEIj1ioEk6MSIwwgZ9woLNqIuXDtsKDhLl8M0d8cwBcmEkt+R6QBAxYXaY+m+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mm/cizzs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mm/cizzs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03D5C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761446993;
	bh=iqlK6tkG8Vx6yspLRftJK50pfYxdAbQ0cKmSbOC+yF8=;
	h=To:Subject:From:Date:From;
	b=mm/cizzsJQ750o00HfWP/NH5h46AO6k6aiRZlF2/QOP3TzXaORH1qN5NlmllLxXGx
	 qeqvZDWNnczEQOLGG16Ud6x87bo2e3/eCE0V0NgtwCnbF2smHEp4+ffBtYHPBF/n92
	 Wu4RH2tgsHC8JU10P/n0F5jnYheNGV77PUyRO2/FaK//o6PVp9iR6kvH5zPgEhd9cP
	 NDckJ0/aMKRfFOS7q46iO9nEVcMXY+WLkYp1lUHj15tqCxriQ5ZC6z/xgiTKZnCt1f
	 un175CopKjsh3GBzyRS4GUTaMyP0GK3SgrNib1mh5v5T+RcAbC6UzwdkVuJTpZhTkK
	 3wGy/DiVjpZKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8B5CCD1BF
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176144699357.1542.14813899954099004511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fbe277c1b16fccb1b8c9991fdac4fd8215b9a96c1150deabe23d38f4d37a49c
Date: Sun, 26 Oct 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761446993
