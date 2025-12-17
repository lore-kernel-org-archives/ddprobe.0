Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3485334679A
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765994034; cv=none; b=obhIBONtsuX/iZhfqR8my+db1hIFZmy4px8KHHBNrm9ijOmodVWqTiyrxcYsQ8eot4HGP8CRrRoeJ1hn9fauMIvDJtjPwl+ZEtOLLsgKwSVV5pZR3YfrhKCKiT1w4Fc0Pl0pYrPVFYpVwoMOb+pO39HUFHBBE18iRDq8SnOOZfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765994034; c=relaxed/simple;
	bh=2m1M1kqsNwrUmTPSG145eJ/z9ZVaSjCJdC6q1+XK3HY=;
	h=To:Subject:From:Message-Id:Date; b=Vla+G22W6IuDaZqUFNgzjtUEBcOsnyY9Yfatcf656WkntF07h3CapPf5ag5X0DOtJ/d0woKRUQSgtDWA9P1UnwRgJRgEzp1nxbB8IdayCkE28POlgD8aRRVP9cxh1Ey7zrKNMDsJNdP+9z8Ce9J5Dn9u2iHQ3ooKDXD1UbPRDTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ellqxfKg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ellqxfKg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67A7C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765994033;
	bh=2m1M1kqsNwrUmTPSG145eJ/z9ZVaSjCJdC6q1+XK3HY=;
	h=To:Subject:From:Date:From;
	b=ellqxfKgi5YVp0C+XLoJsiuKZJJhBbTVPqdPNlXf9PUom9bBAWejSBwbPelSd/8eg
	 OTRHl0Hlcfoe7rXQDqiazO24pE1JL1MxjLy06RruWfpJXe+TWFFger76TYhO1wVj3F
	 r1qkNk64L3SiUKMrL8HpiRibsuU/0JJL5h8jZckxMm28U2jv5rnMeajHg5KF9d0wFP
	 vCjcsoqvVY1pr3hcb8Gq57IXe6XQXUpjI2Q80AoyhWBIOiF3xr2Nsp915TANcOCXPF
	 i11Rm8WYCx88vC0wvwc7kXn4E0dHAD0ug8JmzNqx5DwdFBER5TSOHIX7Y+BZq4C94+
	 OYH/Tf9FFJlSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922DFD65C7B
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176599403357.23116.15681029960099260312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fdd82d7fe35a53fd8c0a5ec1f4e4810964e332ae16736dcc8bd19e705fc2140
Date: Wed, 17 Dec 2025 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765994033
