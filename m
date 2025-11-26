Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476BA219A86
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 06:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764137574; cv=none; b=cix7zsXEkAKUsvGdOhg17U2EFPK6Jaxu7iSDbUTySrjkTMVg7DIbPqFDvmbdXHUvP99NESO6J9bD/cokRQkB2JAlvWB6Ax+CLJAsz76u/7EcwoD2j3xwtXPin4oo91SVs5tC6pkv2jsouZiinoPHBPgYbZOovoHp0FucA/V20tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764137574; c=relaxed/simple;
	bh=+V5PfvBwX8Nk6X+D34/+ZL3510+0nP0UhKIIpPuohCg=;
	h=To:Subject:From:Message-Id:Date; b=SonSyPgQ46crGeAjKzoSafprscTA3UI2HkgMArcIkNHMCmm9cTIAVB2fD16O4qMTgEe0JlBs26zdZi9GUQgXD5xMbmkv1xmQqcsDSCjv+ySs7I09QAwAlf2xfyJS7PZs5P1OoICBfOIUbKvGnxN72KCV4xOOnmKB7uxSrRQw+eQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U85iLlcz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U85iLlcz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C73C1C116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 06:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764137573;
	bh=+V5PfvBwX8Nk6X+D34/+ZL3510+0nP0UhKIIpPuohCg=;
	h=To:Subject:From:Date:From;
	b=U85iLlcz8gDiEUWmu2YE0iNub4e3dTIyIIj/9HW0sT5rVMFwJLQPcNJpXonwyBuyQ
	 IDDtcL9OcW8t14kUNM3E93Vw+g4CxRwZU3vSUwHHGuYNg2rhQApONxVUbUxuSQC/LD
	 ykpk8bX9FFqguizG/XdYt7DyUy9y+Mnm9ma9n/aodMiDCXiYQ3v32NUixTcKDOJtLR
	 E1ZSDUjvAObabEmZQV7ilhp6TGOdJtMSKrGC/oaBxYlqhnfUNQM1ZZxRy0AVV255lc
	 BL6HQrHhipb986ABJHdP9PJIh105NwUGt4IOWx5QqNROb2X2Sa8MgAQZ9e5wJbnECk
	 buXSFvZthyTkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5F34D0EE29
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 06:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176413757369.17147.390919480823093031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f7e0541ea5e2f34b750caa1f8d43bf21b49ba8cb7841946ceb57ec38dca768f
Date: Wed, 26 Nov 2025 06:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764137573
