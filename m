Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2582BE56A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762927194; cv=none; b=aJoLvLqdNkpFiVuLQtKCpBvcQ3rUVUQHvosyNschzYelloetRXsKLrmXpV8r9q2p10zUlfmsUvToJ9RxepCoXAyJTQaaIF8/nPeolqKcSPJusgh+U+/ab2m833A7eVH4rHoUwxRN2XIqvEFObtO24tBhCPquQn5x4T+Ko1Rf40U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762927194; c=relaxed/simple;
	bh=8POjt3nFVLWGVCwSEiko6xcZRGZqmWgw25pOTj/R/eg=;
	h=To:Subject:From:Message-Id:Date; b=d0vAzYUZGyqIjzwzkwSpuiAFCDKX/cYytW+aj+LnpNdwOn+R1CbjM7pxpgv5x83BWh98vIxtQlqd0AaF5jI4TTdpt4AqobkMj1ESEHrJ/etMhLq/mqjG/nmPAkmQv7X/JUz6FoWbzKQ2JghH1NYmlVyMxaAOcesCewAFJMA2xEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LwILA8pb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LwILA8pb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B962C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762927193;
	bh=8POjt3nFVLWGVCwSEiko6xcZRGZqmWgw25pOTj/R/eg=;
	h=To:Subject:From:Date:From;
	b=LwILA8pbAr4VlHJq12JPP+fRGPIg9aqytAFxCzj4xgTy6MpSqE84Rz1p2OB3JumLN
	 iO6YsBrDUdqYCSBNeMn+tuxVIxDUy6RwvBFQ3G/m/Ki0VKIZpkmBtgjE2aO6upR7/6
	 8Cz49Ac2i5Fv4NEhN0s7VTYqz1pnmzUisQ4Hi7Hj+a1ajWRvUDMi9tK3PaPR5nJdTj
	 kemShjJfRQbPF1tMTpKeN3xjTi57xAAB44wsdniQTvK5l+/L3avuqGxwJ+A17FE7PL
	 mWU+HJb8vUF5AZk1argo/CgW9Sh/B8ksdyGuewyCceTkF2D5rntJeSZrhugZ03hPSk
	 XXKEOEnWYmCVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EED8CCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176292719357.2923.5553793850982697400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e05b62177c309d92cdf03d1322b5ba0f7e3743afdbaf5da5b559758a123b99c5
Date: Wed, 12 Nov 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762927193
