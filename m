Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E6A17C79
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726319754; cv=none; b=odZKwVKYxaYzGMq2+X4XiVO6n2RGiD5/kLhw9K1kjl2FYkY5viv97vTiFIEaKCdl1xUxdoezQlV70J0BqNE2ciSj+mOx8OJepWcfEdjFdqoO8LY80QnAGSLKEp882m6SIGB3bHmCOup3KMEY0npdK/TE/fzjAFzIOBlyOsL6S2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726319754; c=relaxed/simple;
	bh=xKvTt8+DUSPlgtBEblRjcXu4JY2idtjjDqSES4U9mHg=;
	h=To:Subject:From:Message-Id:Date; b=Wwr/RjrOsOiOsQUucwHGv8bjWELmqwzCMAXPDNhstNQpK6/UWdjYaOJ3gokygNqBDeRcstsAsGWMN0f1cO/elcmXh/lEZYzQFj0ELFEEV5xRrS79/IIsltMnHgGv11no1nRtI29/bL4mgPRsxVxIZlw7n7bhesJ182Sae3sZPCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vPE76ayb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vPE76ayb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B271AC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726319753;
	bh=xKvTt8+DUSPlgtBEblRjcXu4JY2idtjjDqSES4U9mHg=;
	h=To:Subject:From:Date:From;
	b=vPE76aybXYi/yIQN0v5JnXKIpG6ux08zxkmIHLuMzfNOyep/egonhU8vcrrcl/nUB
	 5l8MArRCG/cb75xmARUoOb0tz598vFr8wyyfqPODV+RWnVzJGFu9/NPEHbhQ8Z7/R/
	 jsM2mxcza63xpNiw+8HH/5kROcoy+DTqziBHnTFyhsuT4BjoHTFI2cmVn2L7kt/220
	 d3F8bJwVhu2C9RZBYpvQ8SciMm0R6XMivWyJF0XBg6PtN47z0v/I4HbuOT0taeZLbC
	 EEmWeS2TerRExcpavoy3Dv3dOHbErY41tNRV08WetqsbeoNASqItMFf4oxrOtUhmDn
	 goAKJnpmkwJtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3819C02194
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172631975363.20784.16082108840662183962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 663216476564ffa6a07bf14037823fa7698dece556a7acdfdef846cde5db67df
Date: Sat, 14 Sep 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726319753
