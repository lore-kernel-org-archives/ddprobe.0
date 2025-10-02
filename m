Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2839A1F582B
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759405194; cv=none; b=hbILgeHtQYWtPgeL22AWPtjcvAHMqk7+eTV6a2+L1txu66M07uk175auSbz4YFozPsyBb4BoxqnHRJ4V10QccRaTG69cmsEs2BINEdcdfpUEh94qNxEZjvRwEWggftWOIdN9IPmykeRy6E7AEdq0ZQAydyfIGhUk2GkbPmSR87Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759405194; c=relaxed/simple;
	bh=vfVtCgDC+uV01vhL5ZHsFR+WTqy8nkFHJbUPZaACb0Y=;
	h=To:Subject:From:Message-Id:Date; b=fF/tTJwFLc7cXALXuVZvGtxa6h3IHUMKsawfB9Etw163esOVbMNl2h1rroNKbXZILYb8XLEe5gpLH/1NzpDXZh3I15m97w9r9DNtbJrVrnpgpciuDyB0EgISV6+e+OUZIaFNpTy7DCaGBrkND3K1HT7MjFIeL8XwAd0nct4y6sQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z/d7+QV0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z/d7+QV0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46FFC4CEFA
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759405193;
	bh=vfVtCgDC+uV01vhL5ZHsFR+WTqy8nkFHJbUPZaACb0Y=;
	h=To:Subject:From:Date:From;
	b=Z/d7+QV0KWN46BwkHlBPvwgNCFuTO7Mn5tfp+VSKmBnjqrx6Lmt48S3POivahk0ks
	 Kp6KZdbH9FINKWQC3y/MKSqbB6svuwC8eT0r9QLWDF5nSjk3eBNEU3kDUDufy4o59t
	 ORcCEXEiMevog9DnODNNiu233vKn+N4d0PzjRulXLK9EVzBEMJ/pE0AnXhVsY7mElS
	 YUnTQneLJQoJQbHWFOuhENqruEjvoj7In9oUnZZC/E1s0z58Jvr5BOwQVs2XGRY71m
	 UlwWSp35IOcNll4UP0J1j7533/EkwazzF95MlfqLaDP2mjnjViQ2MsvEB0yhqQujyP
	 cfv80sngSv8AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FF2CAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175940519359.32132.3198547041950490371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fef01242101ed6ff0efbc7278af442b79e5f768c3015ac7459beacdb1ed303f
Date: Thu, 02 Oct 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759405193
