Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A84513D63B
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 20:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717014263; cv=none; b=dhC5lnq5f+7fMRlL7wKWYTkP3BMWDdVl0RQ4wX6dSD5IJqx0p1SrM1MJlJexyCutU6Nw9/bKO4kHM2rJiNvIOI5iaXhVpBxJL0jAXxBK6lRKsySXHTcUiYeyAcm4TO8OeNEfDW472RpNtF0clkgU8roNdZsbHbWcUAMj8LEqxP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717014263; c=relaxed/simple;
	bh=0+yG1KTvSxQrJs1tSNAcWXi4IqVhdfHJiUCe6PdFk2s=;
	h=To:Subject:From:Message-Id:Date; b=IdlTjlgqzEFOuPH1ZV2IJkcIy1s6x5Oblmdj2UTl1rr/sUpo63fjqM1T7eYg5idDknDA7qgD87yjqNPSVDch6fPnDTth7soyWdncoaijY6mcBrN0dC/IlrpLQbjXazvH9ASuGyP601uM7TN+zWjDj0pskOPke+Wx+iSBLNxFRZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TiDlevMX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TiDlevMX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD122C113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 20:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717014262;
	bh=0+yG1KTvSxQrJs1tSNAcWXi4IqVhdfHJiUCe6PdFk2s=;
	h=To:Subject:From:Date:From;
	b=TiDlevMXr5AhhhBACAt6LzekPUvQYUGXiiSkenrvFTHlAzamWHyPGhSIY9MSNOjY6
	 XmYlNzQWBjTu0y7MrK/hS45d4yo3QaPZB2PHw0xseFvIkE8b9WsUzw2Rgmxp4Aqaot
	 Q291Lt7J0tl9eK5sldA5Z77JFyvJ1nL6gWhPXYY8kOqp5VmLLbR20OkFcdLXZ6JljR
	 bpQixHt41Ewr4qaBLJvETtRxBTs+R5XItLNNcw0X/IuOhnxl56tZlYjU1PTSWRSBN4
	 Jijd+jmv9VCqSYMfRvzvaLaOFANfQqxF8dnSX7bkXUMJtKrrNFWCIE+Kd9g/bX8FnT
	 7sdb1D1EP9MVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C839EC25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 20:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171701426280.3895.2384432104754948886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba35db704b7f3a15e0a271dfcc704d7f6f7af18acc5bfda77870e2fe4e551bd9
Date: Wed, 29 May 2024 20:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717014262
