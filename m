Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63A734F1E2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 20:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720642643; cv=none; b=HMyjYZzTdMQAdvUj3cQ4fpy3sdogD5h1/aeIco//0m/A7edJq3pzom/mShk1+qRX6Az1Rz2b2Qjnq6+/mvGtBNyRVtd7KWzoOyCwxzcnP+whRFGJaa7bZg0Lu4cC6FVORd69ZmIc2T7x6Poo8iezHCJg71xw/fkt8FOdLoYnwbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720642643; c=relaxed/simple;
	bh=olUP/KF3STxzqLaWmal8vwrUgkg7PNYQArAfH+7sGjI=;
	h=To:Subject:From:Message-Id:Date; b=bxXF2GCF2Fy6LCsSxZDfzCAZVrcft380lL5FzG/tcvGNOBMA39iYgUE1tzjE8P2p2VIYq8c0RCqMQsuTdhC+KykY41WzdtcmhoudxWHtkj6MMxU8QuLPDgIIyVzf9f00Q8zwgVE7bwNgtLeBbZicrGuPKyi4U1r9wWvfDrWMmQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nyHeTFgH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nyHeTFgH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6388C32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 20:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720642642;
	bh=olUP/KF3STxzqLaWmal8vwrUgkg7PNYQArAfH+7sGjI=;
	h=To:Subject:From:Date:From;
	b=nyHeTFgH4FmtHP4pTg1dSrpUb61Snv7ioeN59/LkrmAQ4eE4SW9ZhCNKWW1QmzACG
	 iq6oodGgTBH4wuBjMXREPo+nXlFoTmxmqFqQ/0t5Do8uhiBdHwZr0c/mNf2ZIGU6JZ
	 Dssvo+q+RyX1zebsHH/4s1NM2mJ9MRE/7XSgclk8QmjFEBR7EZtBHnmnGMDnbUk307
	 DRB12nD6qtZcQheU/bgNnHqr2XhX1W0+jBhueDuNxqimyTd6n3zi+KBwxo+T97ApC+
	 QMVi8wBVG+Tb+2lb4Z1G9yY+By7hQrr3lJGfBy22XqfTaciBuBbQgshaWSWZTJl5Y1
	 n/JixzENbRq4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4181C3DA42
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 20:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172064264285.28331.12878736217726139429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69d6c6b2e629b5e5d39eb39a1b9c39a050d0dcbb29ab7d497db48f1c8766effb
Date: Wed, 10 Jul 2024 20:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720642642
