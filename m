Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85AD1563FBF
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791931234; cv=none; b=kt95dsdVOUwYTyjNub4lzedbZH1Zlq1HpDiWc6eCe0tPiEKqsQn4ugt0n5pHkwwO1h+iGF7VYg06gph5DJhzOzpNH+l7C/t0zsLvJKMCkolj0zP09eBL4MUAFyRPrRTKtX/WBtByk7S+Oms5EkbZLUKHzrwoNcsvNjV6VjQ7sEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791931234; c=relaxed/simple;
	bh=es918LXozz2H6mvyu3DigMCo8LEgxMR27RUGPnSUlHo=;
	h=To:Subject:From:Message-Id:Date; b=W9cygMGETbv3XSTiezBS2F5N3IWq8ZWzP/sggJOkKYbF7cmgDBvhJePhrTPXoTIDC5KeAWWMTehKya8jhRni1SlDpj1wj5Ud4ZoR25kN6SnvnG6BnBJyTm50LVqHnSf3/pKxBZKzvLQ6F0iZEPpo2Fa2b86pY6mtn8bJgI9JMgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sNtt3Aqq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sNtt3Aqq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C95C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791931233;
	bh=es918LXozz2H6mvyu3DigMCo8LEgxMR27RUGPnSUlHo=;
	h=To:Subject:From:Date:From;
	b=sNtt3AqqLSJlEzW9oEBnGUVubDJtkIfVIi5AictRR5bjNsbj4KBzcpDzvzLvXHAe5
	 zuk7eXi0ROh7ZvISdqurZODvBoLvB0tOBYYPl+AlnMWDdNg5tYBpsu7ghUaYpk1TQG
	 DJJEsbYQD4FofzXdDYVvsF79Nm9/fr78tWledNd5OUgauj/YEAjsStYfXvMwD8o6NA
	 rNYzzRoYCrPHChzq93i5Dv+7kvgwra5pCdjkgBGEGrFp1H37pPI8eQ5dbo5+NrYzAf
	 twmonK+Y4Sk798R5iTliReG91XMZvc790umowGqA+mpXqFtK3IkTLdIrYOG5sqqmel
	 xvSr1QkxRI/qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC434CC6B12
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179193123369.5981.12931095085570606810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28881a2d7eb416aabc8b364651d3ce831d91745f1af2f89726c586f0c5a10e0c
Date: Tue, 13 Oct 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791931233
