Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6621FB1
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766784234; cv=none; b=Qjk9RXrDadwvoymW+R57e+6uo/UoVIntSFAh5alp2FroBKwCyDbqwdqYbYPW8VqSK1T7hbBWXUOnxfFJU66tpMIQLj3ufX4TgdYcKHqfluyTdrVEfJ9a+2KPbNCkaJffyiQze7+8TSyVwpfzBPv3TyyfODXqMzb1dBaQafJNJBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766784234; c=relaxed/simple;
	bh=ZUSgMYW82NeARF/CIh8vFQU3FWjH7ssQicHfFJaxRyU=;
	h=To:Subject:From:Message-Id:Date; b=OPrRwm8TdO4ew0+r+A41S8QzOfZIRMM5Fa5BmO19gRuER3fWmg7mf5LvnrpUYlM/kTgVDNtyg2WTggXnXM6nAlheqyQ/16NiOrk4arwoFEM+KB6TmtDlXbDDQ9dSJ98D8b5ACv3ovLXcbnkeNeGtOLqDl4PpOg/cX3caZqbXuIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ej33qJnM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ej33qJnM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E58C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766784233;
	bh=ZUSgMYW82NeARF/CIh8vFQU3FWjH7ssQicHfFJaxRyU=;
	h=To:Subject:From:Date:From;
	b=Ej33qJnMcGxsR421vmVoDPtnQ1akZCdnVBDM3Wk+U8mWSvkUGz6O3iZKsQs7wOjo0
	 j04cIHBeV7411dgW7PJMI9VDKs3jc1eGq8KtQE0Rt4ypS3bAwk6x3CN9KIqCLxG1OJ
	 48syj7G/O3/RYUROWW767/5Frk+D0c6IDvZRNKV/ayTlZIRVqu8EfQTgV8Nu3385sI
	 /h7s7GANSCAiLxCstn2mtNjsMGAbRPUEOieqjvdbAgZ4GZNipw54OHMaqLOH6EmEXi
	 Sglujy4CnAmn86x2zcMIIVlR3yjhHI1QTiKbZuIAragTfiZ7f/cjfXxX4ddFb7Z7Lo
	 dnGnRpQ02XN0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C2CE8FDB9
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176678423358.25775.4307657932081296592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 942eb04e413f12b72666a0f013c5bf2d27a3a14284e37da69436fdb84ec6de8b
Date: Fri, 26 Dec 2025 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766784233
