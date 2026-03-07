Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D82D235E94C
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772889293; cv=none; b=D49T7w0yL3aFvr67V2BgWUpkMFTXpvJ7mjr9Ryck7FJCGWBYayG3FUuRzlXdKIiea1+HCkA61hC3WEhp2CZ/MR2VRg0fae485ZyIrx4rva/0QtOYK/WlVLCtWDysClFf0bviN7VLkK/aCW/ObMKHSWDMXWZ27KzBSpmNnKsbH0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772889293; c=relaxed/simple;
	bh=21Lb4BsOJdHg9nBkZd4IuV7g07Ahk3XudipDcOmRbWA=;
	h=To:Subject:From:Message-Id:Date; b=O7jE7JvTCb3MITSl9e6kD+NKDTe2QIkZ9qDzLd/VbE4yIL1Ssyi725MHIufGCbbThEg7p1+F0TJR7hdPGjex1C7L7v0Gsv9J0bq2wrWAu1/ueKfNf2tjdcNmhH2M5Qf9cbd1JTFnjyNM7hF5e45qlmUdTnCZfJ3O+FHUaZ/r2co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNp6r0Xh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNp6r0Xh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E25C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772889293;
	bh=21Lb4BsOJdHg9nBkZd4IuV7g07Ahk3XudipDcOmRbWA=;
	h=To:Subject:From:Date:From;
	b=GNp6r0Xhc2TSg+PFuR2idQukFZTiLh9hbhhrNfvRhIFJhLWzRnHBeBCjlxg2Tjgxm
	 cSTnIU2ebOfkTvRPH80eof251Bv6MQxD+wzBSfZDqMyqc7XeePrhSSp+aIcvgxLKNL
	 J43ECo0QHkYGeiqs2GGe109bIeI9ACyxUjbNIV3LCCcx17hOUUmac3WYqaeAeFfDdY
	 7faGTgpe9L23ZuerowKpBeehMFZ/iQo7uYOWX/Vn1hgdLqIV55YOAt2ay/YgDJinJ5
	 C/9UEm9TSX0/gbNi/W6pjUAyQUmuewuhoGOTpLBb9Ck9Bgyd3PStRVThJWXdL2A4mf
	 KKcuBXbLT9LEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC3BFC9EF8
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177288929362.32486.11400123706778087417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4caa750056fcab423360f321c67b2fd837976eb25816f92fdb1c6623b4f13a0
Date: Sat, 07 Mar 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772889293
