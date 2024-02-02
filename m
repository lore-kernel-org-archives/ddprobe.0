Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB636CA71
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706845096; cv=none; b=ag6nBuyEkYKmtLE8mutAeht/bqmAr1cL3T+MU2jg01zxgKlk3gTAUCBcXcCZjRtDWiGiFHG3DuyrhhLJ+kVJsjpjsYpd/Wl6TiF/aSlSbYHzbA+ZL9Xxq1zS8pByTavX55KVgGseVx9JvCZYa6MTUcv6ETfbrVkpP/lwGP/5w2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706845096; c=relaxed/simple;
	bh=18P7BvtBqnBWAquaEbFpoAz5mGU8UTPGlAG7VwS1WN0=;
	h=To:Subject:From:Message-Id:Date; b=gbQuzptguSfSB3VJTJdf6TYzZF/iaYEiIdEF6XTDMb0CKtG3XfKdvC+vhgdhpC8DonVis0pS/+0N0DeVErwG56C9CF4mNUxug7KwXhouWTBrE07CpP1HnYBEETjDCecMXRldugocUPoMcMYeOGcz2yfP6Tir3SMm8pXjwtvpDkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gozkp/2e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gozkp/2e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77843C433C7
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706845096;
	bh=18P7BvtBqnBWAquaEbFpoAz5mGU8UTPGlAG7VwS1WN0=;
	h=To:Subject:From:Date:From;
	b=Gozkp/2eQSPIsSLCJpfQy4BLEJ1FnLGe9IpPdO6YeZYLROD7E9/GWJB3/z+8c3dEw
	 X4LydT8MsCgiPSsayD2wLtkzei/ogK8iozBzDANkBCOjP5e+31KnJhqYozH3MlbFHD
	 bBCak43AX4Rfeg25nxOl/ByAvSGlR7a/7Q1xrPGhrQKbUQiPG8XJ15Sv1vtMPN3SnL
	 QcU13latSh7z0WQiyH4UIzQLKVf0Kbe+WYn2tJtH4JvzjaxOr/T8HVP200nFLdrh7+
	 5EZEI00TRuGMJycgl9qXqFGgs4aZ1oFkneZmmUF6VB8sgdg1G+iS77AF9K1SqY3QVW
	 dm9uII3xoAkwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C060C47DB3
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170684509637.13619.2447310085039038674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e81a698117eec979a626138d2b113c1953a294e4e03ff5bc584b7d7ec3a9180
Date: Fri, 02 Feb 2024 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706845096
