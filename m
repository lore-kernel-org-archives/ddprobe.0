Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65BDB2C9D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 03:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781838994; cv=none; b=kFcvyCkWhsz2cGZGS9sY4qaL7kxpbdSzRYnaXLz7fZ7N0Yq6OfVAiv0VnmEm0rl21pqYZbgeksc6mwmGgM8oU+mgVGXxa7UC4Jm6ysxP1VykRm5Z8d7zgpP0VHhUm7xGgqH3BxVL3PGUSKhd5N5g6CqIP6wNhgs0SomKhMZt28M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781838994; c=relaxed/simple;
	bh=Q2CMsTsxlRFIG4yx7FMra4LAjpn8NMdg2U4bdFDRHFY=;
	h=To:Subject:From:Message-Id:Date; b=Yb3ohPjfWpAjx096Gp4x7skQLxoVt8DMaRX0phhu0Ht8W1eAs0wiy4Z+CWgMIXF61U2XQQ2Knr2ZaTD8t/65Xj8Qls//sGiejVdGYdDf7An8q/Qs8dLIzQJNQaSZwTsduLhcERpLE5PzQw17NL45fzUcZRcQawQIqY8iadYfhLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JSBsfxRN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JSBsfxRN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5A2C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 03:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781838993;
	bh=Q2CMsTsxlRFIG4yx7FMra4LAjpn8NMdg2U4bdFDRHFY=;
	h=To:Subject:From:Date:From;
	b=JSBsfxRNRooz5zj9QCFroOwIsUxCngFevmCHhKe9ouCweJpFR6O+cL6vkKHCa4dn1
	 iByWFCsH6Q+Ood3QT2EOynVcTGyckTtIRuQFlw9S0oDbZsP1jdwQlh5d/Hn2OmRtMZ
	 hlTjtBOKA3f3yqtwL7iHQ+PrV+UPHIZSr16dDloMgsHLeffYWZYHYqqPQ0eVH8Eaos
	 IKhW7JI6oG5oecHUwiv+ZaT6dclcYbshSllLG6rwg4YN0nq3D1dtNgYeXbUw+bGLts
	 cZ7L/DQyMyr82dAkrbZkkd/heSBMnF/osf3UqzgbwoxcnhHqgjtAYex2vFszA1zzVn
	 jv0vdqUzOtjhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8CBCD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 03:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178183899368.6675.16202645479129496078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f3aa490769c8da03b36b1e75ef3eac0fca5728491ea63026c6e37b06a59fdff
Date: Fri, 19 Jun 2026 03:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781838993
