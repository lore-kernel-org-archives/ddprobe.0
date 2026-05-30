Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116501B808
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 09:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780132414; cv=none; b=Cz7XR62vnikWX2+ElKgrGXWpTswYe8JdfRVZlt9lAyQi0m+CVdek+SAIRk5zcq650PclmIurnqgqnYZczw96ZqnrsGSqRpmMEkFRaKhqneOsP7lfTvDQDorcTOjpPvje0I/scOSSR1yfnayI+iEK1y3AqNEHg5OCfIDtOd3qrYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780132414; c=relaxed/simple;
	bh=ck4cxXay84kDyHSr8KP/3TutWMdLeSQkkl+hZewc2n0=;
	h=To:Subject:From:Message-Id:Date; b=dN3r+Y5pLJI3G2dpi2NiK3S50kM+BS2BjIHOoG2q7q63RYKIaTe3aJzIhgte5gOBwoldf+ucUxlh08KlPuOweIv3e1QIVXHhbsOCH+gB/DedAA8A59i3TaH+rFaWUJ30+uLC2nUuHSfdka6W+zZJFw0xBuqO1nYq+xlFJbPL45Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GnJ/yLRJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GnJ/yLRJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6734C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 09:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780132413;
	bh=ck4cxXay84kDyHSr8KP/3TutWMdLeSQkkl+hZewc2n0=;
	h=To:Subject:From:Date:From;
	b=GnJ/yLRJw1W9TBnmJi0z5vrgA5BkEY4SIzV0cCwhAcFVMuD2krJAZFYuyX9xV2DkC
	 wc7xZjAh+doexlV8EB1n7rte8cc5RGwUPYv5ECBEZBNd5TbCZyFCO7/x/88eCyKdBa
	 wYG0SD9j8wa46xa1sKcriXKWfww6VWnkENyVHTAvi99Z3XxCodklTIPEGRUDVykw3o
	 Q8TwCtTOxGEY9K6IpFmteeFFuOr1IctEOPvQHovHCHqA9NLHMAHK235ndOg3ZfWDuv
	 1h8Z/HsBuFzn710sSuFnJ2mXUvwKR4CH6eXHmwKaeYR4wA7xnDCeABRzh3ktE8di3R
	 R9O6GKWczxJAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2C8CD6E4A
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 09:13:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178013241368.30695.1795912326806145377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e118bc22ab9846046b6e8c5abdc0b046d4fb50e56d9542c9384d2bfae5d73deb
Date: Sat, 30 May 2026 09:13:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780132413
