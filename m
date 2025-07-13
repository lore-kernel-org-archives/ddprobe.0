Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C4228506D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752432594; cv=none; b=LnlyTq8zt+gTOshwMV0XrV1IyOW1Dh0/e48Mwf6H6O+l5I4dGoOW0aJkTPqVP4Knt6AHYHPLkmvXhdHEClPJiDEaMZ4T7UHdODBWCdE/9wHjWZQf3kA0AXqpzAGIdpwRuNrgVk07WFp2sSnFuMWO9FwbjtIn0nglGI5Z2yDtGhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752432594; c=relaxed/simple;
	bh=fPDPdqPvA80RdnEa6YkcvNx7Y23hfGjnle7VYgs05mc=;
	h=To:Subject:From:Message-Id:Date; b=c34Lj7PNPQko949ewlRyP0fLj4rA6CVzV2vpe+ysqAlZWhoP11osMJcRSkqFa/8wrNBcGqEgNWEvWd0eebI8asXy1pGuSCWR4sk2gnZ+eCMFjfHP/+NSYJoeLNLTEV4HihYuOjJ9keJMDiBItF224jXUJbiF2OvP3n7eErYTEhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ib9XerJV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ib9XerJV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C1B2C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752432593;
	bh=fPDPdqPvA80RdnEa6YkcvNx7Y23hfGjnle7VYgs05mc=;
	h=To:Subject:From:Date:From;
	b=ib9XerJVYc03dBdO4KKKKwERqgMfR8+hzBgvWAQK2rClMbw2UhsuQnNal3mgRIMez
	 8nffZXekATNSjmsybuxW2cZQoLhi/olX7ib2F+XUGPuC6/r1uB7+1EIX/JfkVQ2C+f
	 4+B80H0y/mhpyY3uR0W5Ro+pzRLR/cfIte88QVdx6x7KLVkwkr7A5stMipx8z1ItFi
	 1gi0FJdYrSPvLxlmLYeRocSMCOhHj8O/hiQ8b3isp0rDewlAN4pzxg+gYM9lhXtGed
	 NZIGrnfIXIb91mDeEOA/3Cb8wrFQSDOoRXfOH4Q1c6yHYJxaJAX8wyCq82kts3rwvL
	 c7jsNzuxx06og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF4CC83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175243259357.9493.2658630894134302027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81e71ecafd23e6f0282f111acccef1fbce26fd22bd47b32e3d2abf769ed16d11
Date: Sun, 13 Jul 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752432593
