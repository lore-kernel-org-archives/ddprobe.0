Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2ABA47B439
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788255635; cv=none; b=Gd6MEd1SycD52rMFFuloqy0UV1YSxpfKrB8GoRtHPRQxu3WElH/XiKmWUeon158TKDZbazDMCooSH0g+AqFeXojqb0TKlDa4x4Ee9knoUWuFVd0gDBalv3/2+Z09U+e/aeSgAtXxie6Slsdnu9CGu35l/0qPi/2apVfUaJrUfXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788255635; c=relaxed/simple;
	bh=6Fsh5Lf1m9Mu74chrIHLA6NdIVHfdppQ4+v7cOB9E2E=;
	h=To:Subject:From:Message-Id:Date; b=GsD6/GcwCMAGyjDKMAdF9CmgKrd815apFHNnbdC/XpOWlaQQQfTSyl2xM032uUNpYCCu9Sd07MZe3v5yDy0hq5LxGvJTQSd2+ZIndHhfjsOLGDAmSH56W+wxE7QsgxhX4huUZWKabxvQlAB2JMDvKto/ghWJBvzPI2s3jyR2vqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FjWaOoRy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FjWaOoRy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB28C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788255633;
	bh=6Fsh5Lf1m9Mu74chrIHLA6NdIVHfdppQ4+v7cOB9E2E=;
	h=To:Subject:From:Date:From;
	b=FjWaOoRy//3yBmY1kiRRTatSupQla4YpyOGMN2odbz0HfR9V7ioD+eA/92Rzr265M
	 pu6bIBuy9Z46d/8X7e5cHx9L3cAZ9X7GcZGcaeVaU2MpTphINpafZCaQlIqQpazqxz
	 93qIri3o6mGZDGm625INabuD00wjpvcFubj/jhYfQ6aqIVH4DVE6b1Ow9gtghJolN9
	 l+8yBs6Yf5Gun6B2/OcVVu57F2RHnbHvsADMimD2L4XZUXgNy62iLhsxpHNgfROycw
	 RtX2eYIhEv72YwOaKje0JKFgLc2WwuyM1oWWbMJBqkW+PKaVwhpfYURqizN0UQSFwG
	 urtljf2ga/XUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB63C61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178825563369.12445.14946322137258615806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2033f2a08311ef05a599062924592e165ccff206becbd26e29cf3ff48fa95984
Date: Tue, 01 Sep 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788255633
