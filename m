Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D0027E049
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752161994; cv=none; b=X+kMIjfpUCK84h5Uarm08O/RKK9XDSEodubHeSwJrOEIdUCDu40HqFs+cHWrQOYZmgOFRrHr8Ja0ydrmPoKv6ZwOiw/dyyHhpsyAh5kHtBruo0BFdiE173K3i7PoQgMPUIxQz6znlLRCOH7//2heSldvl+HX04g202L82jFDZ7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752161994; c=relaxed/simple;
	bh=dYXQ3UQzHuX5Qqy3AuBud9pSJ60PH0X+za0EGrsRkMQ=;
	h=To:Subject:From:Message-Id:Date; b=r5bljm/2dQo++ZhpxDgDFy/LarAKiWEBGxUFQjy/fVY0RcCvgWht94DYT3xv4m9IDVCsft4ALlfyzn8gIHNxtJcKAq4Ezh1DEtDN7ZAR+K2nGaZcKZLdSxdk1kBrOsx+eJu61Pu8hgBs82D6R+1kLUxCCf5Zq7sopEClJjqu2Kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sjTXLqIR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sjTXLqIR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3942C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752161993;
	bh=dYXQ3UQzHuX5Qqy3AuBud9pSJ60PH0X+za0EGrsRkMQ=;
	h=To:Subject:From:Date:From;
	b=sjTXLqIRFAl5YEALolj38ja/RAxE7ERIPUgwt5C9X2y0ogsgP4gATMTGBUP9KYD4o
	 frOA8662PQzC99zsYlwervuXVYZ+vnTH+N9jkKtTyjA2E0SrTDYy8ohwSyGVhCJk3R
	 L5QKSkxPZCmV4xsUYifnLpNLFEPZVEYw61BuMAmWlSy5E8gKDBcpdYjTl+mXQTBT4B
	 m3id5Tpw4UheoUt/Ahf8aE9m1ZbMd+qRrEfzxWfcsRe8lT9KQ0H5jqN6eI3RsNqnlS
	 req8/9J+SLaeYOB0k3fwhJ5K2BFY2h1zQDIB/kJGp6uG0YnzvenCONI0Y12vR50rVB
	 KAPOspPQ3C03A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F597C83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175216199357.15362.3766186218804690727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a86bb706924887a8da3e2e9d8de80626baa8626ece256555a7493e3ef073d168
Date: Thu, 10 Jul 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752161993
