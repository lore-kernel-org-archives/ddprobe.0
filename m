Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1C010F9
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731759354; cv=none; b=XVjEzuVJ8bnTBvM9EmLCDZjome9m50IbEEet0SSLO79fD5fnPOZOPeE69eIwX2Vl5NAReRaD/EAEiiPlXQ2gNgc0/bG+vEitWG4CvcoAcX0EWuRPCMw4JbqW/gCGda/qf2uZWzw5W3G7COmftL9sIzvnUOIYS5X1Rosh5DThB/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731759354; c=relaxed/simple;
	bh=WW6ZMOuzLaCqOP6reL64Faugd9Dhs0BBNomBiDNyWGU=;
	h=To:Subject:From:Message-Id:Date; b=reaSSPUvxvSmSflM7yhKsbmtitmXG6NfQdbGSb7foBF8WaSJ9MmpbauvaekluaK22gdgGWFs7NaziNdpGuJ18zQQDYkhophSzblGCbULKLyiMUbPQ+OHVHzMWu9T66rytNkaA9ZNLO+QJ+yf+2e8+QfcBnQEHDmc5cD6cVskkG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OqN58XVA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OqN58XVA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C70DCC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731759353;
	bh=WW6ZMOuzLaCqOP6reL64Faugd9Dhs0BBNomBiDNyWGU=;
	h=To:Subject:From:Date:From;
	b=OqN58XVA1H5/ZpygyWW3Pj1xLFGYnD7Ap/mwC3RP2ZhRoKceDMACqy1Tw9s3H8RPr
	 ENteTTJYcp0yN81Z0rRVNWXMMCJ7OXbfqb3Jil5aIAjVE/jiKtcxf5qdhvJDVg6g2X
	 8ZlZMYQxvOiOc4CJoYmHi+uF3iy7oEWVVMWdEuRMbQE2BYP0QBZIchOVHr5z1XkiXj
	 94RIBUlC7O94eyex0KNg0cwiss5e/vC/6IWT6GX6H5vuDT4bWTdDA2mmcwGFs2QYTj
	 aDbxyWrzUeC6qRR5HweMBzXHPLHnLz3IcHVc7q8WFP4pig06GJGaxMIZDIN1nqdq3D
	 Grjj2f3FV4QuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDD0D68BEA
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173175935367.8750.18155919839704734578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1071c8b6fb1e101a9778bd1727832fb3b22897feb43f0f076b4a2b5e1ec32cbc
Date: Sat, 16 Nov 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731759353
