Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8A53563F6
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785118834; cv=none; b=jqWP9m/ulBLq/Jc306zQ1AtQ43RYn0SE4WIWCm4U2tDHAO5HJrTBNLHsH1WB/SQ0D3xQhsmd4nW0YSKUd22kNrCIZg5HZRQcxuURqN08fm3oQdNbG8teW7ZDCE+i3UkI/ya14AUIWBSqPD12Hb/m6l7lCeYyp65+sIOb2K64Er0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785118834; c=relaxed/simple;
	bh=TFwL6lLGpGNZ1Ej3ODyzzdaVD8GXbEV5CkY7KlSs2os=;
	h=To:Subject:From:Message-Id:Date; b=qor0i3Zyw6Pa6fWJtTb8r1uZsZjqpYEwi1r+1KV8dciXXksFfiRdLY9M7UFez8wXdfxb47hhjuXNq38ANY6QS5LwToXEvs+jcAmkgLuPh1UgZK7ykn8SSVUFOBQ0OGCtJ3vcAMISAW3BRzdT0ddPZhHau/PO99/nUa3CIFCSahc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z975JMrn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z975JMrn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1FEC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785118833;
	bh=TFwL6lLGpGNZ1Ej3ODyzzdaVD8GXbEV5CkY7KlSs2os=;
	h=To:Subject:From:Date:From;
	b=Z975JMrnT2rJUTV9okrLQUswydkjRy9GlXjCqufZ5zQpa8+4AzbChDkthARtb3xez
	 dFEt3YSfuKRxXaE9qsURs3iqLu23NqHxZl6A1pSZVnZXr9anXzuiG8G/dUfyDMGaNF
	 +TNAE2Ffn1oqYhGb3ZOw4oQxUThWxj7pcLb9r4UU0NI7sguNF13ZE9kZbRfCTPbb9s
	 Wqw4xvYEokQFdNWUFNJs9yXE4A2DJmxSuOu7zBItlYpkYVcMxHQOjEZTvM5E4L/kz2
	 /Fo6cI70JAmFsl0L/a6j0t67wQ/3GWB6raRTmpd3HAQQyzFH4k0Q3ZPSFaA7SdKKs4
	 tr8Gpa1caLCFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CEFC531F9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178511883368.7590.15256702523974903766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb5784154d8b2f1d5fbefeffed70f61f66c7916dbccfb7618d005718b55e916d
Date: Mon, 27 Jul 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785118833
