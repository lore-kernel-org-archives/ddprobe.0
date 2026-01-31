Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA5025B31D
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769847234; cv=none; b=WuaEiRPgAC+6PM+vb5fjHiXA8cA57GVIfkRgeGQomCqUyt7dvN7gqlKerm8xzfe26t2T6phXM8W3nKdTxPE+U2fPHOIZzZSpF9Rh+2gEzRPAH7K7bZCBHpSZ3JFretQWY6Tt8aY00gdHhczKnbEAgI5vJewiGX0y99Svsd5Mlgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769847234; c=relaxed/simple;
	bh=3SFzRT/bOg6EcRRLnh21HqT3xYA9id3kokjKX7OO9FU=;
	h=To:Subject:From:Message-Id:Date; b=cWJE6K4k1tykulx54C3/3PT5GTBY+Flsmi0mR/+4dkMgwrc6YmxTOdJBUmilrpckR2rgY9Wj3gZK/Yyx2YjvI5wUkopZ0daQ3BnpyzDxOQQGQzMaGKHs7YVIaKjAxcM436aKr08uvD+kQP3GbEsW7DeZmKZyb/PvFeS9szEgIiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IViXq9dZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IViXq9dZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2238C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769847233;
	bh=3SFzRT/bOg6EcRRLnh21HqT3xYA9id3kokjKX7OO9FU=;
	h=To:Subject:From:Date:From;
	b=IViXq9dZ0Ec5SuHwOuK2BMtiMkn67uYd5pjttEf4O+N3wlTPsHEFDEdFDVgs8OqMF
	 xSqz+7qulz3xQal9HIgZfMJy0bV6lhZ/BCxB34FBOz2RcK1d4H0YLLKDRjw8IQ01NB
	 wzMtz3obOZW3YaZ9XYl/CybclTNRCq+Y7aOTBvGQVbhiuE0Hm+Hb43yjkiTrz6pCRY
	 VaUhv+dAFgViR8MUlfGqYcnrGPR4120c8kyZ5ge8tRihCPpkSA5H8IpzyI/AjmUGxq
	 aB5HeMij5uM8/6Xde6/EJrzGOrpXpJx21Sql6QaN6QHjYTYEcQenjUW1ajbznORb1X
	 cZSj6sLQXEC+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE7FD79759
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176984723357.31546.12696210586056349110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a349c218bb476e40e69dba7012eeb1dcfec3919cd62fa74d966a89ef7bdf7606
Date: Sat, 31 Jan 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769847233
