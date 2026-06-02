Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F19738236F
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 09:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780391074; cv=none; b=Ad7NQxDZvwMs+BW7RGwivHMGVjDwSVPzWM0DHznTd+D+GLIZBtq5Gi8XCFfbcvSxqe2w1KQ99lXt46qLGGyqGlLWa7J44LuQk82i58YJL+DlU/pfBxqzx07nMraJBVsvyVYVfmbUnEfp1+n0I8GI1KkdWc2JM1nZKpkzo5DN/j4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780391074; c=relaxed/simple;
	bh=tAz4r8yCDAkGIFjTXQcUMF5uGcrjQtOhdHFMutPvwfs=;
	h=To:Subject:From:Message-Id:Date; b=sUmtZpnVfg+O8c5RuWCx76yOGBAeB0qbUgYcPKIoDz/DUvppRQxo52uvRpv4MejIokzdf37ezooPL6VcJ3IAEGBSbtHNcNIyy5tqd9qg2Di5csaB5l+z/p3pVwPB9gDp9JvB1ZTNFRU6BVLhM68Zw7+8LS2fOE7DKpartTVMe7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NhMJHeba; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NhMJHeba"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B752AC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 09:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780391073;
	bh=tAz4r8yCDAkGIFjTXQcUMF5uGcrjQtOhdHFMutPvwfs=;
	h=To:Subject:From:Date:From;
	b=NhMJHebaHdbys4tTbO/hNGAYVMeq+SmRoi8Ev2aAZu4MaDcjhT8ueYfjezDSL84eI
	 eZGcX0NQDSt8pIiHZqrjfA/vC37bmp/y78DpmA4EUMmXgeeIC38HojCN9HCYJiPLet
	 64an++vGtgT12uFrliQOtamvB7htlwEsx44wrn2HwQ6ruc6vL/E1wEWOOGWnaaHe1M
	 7Vdr2eliepLA14hPAMjcwJ+/gDKnEHbOg3NdHbmcSXSjJNn2LNgGNob+OkDeBf/19E
	 7cLjYbgByOT0/S8sJKDv5pH0LiLB6CIb8aridnCNpR+WQvKFdwE2fjWt8kX2N5R1Ik
	 bq5+Ul2DwQNHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DE6C5DF71
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 09:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178039107368.14873.4892247928577881020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a86da5ff409fcb0ebe81b5ae524bbc921598d4ea5bfd9c419bbe9a013effa75
Date: Tue, 02 Jun 2026 09:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780391073
