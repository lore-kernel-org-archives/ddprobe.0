Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B65F2727E0
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773710094; cv=none; b=SPK3iSlHnSVAeQnGA1bgAQeG1Lcd3PiEhoVAxDeSKFc0Y1J44+mu2ILr1QTEL/vxrfBnjI0K1riBO/Bo0JOJ2aunjwl5rd1zB5SvT5HtIEy63xcrxxZx0JkzOOHlaCvoNxVqokDuzD7ZNS2u68Uil6c4tbETFPPi0+27kHzBTPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773710094; c=relaxed/simple;
	bh=aZHzSvunhsq4IWd40orScXMZu4UWG4iZG18FU6+lFTA=;
	h=To:Subject:From:Message-Id:Date; b=YrSciFV1FFfAAd3uYv19rGU+XVf/J3ikmPP27fcljaXm5E5arFONmtWMW1d4aBpfso3EDrqyLllDFA5cFGismmYzsXNRv8jLgxsd2D7hd/vVnbQLvSM7P46qeKBgVoXUxH0W8AfQRh5ai94KIFTmDbEsD+VALLDLTi3EzsgqZqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gFpdCVpF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gFpdCVpF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40E2C19421
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773710093;
	bh=aZHzSvunhsq4IWd40orScXMZu4UWG4iZG18FU6+lFTA=;
	h=To:Subject:From:Date:From;
	b=gFpdCVpFbP+vfaXUo+4wDsM29j6Re+t/bqfkbDvKnt3BVOB14+F19lhifOXWgDgvB
	 1LdhLELceciYLHKZvk8Sz1Aa0JJbGMD+1aUQJfrPJBz1Dkx69lhn+jMe1Tw9POxgvx
	 zVo4II9mKj1vszXv8yrrL7FNLOBvM+knq2ESEQDqFp3nrvvRMqKOufnrFjv1tvAoHe
	 f70SHSfjj265dVeOoO3p+vB2tC1BJ/nvoHHJKL1Lpy/Ax3QudRstmlkHCecOgGXbPQ
	 gvYKRpOsRee8aW9JEWGed+qiBL48vZpr/nOg1/PljlSZW6FwoXC8yxC1BYJgKfkggt
	 FA6FCYYGUGxhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952E5FB5E8B
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177371009357.14305.1762461232674796352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be5de0ba3ab6f4786caf689e751965a50b966546b56280cd47d04db81f3203a5
Date: Tue, 17 Mar 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773710093
