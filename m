Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE38315D34
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757279994; cv=none; b=iuz5v3rkIgUWmSPkl51Z9mFKDTYW+QGpwoRfRQY92J53ASqWCBsD6BffD2fjORJuotW9/Zf4bDS/axDoVt+F3T251jscmnlH/wR2y+iNZGoNI6J1anbuLu0aENtmcF/BxBhfFSvaoQujmDqVgBYRvg3v2XpnVVQ8dVnZfMO1tN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757279994; c=relaxed/simple;
	bh=k1XGhpPipGyzTnB0+2oS5gGb7N2snaiIvkGHlA5+Gcc=;
	h=To:Subject:From:Message-Id:Date; b=pY+7nBkTchVJKb2HQh7Z9o+yfnDAR3yCzhRz5SyN2LOsYvgb5hB/LSo6NJECViUS42IJRb3k4tztQbYDWrqYJYHeKC2nic4QbM/JG6nEJl3BkM27sKufGBswNCo/D2wk9MXu1r3DKcFZlIcrQXSmMCgrPMTvr9UjKF6JczzQw/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XFJlagPt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XFJlagPt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DBCC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757279993;
	bh=k1XGhpPipGyzTnB0+2oS5gGb7N2snaiIvkGHlA5+Gcc=;
	h=To:Subject:From:Date:From;
	b=XFJlagPtyGRx3kEtD6oaGJmLSeF52OWggy/bto+4BLwf7wpT3pllJDnyIup6/TM6S
	 RLX92OEwXLyswpyPPuG+RfSNJPlVbY0/3Iy0qAw2Y8NEwe3B7u5InYIo9H1wuR+mdW
	 URikTXB6T0I6U9jispb3tNiGSFs9Ke7xhm2ckp3aw5TrCQZDG1BQJ/55wh3Xgr7oOz
	 TvaAiNMIvlRlc+pkWH+G2qadd7bzQLryF4JFB20tA895VwVEsavw0smTbY/XA3Bpzi
	 168ClHjdXcT2n0c4o8nmeCRpaHAYOZmhv+kwKhkyxMshHogPyEve+zCptwHLgTq4Fl
	 /pFvaDdgt6a6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924A2CA101F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175727999357.12578.8139012128201970199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9157f9ee73de761d721d586cf5f50fd4fe358db92c9225ebb9981c9896274c84
Date: Sun, 07 Sep 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757279993
