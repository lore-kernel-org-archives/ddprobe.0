Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D8B1D5174
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 02:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775615734; cv=none; b=jTo2mIeRVlZ2h1VR4wDsky7gdCoM0p3Z5wwn+ukl+RScfMfLM730kcPKC4pqbWY057N+ubsAoVWpV8n0Anqc87rmo+Ze4I9G/wI9uvUG82A/33iYzOpUA5T6TN/5333w9sS55gnyRFvNqi6i3f/fDW1VuxOdBU9qoTC6QiHB/vI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775615734; c=relaxed/simple;
	bh=NDAY2PiCdVwSXJfkpM9XJn/LHZpSOdamYg4TSnWujXY=;
	h=To:Subject:From:Message-Id:Date; b=oFjk1XgOU5vNWyLkkl1jLYmuKiSqZRYVLPM3QZLP38cUyA8FGKR5nmPr99Dl9/sG3RYKtMSMcMeluhLyCXBPIzmdqxwDnAGI4V40dXGTqm85PibW3/kzY+IdyALlIkfv7qjHUWV5sQc1vYslBEKSmQBkrOSzvrFlguOXQakdBDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=COJ2Zwv2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="COJ2Zwv2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07C3DC116C6
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 02:35:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775615734;
	bh=NDAY2PiCdVwSXJfkpM9XJn/LHZpSOdamYg4TSnWujXY=;
	h=To:Subject:From:Date:From;
	b=COJ2Zwv2X4PP2ItywJHXwuD3w63wIREb+zFdieo0qs/a4sh7s8k0rARpvIhKh+pkd
	 6ncvLcE1w/g6NJYbSJXzyOVtfChqBhPrNja5CQnhHk8TLWl1VrErhWHTXXMsKaLLhq
	 IonIHlLWjUIxvGglY/HBaCVThgVdmbbTUV+KYRStb+5RsjzBp3+jz+6CE/8vzS+V8k
	 JeEZpKNiTqXyLjwhgimdcid5ooNSwA7wYkG1SNHlrxAx/z9Jr4IR4TINYICdcNT21/
	 w0m+A7zsZJFWFLxDobpwHqqB55dLE+o7B3S4i2MqSGAQfFO/xa6Qz9q3aXnSX8Gkrq
	 EqBrIXqiIfNcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE80C105D999
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 02:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177561573383.15502.9701030804459040332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 389a6f0e2cf8ed77e3d0fcc8717d9283adb6a9a85f75fec378b72d3c8ad98f05
Date: Wed, 08 Apr 2026 02:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775615733
