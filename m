Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78C2840DFB7
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 04:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776831454; cv=none; b=BJwFy6Lf4TapDbSwZR9yfEgPyaZhtw5NFL1Sbqh5HjKzrEiT6C4r0c91hLNDYVdh51rN97XhZndlvheiEVEau2yc75dGQTZUV8E0818C/z33UAaKAwxaWOdCJ+5E/1zBccVLqiFNI/r+Mq9hCLknCvKMo2KGz4BZG1XTPMrIeiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776831454; c=relaxed/simple;
	bh=TtmEkn4qVHBuLtuzbmY6IjWUIs3SRgM6i2/+pVhRFB0=;
	h=To:Subject:From:Message-Id:Date; b=JwlvKrWZbipN57usmRZyVMlgtvAyUTeQDU6qZC4LQ5gjycPXAV6aChvemtZvizWeIg/tg2x6+ASVBHhbnsins6d1IsOdtpysamyQD+XnPzti3vKPJKIHBiJsKBhZoXXqMRR4joCaLMwxODkJyvhsyRu5nfPfeFJ59GgfoSlBdLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FeohDNsF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FeohDNsF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9055C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 04:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776831453;
	bh=TtmEkn4qVHBuLtuzbmY6IjWUIs3SRgM6i2/+pVhRFB0=;
	h=To:Subject:From:Date:From;
	b=FeohDNsF8yDk5s/5mL3OrsTEUwYM8X49/xhZUG9vuVySqj9BWHzvhPi4fTK6LminT
	 ps6e+jvZywJ3UhmkrwWQgStUlf/BA5DnRJrHrotDuze20oBlh5aJQzd1mJScBT8FzI
	 E86Lp7KgkKzhMTAJ5wDe2HElRpWzz1lKLxRRXGruUz+Rtvnc9w3aMID6xVT/BeIimv
	 bLNkbeXd9E3/oB073GeCS/rIdd6s98SPEsjyFSTPZ/dgsZU3MMyl5l7ylskMTkXYZf
	 grr0ulvXjCX5pJho4DI32i5pzJ5U5OHB64wO7gNnSCfxRbSoQsAPQFBAXq4+a9Cpyj
	 YaZyvKCznp/ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB068F94CC6
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 04:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177683145369.13930.16172007108489636519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dda073cc229dfec90eabdb6d73768d22bab532da3f6aebc01eb8377cf2b922e
Date: Wed, 22 Apr 2026 04:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776831453
