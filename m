Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5BC1BD01C
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724764554; cv=none; b=FEetLZVQ0wFoT8uWABKtd6l9LA3MSTNQUQdNyWMRJaSUk2RyiqadDLC8k1U1VV5jfdrbVUW2QMLjTwXRiDaTdIwvNvp1rzEBAQgGz6R3u9IYG2ur6i2ibWxM6DHQddDVIV0M3QXY0zEBQb1fMAoNaoQ0SS32DTFvP2F+lTxzr9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724764554; c=relaxed/simple;
	bh=ds4zcjrbMjbzOeY1AuXVAPXKbWO0nYUfgSy7Lv/ptsM=;
	h=To:Subject:From:Message-Id:Date; b=igfzg7EjR6XmPwWF3xskMzPMPn3tSsFNovGCiFA/kiVR2OZWnbVI3xd62wRvsFm+lshRP1yCpmGuLbbgvpcKfGcnlBqzH/b0zqJ+d2TQhNYRb5cs/dWpwtNk/CIAmE9IfAD9CRjfXhz14NUdFnrc1YCjoE7dzpTUjXIlDApYpdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hEGi0hIM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hEGi0hIM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A569BC61042
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724764553;
	bh=ds4zcjrbMjbzOeY1AuXVAPXKbWO0nYUfgSy7Lv/ptsM=;
	h=To:Subject:From:Date:From;
	b=hEGi0hIMe9hkvgYRI3r0ZcDT02bGKaUu+M7am37XBRYsTVJ9i2mxXwWVxOyOerkj5
	 u9wkSiI303Xm01s3TnGGYjr93YFVlV46KaovyoHoS+Te6g/KkY9LojZESqb+Ufa886
	 sWUdOKjfid6B/xmER6OR7lFEVLPsWm/HbTRnNSSh91zZW1xSWM9Q06OGGWLkElmqNi
	 +F3EyFBeVr3mFa//VXRk3uYEG0sCghFmlXKchYBrMn7vM1t3sGiDd+3dvl0kl7lZ2W
	 +ptziKq2qQw+x6XGeDs0aVLmh+5KrN+TXCHwu0fhTz2qwhN1UP/MkrePd4WNs0yJ+l
	 ahKZmoTBryaCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A12C5472F
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172476455359.8545.16238425149059548933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2e288cfa4d49329aabb0caddaae1f7b26b18d9864f4a71a7f4e918d8e049ad7
Date: Tue, 27 Aug 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724764553
