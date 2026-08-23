Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 649C71C75F9
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787513434; cv=none; b=ZG/23bt7mL0EwFUmYOEJ6YsWgFZgNbWdxQ9bbvXlzhQmmnhi7OuzXcT1SvKr0Y85F10nqGjnVvrB+xFZZlYcuiZVb1uPVZrar8oQaZ2uXTCQiqa1pbYLjW/fuceacm/bc84bGFo4415vX5ywKPOf7TzVJjjRTAUraG0c5jED4S4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787513434; c=relaxed/simple;
	bh=I1fuB6Agcv7ELNVMsSYwqTf2pLa1BfUf7ct/qAa2RkQ=;
	h=To:Subject:From:Message-Id:Date; b=Uuz2QZEnTXTAYL47FQoHrA71vvUFoM1nFwjtXryInG1NDUWO5tEXs57xt4lEuTsU4uvPCkSOeo1KiATqZ74C+pGLCtMYFu+TXZa75DBmhQoNkg8cZsx0qCW5QTLQ1uuvky32YFgex8zgi178RAKLTpzjm1tfo2CxJdODZO/3cVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q+YNJCpK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+YNJCpK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDD57C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787513433;
	bh=I1fuB6Agcv7ELNVMsSYwqTf2pLa1BfUf7ct/qAa2RkQ=;
	h=To:Subject:From:Date:From;
	b=Q+YNJCpKZ/RNE8wtp3L75o72Ohccq/+S7fGFDZ/jjrhOBEnV9jTR0+DNflBRNWFXu
	 /GjMewoBJV+oqELDSA54ay+ejFidx+IZefatsyy4/2g6qunBT36W6BbborDuzY01hI
	 V+0UmRDCkx91AgHZelztoKsoPf3Ejzm1B5nmapj8T4yT5kFKCa5MZWfb5ZG/zKkwbY
	 tc77c+KXFIPnwzRBJcdaF+pDrkhtdltCDZah2SUXdYDaaBNRDLzGFJpE7wdOOidSLG
	 4jlcijNrSm9Au1kqpcJjvcJRTzGAud0M1ve/7SfVGn7Gjtmi0wezqy35uzB+wEWMvU
	 cWaE4SG4FHwFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B84D2C5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178751343374.17362.4454109439646892592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67160c89cc8647229fc7b89081141d81d544ccadac1531d97424d17448430e9a
Date: Sun, 23 Aug 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787513433
