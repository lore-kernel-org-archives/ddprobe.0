Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DAB44BC007
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791843034; cv=none; b=f8dadr56Zd6oWYvkOYwcsp1K9CakhpFOSTZnOjYylPLpLHHvfzeYqIR0ycmBy6IiXFQxsRJQLAqF3QWrK32ukmq1Y+3ULV2PN7bF+PxnGiK5zmfYJP0toFOm2c834JP1OnSO3EUrySUg6QPJsKsJunpbVja2YVP0z8y2CtZhAjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791843034; c=relaxed/simple;
	bh=6s51217i327cJYvQtxI81uFo79z6m03jcslXOoaZOWw=;
	h=To:Subject:From:Message-Id:Date; b=H2GdwQ2l5L0LxdDtuIg2TFIWm0O5R3FIUpQ8kR9/PA5Ebd/aSTCmNm8C2GinVqmF47+dqRp8d/ZsLCBIXkuu78KPzPoHwC/hFrHaLBJRH39KT2ZNCty8zsC1hQ5Xf+hXzUZdmQ8GLiNcBEREFy1NGjy4lrpihRh+gjNck4/ub54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ObYjlZEG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ObYjlZEG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34D1C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791843033;
	bh=6s51217i327cJYvQtxI81uFo79z6m03jcslXOoaZOWw=;
	h=To:Subject:From:Date:From;
	b=ObYjlZEGVlsr0vDsox8CrbVPx2YXqv0qaF26Lklj2bhrVcLMfiB1b/3NVUY5uA1rK
	 IUL7fDOxJqqYf8Tnn7ANvsG6KLWVXAwbWq8yjfuD6ASwgnZlmsGlZY0aYWUs00RwLS
	 Xg2q4ouU388xwOv7nOBJrCenTAJqLd375RnFs+lQVsnUiTtuqw0ZHrawTL4eRsmHq8
	 dsqwetzIa0DNppvNtOzZMHgBtBmvQnSngE/7QNMwFr69JqbLfTrM3fPY6e8xi13RwL
	 s1eLEYlGihF4X4Cnlj1nQER6+InV/Q3YH5hzLIdGBYTQ9sETGimqF++w7wsEvcRhdW
	 5T4gGMJWlljwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B070DCA9EC5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179184303368.14951.13162197662127557385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed8c4e9827d10fe383c0d4a41dab04e19bd93a9ce81b30e8eafd67605e870623
Date: Mon, 12 Oct 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791843033
