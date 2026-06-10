Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF0E350A18
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 08:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781080534; cv=none; b=kq6LPwvLde+pX9Yq2flXIB9S5XoJ2oU02NwXwaJdE5UXGfmvoV24NtoV31D2CclaimTucw0nEqhtaVw4U304Wuzqe2luQA0hRQMLc5mIIOproZ5doaw5cD0IHe0SVYLAueZCYKwN2mEM+DRCnp/XOhtv/jYjebBTerPzBb9zIXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781080534; c=relaxed/simple;
	bh=j2eO/7O2JWXZmWTkiLuH6suWAHWz9Y3IMsxd/iKvE9o=;
	h=To:Subject:From:Message-Id:Date; b=UBw0x4E8Q/vYrYfH84q+3I8G50+mSIhnZaez/4cKzxdHd97RPCRARs21udH63aZxjJiP/OPSTgCSS5Fxag9UYgOxGeK3+nYI9m+tZr6GTyPKqGW+kMb4k7wszwOmYwqz3afW93oIeWyUF0ky5goWmDaS7EpiIz71ykqpBPD9c7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQo+Dko8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQo+Dko8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4B40C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 08:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781080533;
	bh=j2eO/7O2JWXZmWTkiLuH6suWAHWz9Y3IMsxd/iKvE9o=;
	h=To:Subject:From:Date:From;
	b=GQo+Dko8QYRPQxcGeJjcPmIsuh/oiAHp/RjTBD5jOc5ebtEGGbwIlHtWtrWbmmytA
	 KDlRAOdz0r6hB1usf517IsLYu7Z9wGiSOya34QKppyMb9eH04L3OiOTIUbzX3yLe02
	 VdrZ/7j86qBaARV5LKwEYu6MOPMRi8RQ4ZgZCJUWb+KDIakAp3yIbEL0vui+or8sJq
	 8GSuvY+Xw6KmD3EtgHUZwlBYHLxUSSlft2+FFHo0zmwXOhwyF6fzT0coqI2KwhYtP3
	 6oxN6ExKIrZ+NXc+J91+vXIqJvgH8gGZ7QJWmA9s8v3rFbwB+qXRcmiDCHQshWFRQq
	 y6llaF+ak+g/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A834DCD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 08:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178108053368.24461.3101097600262667344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49482b8aac325e372d7fffb03a49d6592acbbd53294a6bc3b75e2e10adfa4aa0
Date: Wed, 10 Jun 2026 08:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781080533
