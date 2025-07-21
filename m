Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438612F41
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753135194; cv=none; b=L4WOG2KeEsPPJGRWhpfxEb3Ad5HwBBOt+bqmI6p47Qs79fF1hhLyPW8I7W1nTqQqgfevyF2ky14KtMGbpIG8gUOwUoCTX1cVWXReCRJ9QFij4SLivchUnaN80Ec0pU0PJt5Ujb7p+I0Rxjqc5oT6Sip0GX0fc76LwBT+UMkn1Js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753135194; c=relaxed/simple;
	bh=Nj4+swntF8dmavkhfNfUknZWB/xebzg+2PLpsDy7MBI=;
	h=To:Subject:From:Message-Id:Date; b=WvTDLRFTn9pvXWlUG3THPJGtV58l5jEARGXIG9OhTiyq6xUC9JPQn1G+snA7mrdfNjfVGbDX+zeCYkkj4RbuY791KSpz7IUMFtvtmcEwh2muDbcVsgp38OGo0nzJh0ucCdhDA4R9InmOoaBgifvqfPbDK/HqZR+DzuANgUTe55U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OdcizOY9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OdcizOY9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8834C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753135193;
	bh=Nj4+swntF8dmavkhfNfUknZWB/xebzg+2PLpsDy7MBI=;
	h=To:Subject:From:Date:From;
	b=OdcizOY9G0G5M2ELloIdxR30dg0r7hh4mUkaNxu0T49alE/9dnBArRSiLM+9FTV4q
	 3YKdUmzZkkn3+jPLlWeD9sv6Vsj6o1rhWt/IOmzwdPeWZYOXUth7d1Gk6QaVJvuLHP
	 TkoEkdRQ2hthrkXNA2VpFffSseTiEiGU0ihSjJksZY+dqT4O7VQFWBuLTLLWhpYqji
	 Qzvq8mTlVETRWoKARNNXrJ/A/IKAOG2/wngRhXYvhibOjIBOiB1XtXWQjM59BxYK9H
	 XFXTnfDMpHiB88+J+/VNV5fwmOSQUJoqTQ/6WVKtXL1t1gDcpvvmByzK0kGaUKigQH
	 QbmJz3oFOCBkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956AAC83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175313519358.7416.12694638328343736916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c705c0430191c6e266381d4bbe33c4405412aee0ca87ebb7e8e0e776d75ae0f
Date: Mon, 21 Jul 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753135193
