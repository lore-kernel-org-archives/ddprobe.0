Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41815360EF2
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788595234; cv=none; b=tbQhDX09XaA9OAqIw5pPPTJX10q5arHegrbh2Ud4AG3ZKUFHoN7qvmqXEX4ywS6h4+xH0+pc86misGp3F/YhSJRBkqeWUX5iGaJj/xFSKOt3nG44AZdsXLH0S0uwnIMetnUS33MThv8KwjWkhBSeDwUHZ5MFAzztTu2i2wQZGeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788595234; c=relaxed/simple;
	bh=9te50wlpVXT224vUTk8TggB/XP4oD0eX5UqfnHsQgyM=;
	h=To:Subject:From:Message-Id:Date; b=IySjCnSEdVXT8bRrbGtwxaMmyY2/TaZHd7XqvRiPT8RKPDEr/5pNhzKbn6PlmEUISLFrNWa6L1xLqSpO/eIiYwWCL6G2F7jDqA22g+Zj1t6scbPrFux64fWZD/FDEKhoXINm2WpTDywKqDmnK3Tl1WV7wkld9eF5li/Itq0LhOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8uwDVM4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8uwDVM4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEF7AC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788595233;
	bh=9te50wlpVXT224vUTk8TggB/XP4oD0eX5UqfnHsQgyM=;
	h=To:Subject:From:Date:From;
	b=U8uwDVM4vpjFaaMGw612oejvVUJKQLihm/6CMcLxRr5P3K46VWZGmpoAkozfh8U3o
	 up2CUq+cpAEnTBcnBe5afpQs4/kPzqqXdX4mZ+YL3NW9sA0aLbeOcHZhWrj/TP1nPb
	 3Jl6MjhWYlzBljBUyY75Ihl0qcT58vKFEjorcD00USALakmVo9YB0SB00yy1n4XfXl
	 WqyLCcXdIecVNY8h5X+KWdPK4E88HY9uiQwnBORGEXUJnLGuMXvrbwqvwlGNHEGz/o
	 AoRtkT4G3hYRJwVAEGbFmzxXdM926lKMCof2Axmb2DSdCNV8kb0eBVi/hUmN2Pb/PW
	 Ydhb6PEIM0ojA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B951DC79F8B
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178859523374.27718.450384813183925369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55f44a24ed8bf361ba607c1c91ccb6f2107fbe61bf7b36cc44e964099cefc49e
Date: Sat, 05 Sep 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788595233
