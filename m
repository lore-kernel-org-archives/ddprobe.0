Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1D92B9D4
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724586354; cv=none; b=ru0PllnE8nucQJn7fF5KfnCgS/i6UUCxVz4ncR/R0hAKErwoeJazsGWeFU1NYPbSoz35RgImtoIjoUZG+Y8/vXKR3bcytCjt2WzxdpTJFdZXrtKkoQkcvxtHjG8dxf73Uvkz6NJocl2vpmBI+9S4fnpf93jw0nWaFUvs7OuifGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724586354; c=relaxed/simple;
	bh=amYcJanCSR0/nTjQFcUGyp/g9SS0otI9xNZhYeygJmI=;
	h=To:Subject:From:Message-Id:Date; b=KfwZZaBELzPmn520H2p2T6AOpgprkWIWxH1WoMeg/ccYLqqR1vnbC3kbKP7Ezz2tZfwURjhK8vz6Gazi8g6J9m1nAWR8+gaNnNrCxi56KreRjDRXYpbVb+17Qtyt/fZ6SFFv4iiwP9OkaykFPHJ1N4vYrk3p4KtrdMGGgwIpEPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FxiUJf4+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FxiUJf4+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE699C32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724586353;
	bh=amYcJanCSR0/nTjQFcUGyp/g9SS0otI9xNZhYeygJmI=;
	h=To:Subject:From:Date:From;
	b=FxiUJf4+czwSQceJf2+jysm2qnGVC6VQ1fHcHSu4enchDVu4rsU9BRLwBT4Vq5pe1
	 qmyA+GIdkuG25HUwhCebzfEo4jifk5OE9TrUyzES2mRl4NacXpEeu1ifYk9Qr1xJEA
	 GUOcOaPmw7khgBA4Qjn6Dy68XUW+diG2Sctike/TnwP0eaOdNwpPhN9Vvw0zONwQS5
	 lxzOr6qbeL+ZIsFFIjl5SHnalJ7LO7FV4EBZvNm8YSxEsGBqYERSyiQQSEktk9q3J4
	 LWaT0wUNo+2/xTGlefyRggpzosOGu5Op0TXLKa/xwARiE0YwxIM8vjmY95lz9/sbfA
	 U+ugJxXgb1Pxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA77C5321E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172458635360.24083.17728621220863930345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bcbec5d837a93c40debb3faf66dcdf5e25783f88c0538a68cb85c1dec91e4e4
Date: Sun, 25 Aug 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724586353
