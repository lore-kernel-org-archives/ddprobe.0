Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A0E14B945
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744706394; cv=none; b=IQYq4ISsAvt02qzUYoW6r/Ol5fhrLcUiRNt+xJ9EaPtp4KTckMub+Ef337d42tH0bF3aVdSGUAnxXic96knmubiX08sLmjXspWCBMEjFY1/owizpuOUSqDINqKX83kVV2g9bO5XV2/Wp3lJe4ECWIDH84H3BpBA05O5ZYCpNojE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744706394; c=relaxed/simple;
	bh=88fmc1FLmdv7W9yBaYEBFsUQ4ESke3i4AsJG+8d+yA0=;
	h=To:Subject:From:Message-Id:Date; b=P0hybztxPo6Eui4ULpDWTzKbkvPAZPF3p5MWI8xvAhmPDxrzYldv7YUP8BiDzp4HUYYsfQWn3pVevBRu1drcy9nVgNxbcgPo2H3TRsHgYsv/GDvJpX8dedgpC/nmo1/rfLW/AXUEnvS97MumHQ5bVufc1X94ktmDVKA81BJ4LhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJCDLU0M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJCDLU0M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99D0C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744706393;
	bh=88fmc1FLmdv7W9yBaYEBFsUQ4ESke3i4AsJG+8d+yA0=;
	h=To:Subject:From:Date:From;
	b=BJCDLU0M3oRkReGXCBg2mu/0/0/hCLcd96IoM+onpUSXfEzINff+bQAzfy9b7wWYf
	 XDV99k0vZ9bzWyVleFsincAZBm0OlzOHG9QR66nvX2SHgIIlNlWdh3DArstrz4/CuA
	 2dQNfUoqqqYkpCQ+UuSwkrvDsx2MMeoaBJLLQMEgytE/TGbmd+OsLpeIvWE7piIFTW
	 ZARtP2WQvhSsFLrCkGjyDx5vaA1W8v7wV50pPiskbv73nmPY1/ystJY6J4LQRFA7lC
	 +Q/b8Pp0XPun/aQjM+ZX+FExYVG/aTnWE/tDdrtQoj0LXfZq8hXYS8CjKcIr1SH8Xx
	 Jebj3U+aQIDMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A16C369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174470639359.30689.13350495844746849326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a39a533a4c29f8172c5cbce25eac2b6b13903b3418004a70b79360f184fd3d3
Date: Tue, 15 Apr 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744706393
