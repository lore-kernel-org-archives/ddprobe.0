Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC2C91FBCA3
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742928593; cv=none; b=eeJ57WoMtw+dY0N0BweqxtYh6buXQcZtPsL2dS+aXzyUrphJ6qrENakAO+wT50MyA/oqJy/RwJn2MLbwtIh61PvrRXdYMiGsEWMV6Aqc1pMntSadJ5gAq+FrQ6KpLNsmhkx1L9Jjj1G477hjPIP23QOWZgrvxPK+bGQQSrIoAJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742928593; c=relaxed/simple;
	bh=Aq62JOgnz7IFiUUyTrblt+wAagGg8oKPQy2UrzWZVdE=;
	h=To:Subject:From:Message-Id:Date; b=VQPmvpcFseTCLDLeql+/OE1EOMCyXS7HbyHDceWvSTDo2vSIg4iXRLR5LSYgZ27d8wShes/bm6a/NCvcREUj5yoJyk6Wz9raL3Elb9DI+YAzdU6/pLNYwXULKoVRk74PuuMaWGtJHWw8+g+gtR3acUQlOrxPQsUiDJLZJ2RsZDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6Tn5D3I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6Tn5D3I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC9DC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742928593;
	bh=Aq62JOgnz7IFiUUyTrblt+wAagGg8oKPQy2UrzWZVdE=;
	h=To:Subject:From:Date:From;
	b=B6Tn5D3I35jUUMWCg+AQxQLBw5zI96xT1WOB14Lg3mT7SS/iJT8pQVO/IbbDpFwi0
	 5unOKcFJvh28G7z9+ZdXrjLCMLAA26qfCDniGJNZ9nauxskMxNvAKneHgqnbcJIjKh
	 wo620YgDe2AXuKaNWXAP3kiSBnO30PFLJUd2ykl1s/PsueMeiv9xyaVUdxSvC2P02A
	 2Xt6vvx60k2mg82nwhtDo6ZX9pzVocUUxuF8hMO99hCotH7pNvTPDDRpwhZej/0f+8
	 EN9bMqAWhKNSxYISjaY/jMyl3491VHvLqajLaHT5pSz5uWcYkCT9jrOdjEgNXx+Urj
	 fzIfWtST3U+vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9996BC36008
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174292859361.11526.215468111912738019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beef41ab06155dc492acdd49ac7631dcb78eea82ac023edd6a8d636560e82000
Date: Tue, 25 Mar 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742928593
