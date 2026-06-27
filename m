Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D1A21C695
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 19:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782587914; cv=none; b=QvCveim8euLdKBXzuODU3xja3lhDXApqoa3nB0gnUdX0HjygiH21NixoZXco2GDnEXR/lXOR6JOeBHwxE3KhtXn2qRzrjUglkEAXVZvi8I8oL2vf7DRLplL5BRFLuJ1RzSwnlbRagVIhwldw7ti7FoMryfFSEKRYXQ1GuzMqPoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782587914; c=relaxed/simple;
	bh=+WEd4K+NmywkHoKRT2+NodeDAHL1giawt50trM7Olxk=;
	h=To:Subject:From:Message-Id:Date; b=JkM2fQtmRkffaKzM88V4Z3iQ/dlrAyPJxiWFF6iTzYxMSby/hVU9FYXp2Jz9yO+BlWOYc1yVbZn55mDIBXj57Xo+xTXGlImE1vPbAYVYkCIO/7z7cMK/jeihIp1PHWe4FlylZjxJePP+tr96MpuNkDsi2TU5Jj6THgDqABvDbE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rkNAfK97; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rkNAfK97"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A57C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 19:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782587913;
	bh=+WEd4K+NmywkHoKRT2+NodeDAHL1giawt50trM7Olxk=;
	h=To:Subject:From:Date:From;
	b=rkNAfK97UxYCrADnB0BI5GhUVpRD0WxL9UPLiMfl6Lrp2dm3uiQqBJo1KniudTF3d
	 femHY08kc6vTba9DFn6AAZEPxjJsc/oY8qajXCsuHvLcJZ9pckgBcjN6lQvx4Q+y/h
	 diZoue/ulMJxMZcAml7R1didxPczOxGP4ZeUVB1saCiMRJUibCJBAtDIVnbF07TRej
	 gPjIUDZPZcrsqOIHImyzxE8AFiIPwJ+5VVVfnwbSSoRFYVuScDgtyO730K78mWXRKF
	 HVRqaEbyKV6ZkHIN7sOXiLytrV7x3qDGVbDbilfTalVVGS29JHxYf4L90CS7PuBHF5
	 ssl+4i6tAUJTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B19C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 19:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178258791369.23335.13973487037105376325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdd2a0b8810edf74fe3f6909822aff63b855e5c4203cd32eb16abc9e28878ecf
Date: Sat, 27 Jun 2026 19:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782587913
