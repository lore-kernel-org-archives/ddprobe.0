Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3325334BA52
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758353994; cv=none; b=T358s6+5jYN+4z5aqVAfeHqGoWuJqR2x09BdIN7iSjhsifXXCD0hkUHrJrsAwfUMkwTJakkWi2Ad8IOZrs4MG3uIYHz8Y1psqWEx5aF4gxmZj0sLVK0xZadVtTOpmrU7QKAiQN97dZKjy6t2lOiqmskUISFLCO6l7CEA3rvijts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758353994; c=relaxed/simple;
	bh=GEpWP4CE0mXyCo3v9YdLz5+2FeV/95javFzu9epy8xE=;
	h=To:Subject:From:Message-Id:Date; b=lvCclz7tMDHSIUHLRiuTWrOsSwABJFv9Wieq0RUwpoiaVOV8ovtQarycCXW5GACtglmEHZhNUzi14fKMYTGoKk+Bpl8wWaja3u0n07Ej/d1sVTamRJT3Ta4wZT1pE2dTk/uaYV0Xdw8kee3kRJ2JQCpEgOEheMdOANk316RhpAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HFp6LY3t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HFp6LY3t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F122C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758353993;
	bh=GEpWP4CE0mXyCo3v9YdLz5+2FeV/95javFzu9epy8xE=;
	h=To:Subject:From:Date:From;
	b=HFp6LY3twg2c/Lx/WhgUvUK+bhRZ/73UjIG8L54LHwX6rVK5Cyp7Uu6z4bAyB1Rvh
	 EKMM9VSX6/pijAU8ygVA5E+HtaP8QJGY9GTT5ODg2C05V1XfF0OBIZ3BSNowtYT4c9
	 xzoAi8JRNYTPtrNY+kSsBxrpxtoWPBy6QaJq1RooEaSl1edMYouTjmMWNiySAdTFvJ
	 jWh9pE2tOJ7eLk+YqQsUHqKddFv5LmLNNPXpihZKCF5adccWx8bB8J+3Vu/3gGBqI4
	 x7EJAXfxzxxW0/umEtHOVFYehOCemuPknSWt0OEDr1lmboTNG+Dz/Gv4odT7UYlSK2
	 Tj94sv+MzWa+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C6FCAC5A0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175835399358.1027.4250177076648149949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8efa1b556f05a720c0d7444d60f9812377e46b593667809f4a73c4074306232a
Date: Sat, 20 Sep 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758353993
