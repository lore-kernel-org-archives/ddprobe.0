Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3885E368D6F
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 11:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783079314; cv=none; b=QJSKtpI5jXgJ5UwaP1A/k/Vh32iCzAJRgu3ZweQdZcGFch04m9qQYhZDR+7mpmBGbKzOOL2cwWVCzuI7YHv7SxyCPbNNkqhlD8frcC82blEdlkvnOlmJjhefhGfWlQXoeTGHxdzu0PAgjCs9PMLdSfC4dkg5oH4+jlWrCaR+lQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783079314; c=relaxed/simple;
	bh=gDFAx+WPZREBwh7duKL2trjt6VzXBStjmQ4kYoNdpYA=;
	h=To:Subject:From:Message-Id:Date; b=LjsZUU9DnUI+OZOhJ57QlbdmZGCUm804pSFzuX7uGXL17juakGQFvxk4/wtolg+5KpZ5j/x5d5HO5iXYxx+XA2B5fEmzhxPpx45Tf3sV7dv9fRRbipvERQTswG40ffa1L7xLQ3ToprWsgIXY6eiAgJljuEsEwGeLnUzH9S1Dwg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XxYWBv3x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XxYWBv3x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A99C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 11:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783079313;
	bh=gDFAx+WPZREBwh7duKL2trjt6VzXBStjmQ4kYoNdpYA=;
	h=To:Subject:From:Date:From;
	b=XxYWBv3xXt7h0vyud+FC1r6h4HjRO3EXG2E4awAONc4WmbBvNSCXDIRZVPMCTYbTL
	 AhNDcPUITDMhBtITx0jlF7vtPUKsXzDHnClGdqe/ZDY9uHDkiBJmZhxAAfF2LZD9fh
	 ThfNdQShTzeIapenEgBNGp2mibuLHpteeuEgbEvznZC9ajxOupxddQzluPtev9p3XT
	 TuL/CEjVI0cWg2sHLr5pxqerg0I0DpqmR2ijSNgc533o3UOLq/89p4A71wM9nlzPzJ
	 vzNfuZhlzFIrB2AToeqUc1epBB+ExPEaxL4cX+MQ7KpE0N4l//YsSk8nefZoOi1UEf
	 Hm0BujKlLZxSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7E9C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 11:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178307931369.732.16299094621810342098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35c6bcdf5aeadde664f7a0d271300a24b9944bb6dd5c29cd3476a6d361d52a20
Date: Fri, 03 Jul 2026 11:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783079313
