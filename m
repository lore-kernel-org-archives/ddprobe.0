Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6831917C203
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788711634; cv=none; b=RTzvNkat70ns3cx9/kR7uDFzzjJim+dVWc0QXHgJ1n/UvF1zYA/ERtsy9z0xhBqTnAQOXyNWfLkqNAdBIvKb9ybAyHGpHMxGnc41bYuZ7qNwJ5P6BqmYantY+ItRDlShJpZfQwLA7Tl2Iqj34bU0QtDnHuY3EOJBrpllo9ZYPyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788711634; c=relaxed/simple;
	bh=WHOIhu84QJzy/RZu1LRMEl49yvkbyzBZTUfQ80pqyyE=;
	h=To:Subject:From:Message-Id:Date; b=B/vvq5i7X7cu3SJPUB5DjfNxhxx2JtDmTkzrYr+dybrBIB4maQFKczzifCv7i3rWhc3N8H5GFMDJsaPzTH0rEGZkh5lSyO6JwF4XpNsIIw+YAZ16CW0+TQAdfbEUUdMUCRtWQ8r25lBRiHFcDms2JISMR2PB++fv68RhzCaAYcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eF+on3Qn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eF+on3Qn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0886C2BCF5
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788711633;
	bh=WHOIhu84QJzy/RZu1LRMEl49yvkbyzBZTUfQ80pqyyE=;
	h=To:Subject:From:Date:From;
	b=eF+on3QnT003xr2S+BpJiwidg+qSQWakHPwaKdEOG/TgGPDBk2fzCQHLtFmFJNymI
	 d+2CAvfMRh587gKk8AJuEkO9NC6uaQwHDfxgAx2FjFF5t+q1GNZabR7/PUXuamKL4G
	 mK5/Pj/N1e6aTCJUb+mI/AdOBvNG/E+2vtqoO0wY7WS+OKMZ/W8Pb90rNtpKvIBGac
	 u6IjT04AGWQridUYESjCbciuHinn3sxqd3SKhaAVU2eXFlOUdP/hGiM13p3Rq4aDRl
	 W7SkQNGkQFavbmcy3o85KozDWQbjWqlAYVV9Bu/kLDoKLotu24/V3P1fYQCpb/Cxhu
	 6sh+Rw08SGoVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBE8C79F85
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178871163370.10553.6813035582057116140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3569b902d1ddf43e5951e1028e67e1fa8bd991890ead3ba9a6335ff11b7cad63
Date: Sun, 06 Sep 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788711633
