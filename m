Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267EC1F130A
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761940794; cv=none; b=CyIOzIquPihJj1d8UxwTq2gBzPbWj6UiSYHV/m3Litr2obZzGTekZpQOR2qgdEIbGpenCfS1B/U4W+QA9huan7nz1es3jEcSGXusUAe1h9Pe+kAquw7YJH1wUo5/1FkpJOTYN3mCSAL18XONuh4ztdaEC1/sok+lJlqd8cQhQbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761940794; c=relaxed/simple;
	bh=unuPdQ5Cm5h+NN7pAdagJJZ3h5J27y9lnl8nUyGfUvY=;
	h=To:Subject:From:Message-Id:Date; b=KAS49Xu4Oc9AhnfgG1xLvGl1QDMrmIk1IqEcjzF+0QdgnXZbW4rfqqeeYKpp/JHBXvNbzRp2OGZCAWZxdrodfaBQK+Ak9fys+WsaMW4PQFEDzjbf/nvlhVyT1wQTj5R3u8e3U5ZY2s1N2llRoJoqcj9HkBc/byEuGB2DI5ol1TE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R4xlEyaV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R4xlEyaV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A661AC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761940793;
	bh=unuPdQ5Cm5h+NN7pAdagJJZ3h5J27y9lnl8nUyGfUvY=;
	h=To:Subject:From:Date:From;
	b=R4xlEyaVZ5fcHJp9P9ScIz8/MktGvznfdB7DT+0745j9ZoAFNB8wiox1RLqco3JWN
	 gXolzGkjOLUHif81NdlCNOwGfWvqeSXUhKNzEpttdCoH97NlGlLNfEA/U6Z3drCtnZ
	 35nuwT2ma9g0NS+rzWH9X5y0BuJ+yDX7ToansxQqK0kGG8332rFY1/tkyDxrkNPTt9
	 Ht1ssBFI1kWT3pe7JngS6DivFfB0Yr4g16/Q1P+ud972RGn/nv7+04AuPhQOzPpqVg
	 5THWojnY9bRR2ngLLbENOlHuO42qFGbvMXatuKkDuDLD1GRzMQlcQf0d8rb3sOoYV7
	 l+mRgM9hofXnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921CBCCFA02
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176194079359.1014.13901778898606086918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d83917868c511cd9d2314752a9073a3d3b496a7ad60d9305130a1041e0fd2010
Date: Fri, 31 Oct 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761940793
