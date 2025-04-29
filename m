Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3731829DB98
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745936994; cv=none; b=Lt/iqE75hWhfRcFOeRzlyZVkMvGAbjoma88Jz9LCF/Ivg3ebp60JqeNUyU5VOpEPR1R+WwmwwTwEwRkjt5HwdjRkA0+eVXUB17ejFa089WLPyPuqpZ0GSf5c4F3xJtgbZoe5Zy5PXo+xI4bFWHx1zj/zmK9HnvAppDAGZoYqumc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745936994; c=relaxed/simple;
	bh=d0lLO31CuBl/bdG1+mkLWDa8NMteUfJIO83ZslVAiYg=;
	h=To:Subject:From:Message-Id:Date; b=ESBtF9+8XlxHlRlqHx3TpVyZhMwdvKu2AUmkfiSEMUuLa/5aJJlOEU7qNd2gLRq1pjgARB8lD1sajFUS3mIZt9Z+Qf+Az4y18j2qbY2Z5iLFzlMZ3eUK9b0mX8C2STYrEDhnyw9tBRbJiA303IXE1rox/gLuwxliIptOIPqsIfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pqU6MM4W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pqU6MM4W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A036FC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745936993;
	bh=d0lLO31CuBl/bdG1+mkLWDa8NMteUfJIO83ZslVAiYg=;
	h=To:Subject:From:Date:From;
	b=pqU6MM4WN+bGBCvFVOEy9Lxv41P3QcwLiAF2B6yucVwdY76HWpFomtbh775OPZh5T
	 4cQhL0/o2FVgum/UIRasEVnVO6uioOJzduDvlG9OH47xf82VyRoZvpsGMPk+fA9mFg
	 PN5FBTC5YP7Pz8o/EJbDQ7oj00RYnjJy9xdn+nbo8Ogbg2TFEcOFFXo2b6EbtHzjFE
	 hX6TMcoI7yUyCVOIVDEW4ZKLWuEseR6DGxw2tcLOtl3nbtJDceJEnqN4jbfOiD8ouG
	 ZGHJmvrqJ7CGWTQeg2v0xZF58/NOIiikmmgBrR4Ml2VgZAGq2/YXoY6/pDj/YLuF24
	 NYRIO94pj+3lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F489C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174593699357.3726.5419409118361796790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9503e704a802a73142d6a6b103681c403db64f8df26a21f5e4f4f800cae70bb
Date: Tue, 29 Apr 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745936993
