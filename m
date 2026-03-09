Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8C4223D7D4
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773025494; cv=none; b=EDkh36jbgl/rsFXa9m7KdNrA3m8n+QIg3L7Ta3LYSYAnVwcz47VTB2x8fS1a0w0TtZ77qtKH5oXf6ou1T//rT85WU4Xc9guMAvc/mCqiAOOyYl7O4jxyg4zA6pkvg66sDwRme8yVVZbiH29QCIEc/QO50oz3WMwo4eFoaCnVaVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773025494; c=relaxed/simple;
	bh=9q6oytysJd48H7fPwA9fZHdPhHdk6hcXRh1WzKP5sU4=;
	h=To:Subject:From:Message-Id:Date; b=NM8FMNv+mhql0wWiHVW0k+AztbSBaJrxJt0GFL60v8zUNJ9YZ4WCssxb7PlsOvP52RRU6ztnA46EIV3p2aNHNeOd9YBG30ujZMJZq+YEdU5aVxyjy6OQzDjoy3dAMdVkNKAhy8hhzycIp0UAj/FFNpdSORurr3IkdH2SIdDjiYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SeenGR/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SeenGR/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2804C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773025493;
	bh=9q6oytysJd48H7fPwA9fZHdPhHdk6hcXRh1WzKP5sU4=;
	h=To:Subject:From:Date:From;
	b=SeenGR/8lyJ9iuMKxMFGaRUiCkwOz89iSzU2Mw4aMYSzKGv0UAPAqMA5/Cy8wTi+B
	 i4xezDEkYfFVk6Uau2qdcUsP6w6rOKxkOXgJw9lmcypYLSpadO5zS+e1s7OPmqib/P
	 Z64g5/Wb/F5Uq9RJo/dYIoJCmJcNG3DzLj19YgpNe2GQWO5ecIp6xKc3lR+in7BrEb
	 wKqBVw8sIOcuOMgi3K28mYRzDr0CLRQUyNo3nAYr3Vs5e3kUoDGefZwgfwDlwCbDfC
	 6CKibvs1lEPQ5glloSQ7bWDe7rjI+/71+gnKmFaEhLjwqvpikaVs2RnE9pMFLTGtod
	 PvO3GX4JlSOkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91928EA8542
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177302549358.5086.14056460544243283326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81631e6316b473bf7db9e1d9e7724455ccdfa317a99986b224a9e279de0f7397
Date: Mon, 09 Mar 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773025493
