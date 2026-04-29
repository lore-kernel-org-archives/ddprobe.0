Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A66D13B58A
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 01:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777426054; cv=none; b=TVhzHack62UjLBzLthtieJ3dASviNf5kcm3LVFUvsdESLO410VrDF243eCaG90l3SEtLGNQXDt+azSWt3ZaxQRzh/6GZU4BOiThOphkVqsa5vOEAt0Z2Oy10Uj9KnWVM5o/EGalDvW5hZQeDQNr5qbprEbBe+2ZIFYipDA/doU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777426054; c=relaxed/simple;
	bh=Ey6VH8ZFZ4m4SNcivJxOuJixxODcn+8FE4NRiFAcm74=;
	h=To:Subject:From:Message-Id:Date; b=X93cke1/k+qXM3Fur4bW1RQo3YBwoxh1Rh71mJfN8rMz8Na4X/PGVudNZtANKJlMVJtDBTDDAJg6uSNzNboTqR1PwLOUIyUhl2q8xsMehLdde7H4rFQFfqYTVfL0yZMeCp83laog10Cc72xPAG85LIQDyin5yjK7D5+XwCeTsbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PqFHTYmI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqFHTYmI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE1CBC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 01:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777426053;
	bh=Ey6VH8ZFZ4m4SNcivJxOuJixxODcn+8FE4NRiFAcm74=;
	h=To:Subject:From:Date:From;
	b=PqFHTYmI0Fl93gE8/a06f3bAg0Bpoqa2sUpivdm9hFmFiQ2GeJygbD51YnELp9OZI
	 CFkhgAbT4HLJhUhRBmTtjA1CJSoFpzUx0U6ujADL1ZCEklTw0LZ/RpVhfw8suTwEAg
	 CorDNLd1m3SrtKpMwiSKQKHRHayzzDNv6v+9yncbF94DfsFzkL0S44W1GgOM7xgIM4
	 FFWM42DnadfnJCrcRTPPtIdGfdV/KxZIrE4lVTZxYZRUaO3ZdtfP9yVU+225WjaXw4
	 XVNA3KeJe1pSnfUwjb1aCeBwHHrBbkNoQVx/wBxo/uGIByWcdPZtls9x74hy4lcGr1
	 gxkE9g8f872Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB44FF8875
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 01:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177742605369.24713.6963720681237772358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14a16812f5ec0f08ae1550712616e87a4a40f9173e6b009be18d6a64d1970863
Date: Wed, 29 Apr 2026 01:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777426053
