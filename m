Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C861EEE6
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 19:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783799314; cv=none; b=WQhmLRHgW4Gwa0mf+yREgS0eo2f6z8es0A1OW/GlTgqtrrD5arW0/aUxQLjM3s7ThHCmoh62OU7PmJZfpZ/aj0sOljgyKUR19Wj/KM2ASpg5SH+f2HduHSaDbSVsEQv8aN6ArcHgLH4/EDb1adeuzqvsB6vxDvevxrjDFVTTppM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783799314; c=relaxed/simple;
	bh=hXEwsndVx0vxawqucEDt1jpaXvVGKhqQkCYisDV7Trw=;
	h=To:Subject:From:Message-Id:Date; b=gGDiittzc2ccxTITQUcLSGdsHYhJXqc9AFKqF5s64kWrTtf29/VjgAFKILQA/gf3OMKxu+Shm/QSV9AMmtCThlPAUA8bFktcYLOTxeIobmSsQK+8kSwxKDKQ6QDCJnG/yPql19ip/opiXJXkZc84xL3eI5+Iun1qZi6r+bdlwR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AsdEq1O7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AsdEq1O7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5328C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 19:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783799313;
	bh=hXEwsndVx0vxawqucEDt1jpaXvVGKhqQkCYisDV7Trw=;
	h=To:Subject:From:Date:From;
	b=AsdEq1O7OAHPf5SAHki99hWxJslnBqKwaWxTlZEypmI0sVSp7iJAuH4UjVTre8aYk
	 dc+Cua2AG+VXhb1BFIeR1DF4Sm2GH2RZM11Ms8tQOI55gb3AV0aG5oChZ8L2Lc59ux
	 NBQ5w9+o1ZqXCExKXAHKUFb30TJmr9ymduyJojkI4jpevSIuyz6+uwqD3Ejtbz4kNV
	 SgJ43CCVjD5z8PwNinBR+Wk/YSVwTZ3Hl+EnhBrpmd5igEjv4JcYOja5uzVtuEuzD3
	 Mox5SUnw5YpSJMSn2M7eZ4H29iWqI/+XvYHQam9+Suu/MNZRYwtXiKd6/XF478tcFy
	 HeEC3Mu+zAbNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD7CC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 19:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178379931368.21633.1027338591212912301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 010a15d2cd81a4482fcb16e5694cae266ca39d60ab07cfeb4bac6f7bb9bcf2d3
Date: Sat, 11 Jul 2026 19:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783799313
