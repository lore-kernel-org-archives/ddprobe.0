Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F361DA62E
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759351194; cv=none; b=LVK0cQb+HESA5SHWWU7h8ltnF0BhO5puHYcVGjemcsyHh6EjdZltvJkq1LRkQweRUP7YD0en9Nuh271hJlJ3oSMWly3Db5MYcqSL2tvLItDSs5dX3lqEBw7XXc8lqH4C7zlNTRgCO+UgaXs+VhaGlN/ggIXEcCcw+VOD/wW+bNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759351194; c=relaxed/simple;
	bh=ZiPBVm6s9Dw6sl5WAzUd5o+ejgcdAGYjf9EhVpP2dME=;
	h=To:Subject:From:Message-Id:Date; b=T52LCUMrIPwJkOysCKdTl+ovOKUhtNcTSXsUjJt109hZbCj+WK65AUFA1q6UEnOnfgDYdIa9chAD4veCKcxZmVOnVxl6FR3ZDl3uhThQxJ6QJ9nZukGrtEMHzPqOCWcgf5urEB5ETk3nhrbVpHjE0Xm6Igo4oXqTxAhKBhnS6qI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HRT+k9Ih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HRT+k9Ih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D58C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759351193;
	bh=ZiPBVm6s9Dw6sl5WAzUd5o+ejgcdAGYjf9EhVpP2dME=;
	h=To:Subject:From:Date:From;
	b=HRT+k9IhqomSzBQQTgZ0G8XKJb5Ls5HuTkiHlbsA1w8dXaECuuYhJ575yZdoeclW2
	 PCh+1VAm0DYm8czYm2XXa/d2PBMSJ69wKbOOsqGcJ2oU5KlBi0xUq0HlcHidUojoUB
	 xiabMMxwyZKReNYAUMvAQPfpX3J2UyGCRYi7juVaEa8jI8L/N4D6FICux+DCWUYfHW
	 T91tXfa/YJ0pBFTGrQl0p7tr4RcC1WjEI0verPyZPfANdKuiIie2++Wsehbe6ey5BO
	 d0CGUBCZvPOKh2ezkWJaGOclbEIfyIvRtG8B1BgDc+vUTFH24a9rkwRZBgzPtLQplp
	 0AsOA91uY2clA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915B4CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175935119358.3552.89711572006179371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdbb2efd5d21a68f51712f381d472ee16a9bce4fe8942aeadaaf66ffb37d685e
Date: Wed, 01 Oct 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759351193
