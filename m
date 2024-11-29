Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA21184F
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732857354; cv=none; b=n4yZWw3DluOzF00Y1CYzHdLHccR1U5UTvtkvPLoeYBE6FqFKcG0M6zZ8o656iNM4SeiS1S/seIwcUkwvxa+eCzEkZQW64zIqThvJrxNFGm2rlpJpq9/DrDjpBRoUmuWKfI03bmoZa5NkzagmeyyqBMXsV6xd6qzN3XPnT2AaFUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732857354; c=relaxed/simple;
	bh=kg9E0sbbeHw4K0AQDGY4oe62/qMeHpHGL1CtL94meHw=;
	h=To:Subject:From:Message-Id:Date; b=YkIX+BEDdHhDUA9nMnKS0oVdVdgteGNyRN1L967j4CFu+DRD9qmm0JOvBeaJB73SO4Mds/hk/ePFWUvHMPKVrc9+bLFjY2P2fHBQEVIBwx5HMvkxoTg1+J7A6sBV22eZmdrsA5XKdCLF7YkcoU3nbkGfIERZoHikLrChNQkp76A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZvjwMZ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZvjwMZ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6DA1C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732857353;
	bh=kg9E0sbbeHw4K0AQDGY4oe62/qMeHpHGL1CtL94meHw=;
	h=To:Subject:From:Date:From;
	b=BZvjwMZ75+THrRTjH20xtdjhD+ZnmZcZkWBV68fQVDk+BNZbFnUEM1FxOA0F6lP9H
	 L4f9JrvEiJVKWsECMQEPhSVwg8I//yYA7ZaeKnUo83XNxf3z8uLg+Rsqx64pyIryyi
	 1X3QSuSwjE845oDQeGm+xOK099cE9npvu5zkcXbXy+CXW1UuOQWiWMSmVPqz6sr6sO
	 dT5m2MFEHl2LG0VZ02ESPwpC5tU9rUyRioXLNt0UKMFShhOXcAr9qwxK+N46vto1yH
	 l61Pt5lxp+H7Pcz7mmHMH124/bGkyWK+VjXD+gHM0c22k0ReX7v6xeJAOtqOSryDxz
	 vQlMa5eIQ8hdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E82FD70E1A
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173285735363.15607.17934187701906016604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ae9bed6d418a91cdfed788b7277c5227d55593dae5dc2b82196c2026203af52
Date: Fri, 29 Nov 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732857353
