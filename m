Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3735E14ABE
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 23:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782690514; cv=none; b=bFBNL4+pXluhGBuuseDhEfuNI8i6IoE1/59lnwgHNpqc797DWoA35M27YtbTk+2K9aIqWU7aaOlW+4t3T+QmyRDGDz2fkdDPkg0Y5l3XSjHDsuCJMd96TffGpAOiLn8rdGmwiM+PkVtYkD8JbIVZI0yDpfoajY0qqX0k+k+eC6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782690514; c=relaxed/simple;
	bh=CeT8H8k3HdNN/oAvEpDIVTAgEWymawpMx0+T0vcsu28=;
	h=To:Subject:From:Message-Id:Date; b=F8lytlU5I+qwLd8cfElBSHlUqxS+jXfBsi5g923dJOG6+mS9zac37T6j/+MGqVZPfep6XB5XxtaLeemz9JVxXKmeCFBl3mfywSWvMiBtPK8neZu8PlMtaLo94Q9tnw97dAbOadIkzvYahtd+bjwoxlaUE6qswkLtimtCW5JYH38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gi7SBqIP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gi7SBqIP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD94CC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 23:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782690513;
	bh=CeT8H8k3HdNN/oAvEpDIVTAgEWymawpMx0+T0vcsu28=;
	h=To:Subject:From:Date:From;
	b=Gi7SBqIPF7LvxEErPg3kCjXaXaSV9iTaFoB5f/Qt0Iu3DqfNNBvySbUi40Poy5S5j
	 NJ7blWh/hJIa+mk3AmKsfv/KQMYqLkokLlaiQ86jYChexyYiQxlcSN1CxV2BSCTd8k
	 5VG+Heya9uR9FJQeqpvVJ8Rdvrm0kTtvEUJsO5Ric21LDR/h6JA/xKiFINpfd+Hqt3
	 hGMXPueAfYKwaYidKHLCk1rO7fjhixy1S+st6pHdCfoky6Gf0wqInH7U+rD46F5nu3
	 25jqaP1wGPMgPMgwFFOF3sg4IskF0RbFb0PWc6DlDJmLcFg9BgeoMquU7xAwxY0qsZ
	 bkiU1quCGU+dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCF1C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 23:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178269051369.24201.1313446006477155739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b2cddb6dfdad7ca882017fc718c0296a89882749199db44ff0b6fb24244e3c8
Date: Sun, 28 Jun 2026 23:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782690513
