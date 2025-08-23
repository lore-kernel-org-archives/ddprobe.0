Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455EC14F70
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755927594; cv=none; b=NxMgYM3ycYsW9TfnC0x4TxUVGqGj7WbeeGrkl06hePfwz6YGswF/7iH5v8tmmz9S7ORIvtGcIY4DHCfJbR0DTVGNW3TJUFL+PD3wNq4xfT8zD3O6MjHObpPAbGTFn1C3aanAWpnEOcfgAg9p5iCXF6ew8lxubH520hCntrlZbUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755927594; c=relaxed/simple;
	bh=+g+21cIdadoT3HVjA7ESycK19VV8VsSmAPPC3RQNoWg=;
	h=To:Subject:From:Message-Id:Date; b=fm+bjBR1VvxU3JlGfoZWyNrApT2caWJrYkF+X4WZdA9oiPeDqC8trlCCABq4leerYeOu0pCYw5+UeziHYkM1ZD7NaIYLooog1GQ940V9PDnKxKe/wReOpGvSd2Trywajq4E56wKuC9ZOxU4ZDfmfwmGJfaRuLCScUFtmOMIeT44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ws9MjXi/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ws9MjXi/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A629EC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755927593;
	bh=+g+21cIdadoT3HVjA7ESycK19VV8VsSmAPPC3RQNoWg=;
	h=To:Subject:From:Date:From;
	b=Ws9MjXi/TtOVyJvLmVtYd7T0Fw14N9TRYtiA/y5FMlAbD9KC+WVwDtXMxRI4Rwjv0
	 bALBPgCJRvQ+WiBpl+T8l8A5eTemOaMerDgAqs97lpG5mkmyLecw7VgrzpvMdaxYMo
	 5f+AI7bmcWJZ9gmc63e8YtSkfklKLtK8TiOFc7fAUFb1ZMEy89c24WcBStpw2GszPY
	 v6r3X/NZjusJNPXYsk3DOINmYZcjfPRI3BioZd8uucBpzP0HJ154MDp2fbzysyGT+O
	 JXMy5BNTZOSORMrVhyiIBZWzL3cYtNpZB1V7ihwsxnP8fwAgLZ35BhQc4U5nZlnTM8
	 KQHYV2mZmexnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BFECA0EFA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175592759357.7051.8432430623224904981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09a83e27883bf54da265f5909218ea9544f787b84a69a4d4829a34ce966def90
Date: Sat, 23 Aug 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755927593
