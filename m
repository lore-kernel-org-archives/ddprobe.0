Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 492E0227B83
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 16:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769963634; cv=none; b=uPheBIztkR4Xtvzr0N0YNYGjX8bHUeP0kN14wq9QErVR6hLGZMgXmPKC69CgJw7ELdL6xovXFB0VGWfR9/FEqeTq39Uj3LCYXalPGV7RpPaBzqAgIAOYmWt6JLoGqJ5C2YuqtDDf/LLa5J+ccSFUN60k/QEsct/OadvKZvTOoto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769963634; c=relaxed/simple;
	bh=W/w2NjtApmKvV1wZlUOu87BWOZwPvVU1tcCeY9o52eM=;
	h=To:Subject:From:Message-Id:Date; b=X64CtvxgNzi4beL5kxO4sf5Tg1e00mHGAsbmwTV5WZgLiPkTfrFCOib6qHzC4pAXfghWoNOC3cbJ3b5EyLSXeU3eWWKC+E9jyUwRc5GUZer/L8pMGC+YUEqjJTHoqUiaFrDk3xerwSERoc7Pd+GWRKQrxQSeb6UDVO48tn0WPEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HmFHZZGq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HmFHZZGq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC135C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769963633;
	bh=W/w2NjtApmKvV1wZlUOu87BWOZwPvVU1tcCeY9o52eM=;
	h=To:Subject:From:Date:From;
	b=HmFHZZGqKMpzsS1awzstWBEhzgY96n0mIqcdEONcQlQBC9byKMRGP7kRUbJTG2tLA
	 +p/TJsZ5uv4O5KXv7Sap6Fy1/aT/7Bi4fT/eP9LapUBh8o+4hJph8oUZw0tph4lXV1
	 MeCXpS5aqeQlzl/3g+z1VSz6YYr1bfBidBxlZRe+S4boFNon7YBuobD4HkPI/HjPaB
	 nv8BeuqXXs4V5qd7+chtl7vwCVfvQCDRsv86haVxb1OM19OKR95lvIAN+bc2VVCKOw
	 vipw/zISqZ51YepBZs9I4GSGnGRl28LY2ImLuU0ZKhmKTQ4YJzt+bfaYRi0ac/9zhi
	 Ri1ppbyWYiyOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A3DE6529D
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176996363358.5997.12861481669005589506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 605e21528dd6347ac4fb999f97b809a5484e9c2fa2bddef88f0782a70a1da77c
Date: Sun, 01 Feb 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769963633
