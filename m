Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2D1937F8D9
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 22:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778709633; cv=none; b=AESPHtugnZR9Rmow5WZN/a6zFcNHm+LXoDQFb4b3Za4b1WySqR1sa8Oic6F6eNAfGvaqD5GMemffGZzfuUGZkOURs63sRobAg39xsx17mUUFn3+cPdVvyObQEZfoLuIq7aXi14Hfx5HGHXDnxl7YPOfN0Enh6aoEieotpperw4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778709633; c=relaxed/simple;
	bh=sZPLdrL2nnDIHqhkafDYxuwQndBBV45ekPUnGMAMyZM=;
	h=To:Subject:From:Message-Id:Date; b=dUCQQ6zgMDuX9u0AJdWpcgy+8F8GT9HqCTWC/+FcNValeq4O8sYE7//ZP1LsdXxLTNwEwMf60RidoaZIesP9tilKv3CqyLXREdmRYR9lSYERWbayA25Ovg6+EHjiRry2IWMTcyawJqrFsmET1ZpKklTRaZAANZKR9bwmCya1OTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sMVsRS+I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sMVsRS+I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B858AC19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778709633;
	bh=sZPLdrL2nnDIHqhkafDYxuwQndBBV45ekPUnGMAMyZM=;
	h=To:Subject:From:Date:From;
	b=sMVsRS+IBo2d8VbNNz8hfD7Png/rVr1i+glzvCU2XJT6A1ZgQSKR2+YU5vV6TZbPg
	 N7au+dwABGZVweMYbVLVleI8U9GCxKGmwJdexDYwYhuAKHFC7dSm6NC/ZYyuWaRoJN
	 cLD0HqPDsKToRaVqll0NxVmtJFevYtTrn0RhZgUUS/RNj31WVMy3qRPSTOH/DSOzVH
	 k27k+jBAKgEU5q0p40D6jd5KjPeQ4oGhaycVOpq5fhs0+f66CsKlPiOkfL9pWGtlv3
	 XMx0Cl9g3NKhEy5aYkfDJzhW/q82oy0ldvoRs77ChDLjtVtO+8MEtYrgZNBMRhmwgV
	 UjGqcpucws0CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C4CCD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177870963368.26959.8287059411104774818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc3486cd1bdd102ecd76cc68a2122938920067a606f3730d63bfda19f6011115
Date: Wed, 13 May 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778709633
